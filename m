Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A88D88B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 07:31:19 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 920E2136
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 07:31:18 +0000 (UTC)
Message-ID: <1436340673.2136.11.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jiri Kosina <jkosina@suse.com>
Date: Wed, 08 Jul 2015 08:31:13 +0100
In-Reply-To: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] services needed from kernel.org
 infrastructure
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2015-07-07 at 22:42 +0200, Jiri Kosina wrote:
> I think it'd be useful to have a session where maintainers could come up 
> with feature / improvement requests for kernel.org infrastructure and have 
> a subsequent discussion about whether they would be generally useful.
> 
> Let me start with my personal wish:
> 
> I personally would very welcome a facility that'd send out an e-mail if a 
> new commit is pushed to a git.kernel.org repo branch (sort of what tip-bot 
> and akpm's scripts are doing these days) to automatically notify the patch 
> author that the patch has been merged and pushed out.
> 
> Suggested attendance: Konstantin, maintainers :)

I can give you my scripts: they send email when patches are added and
dropped from the SCSI git trees.  The only problem is you need a
non-kernel.org server to run them on.  It's a simple perl script
(attached).

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
	"From: James Bottomley <jejb\@kernel.org>",
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
chomp(@revlist = `git rev-list $newrev ^$oldrev ^$branch`);
chomp(@cherrylist = `git cherry $refname $newrev`);

# don't annoy Linus guard: check that all of the cherrylist is actually mine
foreach $commit (@revlist) {
    # - prefix means the commit from $newrev is already in $branch
    next if (grep(/^- $commit/, @cherrylist));
    push @commitlist, $commit;
    $_ = `git log --pretty='format:%cn' $commit^..$commit`;
    next if (/^James Bottomley/);
    next if (/^Christoph Hellwig/);
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
	      "From: James Bottomley <jejb\@kernel.org>",
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
