Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EA4F5BE9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 23:37:09 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BCC2E140
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 23:37:08 +0000 (UTC)
Message-ID: <1492817824.7079.88.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Mauro Carvalho Chehab <mchehab@s-opensource.com>, Michael Ellerman
	<mpe@ellerman.id.au>
Date: Fri, 21 Apr 2017 16:37:04 -0700
In-Reply-To: <20170421120634.2c40872c@vento.lan>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<1492633237.3217.50.camel@HansenPartnership.com>
	<20170420072413.11713d39@vento.lan>
	<87y3uuaw2l.fsf@concordia.ellerman.id.au>
	<20170421120634.2c40872c@vento.lan>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Miller <davem@davemloft.net>, Doug Ledford <dledford@redhat.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2017-04-21 at 12:06 -0300, Mauro Carvalho Chehab wrote:
> Em Fri, 21 Apr 2017 20:34:10 +1000
> Michael Ellerman <mpe@ellerman.id.au> escreveu:
> 
> > Mauro Carvalho Chehab <mchehab@s-opensource.com> writes:
> > 
> > > Em Wed, 19 Apr 2017 13:20:37 -0700
> > > James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:
> > >  
> > > >    1. Since most people agree that these form of notifications 
> > > > are useful,       should we have a standard email for it (or at 
> > > > least a list of things which should be in that email, like 
> > > > commit-id, tree, maintainer, mailing list and the version of 
> > > > the kernel it is expected to be pushed for).
> > > >    2. Given that we all run ad-hoc infrastructure to produce 
> > > > these emails, could we get a set of blessed scripts up on 
> > > > kernel.org for all comers so we can use the central 
> > > > infrastructure rather than rolling our own.  
> > > 
> > > I suspect that this very much depends on the way each maintainer 
> > > handle patches. For subsystems like media, where we use 
> > > patchwork, notification comes for free with the tool.  
> > 
> > AFAIK patchwork can only notify the submitter of the patch, which 
> > is OK, but I think it's preferable if the notification goes to the
> > recipient list of the original mail.
> > 
> > For example it's quite handy to know when another maintainer has 
> > merged a patch, so you don't merge it too, or wonder if you should.
> 
> If another maintainer picks a patch and merge, it will update the
> patch status. So, refreshing the patch list will update it for you
> too.
> 
> Ok, there still the risk of race issues, but, even with email
> notifications you still have this risk, as you'll get the e-mail
> only when the other maintainer "publishes" the patches he took
> on git.
> 
> Btw, I forgot to say that[1], besides patchwork, we also use a
> post-receive mailbomb script I wrote several years ago for the 
> patches that are actually applied at the main devel git tree (code
> enclosed).

Yes, mine is a special git tree on hansenpartnership.com that does the
same thing.  I'd rather like not to run git on my cloud system, hence
the rather selfish question about whether we could do it on kernel.org.

> [1] I don't use myself their notifications. I just store on some
> random input box, in case someone complains about issues on it. 
> Due to the way we work, I'm the only one that commits at the media
> development tree. So, I completely forgot about that on my past
> emails.
> 
> Thanks,
> Mauro
> 
> The following script expects something like this at the git config
> file:

Looking at yours, it doesn't seem to handle either rebasing or patch
removing.  Attached is mine, which does both.  A patch update gets both
a remove and an add patch.  I do the same correct committer check (did
have a cockup several years ago where I updated the wrong branch and
sent out several hundred emails before I managed to kill it).

Mine's also complicated by the fact I used to run a pending tree where
I put patches that I thought needed reviewing but the maintainer hadn't
yet reviewed them.  The script would also send out periodic nag mails
about reviews.

it's designed to operate on my trees, which carry both a <branch> and a
<branch>-base branch which is used to work out what patches actually
belong to me.  I should really switch over to using git-mergebase for
this, but haven't got around to it yet.

James

---

#!/usr/bin/perl
#
# An example hook script to mail out commit update information.
# It can also blocks tags that aren't annotated.
# Called by git-receive-pack with arguments: refname sha1-old sha1-new
#
# To enable this hook, make this file executable by "chmod +x update".
#
# Config
# ------
# hooks.mailinglist
#   This is the list that all pushes will go to; leave it blank to not send
#   emails frequently.  The log email will list every log entry in full between
#   the old ref value and the new ref value.
# hooks.announcelist
#   This is the list that all pushes of annotated tags will go to.  Leave it
#   blank to just use the mailinglist field.  The announce emails list the
#   short log summary of the changes since the last annotated tag
# hooks.allowunannotated
#   This boolean sets whether unannotated tags will be allowed into the
#   repository.  By default they won't be.
#
# Notes
# -----
# All emails have their subjects prefixed with "[SCM]" to aid filtering.
# All emails include the headers "X-Git-Refname", "X-Git-Oldrev",
# "X-Git-Newrev", and "X-Git-Reftype" to enable fine tuned filtering and info.

# --- Constants
chomp($cwd=`pwd`);
require $cwd.'/hooks/update-variables.pl' || die;

# branches which comprise the base of the tree (i.e. ones not to
# report commits in) for a push of master.  The default is 'linus'.
# 'merge-base' only gets used when the tree has to be based on a
# non-standard tree because of conflicts
%BRANCHES = (
    'merge-base' => 1,
    'linus' => 1,
);
%IGNORED_BRANCHES = (
    'for-next' => 1,
    'for-linus' => 1,
    'master' => 1,
);
@IGNOREDCC = (
    'stable@kernel.org',
    'stable@vger.kernel.org',
);

%EMAILTO = (
    'James.Bottomley@HansenPartnership.com' => 1,
    'martin.petersen@oracle.com' => 1,
);

# --- Command line
$refname = $ARGV[0];
if ($refname =~ m|^refs/tags/|) {
    $refname =~ s|^refs/tags/||;
    $tag = 1;
} else {
    $refname =~ s|^refs/heads/||;
}
$oldrev=$ARGV[1];
$newrev=$ARGV[2];

# --- Safety check
if ($ENV{'GIT_DIR'} eq '') {
	print STDERR "Don't run this script from the command line.";
	print STDERR " (if you want, you could supply GIT_DIR then run";
	print STDERR "  $0 <ref> <oldrev> <newrev>)";
	exit 1;
}

if ($refname eq '' || $oldrev eq '' || $newrev eq '') {
	print STDERR "Usage: $0 <ref> <oldrev> <newrev>";
	exit 1;
}

if ($tag) {
    chomp(@t = `git cat-file tag $newrev`);
    foreach (@t) {
	if (/^tagger (.*>)/) {
	    $recipients = $1;
	    break;
	}
    }

    if (!$recipients) {
	print STDERR "Can't find a tagger in $refname\n";
	exit 1;
    }

    if (%EMAILTO) {
	$EMAILTO{$recipients} = 1;

	$recipients = join(', ', keys(%EMAILTO));
    }

    chomp(@_ = `git merge-base $newrev master`);

    $oldrev = $_[0];

    chomp(@commitlist = `git rev-list $newrev ^$oldrev`);

    @commitlog = ();
    foreach $commit (@commitlist) {
	chomp(@_ = `git show --oneline $commit`);
	push @commitlog, $_[0];
    }
    @email = (
# Generate header
	"From: James Bottomley <James.Bottomley\@HansenPartnership.com>",
	"To: $recipients",
	"Subject: Tag $revname added to tree ${TREE}",
	"X-Git-Oldrev: $oldrev",
	"X-Git-Newrev: $newrev",
	"X-Git-Tree: $TREEHDR",
	"",
	"Your tag $refname",
	"",
	"Containing:",
	);
    push @email, @commitlog;
    push @email, (
	"",
	"has been added to the $TREETYPE $TREE tree",
	"",
	"You can find it here:",
	"",
	"http://git.kernel.org/?p=linux/kernel/git/jejb/${TREE}.git;a=tag;h=$newrev",
	"",
	$WHENPUSH,
	"",
	"James Bottomley",
	"",
	"P.S. If you find this email unwanted, set up a procmail rule junking on",
	"the header:",
	"",
	"X-Git-Tree: $TREEHDR",
	"",
    );
    open(EMAIL, "| /usr/sbin/sendmail -t") || die;
    print EMAIL join("\n", @email);
    close(EMAIL);
    #print STDERR join("\n", @email);
    print STDERR "Email sent to: $recipients\n";
    exit 0;
}

if ($IGNORED_BRANCHES{$refname}) {
    print STDERR "Branch $refname ignored, not generating email\n";
    exit 0;
}
if ($refname =~ m/-base$/ || $BRANCHES{$refname}) {
    print STDERR "Updating base branch\n";
    exit 0;
}

$branch = '';
chomp(@branches = `git branch`);

if ($refname eq 'master') {
    foreach $b (keys(%BRANCHES)) {
	next if (!grep(/^..$b/,@branches));
	$branch = $b;
	last;
    }
} elsif (grep(/^..${refname}-base/,@branches)) {
    $branch = $refname.'-base';
}

if (!$branch) {
    print STDERR 'Upstream head has no needed bases: '.join(" ", @BRANCHES)." or ${refname}-base\n";
    exit 1;
}

if ($oldrev eq '0000000000000000000000000000000000000000' ) {
    print STDERR "Creating new branch $refname\n";
    exit 0;
}

@commitlist = ();
chomp(@revlist = `git rev-list --no-merges $newrev ^$oldrev ^$branch`);
chomp(@cherrylist = `git cherry $refname $newrev`);

# don't annoy Linus guard: check that all of the cherrylist is actually mine
foreach $commit (@revlist) {
    # - prefix means the commit from $newrev is already in $branch
    next if (grep(/^- $commit/, @cherrylist));
    push @commitlist, $commit;
    $_ = `git log --pretty='format:%cn' $commit^..$commit`;
    next if (/^James Bottomley/);
    next if (/^Christoph Hellwig/);
    next if (/^Martin K. Petersen/);
    print STDERR "ERROR: commit $commit is not yours\n";
    print STDERR "ERROR: $_\n";
    exit 1;
}

$WHENPUSH = $WHENPUSHED{$refname};
if (!$WHENPUSH) {
    $WHENPUSH = $WHENPUSHED{'default'};
}
$NEEDACKS = $NEEDACKS{$refname};

#find the deleted commits and add them to the commit list
chomp(@deletelist = `git cherry $newrev $refname $branch`);
foreach $_ (@deletelist) {
    next if (!m/^\+ /);
    # found a delete; add it to the email list keeping the + prefix
    push @commitlist, $_;
}

foreach $commit (@commitlist) {
    if ($commit =~ m/^\+ /) {
	$commit = substr($commit,2);
	$delete = 1;
	$EMAILPREFIX="Patch dropped from ${TREE}: ";
    } else {
	$delete = 0;
	$EMAILPREFIX="Patch added to ${TREE}: ";
    }
    
    @email = ();
    $author = '';
    if (%EMAILTO) {
	%recipients = %EMAILTO;
    }
    %ackrequired = ();
    $subject = '';

    outer: foreach $_ (`git log $commit^..$commit`) {
	if (/^    / && $subject eq '') {
	    chomp($subject = substr($_, 4));
	} elsif (/^Author: / && $author eq '') {
	    chomp($author = substr($_, 8));
	    $recipients{$author} = 1;
	} elsif (/^    signed-off-by: /i) {
	    chomp($a = substr($_, 19));
	    $recipients{$a} = 1;
	    delete $ackrequired{$a};
	} elsif (/^    reviewed-by: /i) {
	    chomp($a = substr($_, 16));
	    $recipients{$a} = 1;
	    delete $ackrequired{$a};
	} elsif(/^    acked-by: /i) {
	    chomp($a = substr($_, 14));
	    $recipients{$a} = 1;
	    delete $ackrequired{$a};
	} elsif(/^    tested-by: /i) {
	    chomp($a = substr($_, 15));
	    $recipients{$a} = 1;
	    delete $ackrequired{$a};
	} elsif(/^    reported-by: /i) {
	    chomp($a = substr($_, 17));
	    $recipients{$a} = 1;
	    delete $ackrequired{$a};
	} elsif (/^    cc: /i) {
	    chomp($a = substr($_, 8));
	    foreach(@IGNOREDCC) {
		if ($a =~ m/$_/) {
		    next outer;
		}
	    }
	    $recipients{$a} = 1;
	    $ackrequired{$a} = 1;
	}
    }
    # I don't want to receive email
    #delete $recipients{'James Bottomley <James.Bottomley@SteelEye.com>'};
    # --- Email (all stdout will be the email)
    $recipients = join(', ', keys(%recipients));
    #$recipients = 'James.Bottomley@HansenPartnership.com';
    
    @email = (
# Generate header
	      "From: James Bottomley <James.Bottomley\@HansenPartnership.com>",
	      "To: $recipients",
	      "Subject: ${EMAILPREFIX} $subject",
	      "X-Git-Oldrev: $oldrev",
	      "X-Git-Newrev: $newrev",
	      "X-Git-Tree: $TREEHDR",
	      "",
# body goes here
	      "Your commit:",
	      );
    chomp(@commitlog = `git log $commit^..$commit`);
    # get rid of the commit/author/date header
    shift @commitlog;
    shift @commitlog;
    shift @commitlog;
    push @email, @commitlog;
    if ($delete) {
	push @email, (
	    "",
	    "has been dropped from the $TREETYPE $TREE tree",
	    "On branch \"$refname\"",
	    "",
	);
    } else {
	push @email, (
	      "",
	      "has been added to the $TREETYPE $TREE tree",
	      "On branch \"$refname\"",
	      "You can find it here:",
	      "",
	      "http://git.kernel.org/?p=linux/kernel/git/jejb/${TREE}.git;a=commit;h=$commit",
	      "",
	      $WHENPUSH,
	);
    }
    if ($NEEDACKS && %ackrequired) {
	push @email, (
	       "",
	       "This patch is pending because it requires ACKs from:",
	       "",
	       join("\n", keys(%ackrequired)),
	       "",
	       "If those are received it may be moved into one of the upstream SCSI trees",
		      );
    }
    push @email, (
	      "",
	      "James Bottomley",
	      "",
	      "P.S. If you find this email unwanted, set up a procmail rule junking on",
	      "the header:",
	      "",
	      "X-Git-Tree: $TREEHDR",
	      "",
	      );
    open(EMAIL, "| /usr/sbin/sendmail -t") || die;
    print EMAIL join("\n", @email);
    close(EMAIL);
    #print STDERR join("\n", @email);
    print STDERR "Email sent to: $recipients\n";
}

exit 0

---

The update-variables.pl looks like this:

$_=`git tag -l 'v*'`;
chomp;
my ($major, $minor) = (0,0);
foreach $_ (split /\n/) {
    my ($lmajor, $lminor) = m/v(\d+)\.(\d+)-rc\d$/;
    ($major, $minor) = ($lmajor, $lminor) if ($lmajor > $major || ($lmajor == $major && $lminor > $minor));
}
$_=`git tag -l 'v${major}.${minor}'`;
# $_ is populated if we're in a merge window
$minor++ if ($_);
my $cur = $major.'.'.$minor;
my $next = $major.'.'.($minor + 1);
$TREE = "scsi";
$TREETYPE = "upstream";
$TREEHDR = 'SCSI';
%WHENPUSHED = (
	"default" => "This patch is scheduled to be pushed when the merge window opens for $next",
	"fixes" => "This patch is scheduled to be pushed for $cur",
	"pending" => "This patch is not on an upstream branch",
	"postmerge" => "This patch is scheduled to be pushed when the merge window opens for $next but depends on another tree which must be pushed first",
);
%NEEDACKS = (
	"pending" => 1
);

1;
