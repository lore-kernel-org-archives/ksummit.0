Return-Path: <mchehab@s-opensource.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BAF00A6E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 15:06:46 +0000 (UTC)
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id CF650143
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 15:06:45 +0000 (UTC)
Date: Fri, 21 Apr 2017 12:06:34 -0300
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Message-ID: <20170421120634.2c40872c@vento.lan>
In-Reply-To: <87y3uuaw2l.fsf@concordia.ellerman.id.au>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<1492633237.3217.50.camel@HansenPartnership.com>
	<20170420072413.11713d39@vento.lan>
	<87y3uuaw2l.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Doug Ledford <dledford@redhat.com>, David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Fri, 21 Apr 2017 20:34:10 +1000
Michael Ellerman <mpe@ellerman.id.au> escreveu:

> Mauro Carvalho Chehab <mchehab@s-opensource.com> writes:
> 
> > Em Wed, 19 Apr 2017 13:20:37 -0700
> > James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:
> >  
> >>    1. Since most people agree that these form of notifications are useful,
> >>       should we have a standard email for it (or at least a list of things
> >>       which should be in that email, like commit-id, tree, maintainer,
> >>       mailing list and the version of the kernel it is expected to be
> >>       pushed for).
> >>    2. Given that we all run ad-hoc infrastructure to produce these emails,
> >>       could we get a set of blessed scripts up on kernel.org for all
> >>       comers so we can use the central infrastructure rather than rolling
> >>       our own.  
> >
> > I suspect that this very much depends on the way each maintainer handle
> > patches. For subsystems like media, where we use patchwork, notification
> > comes for free with the tool.  
> 
> AFAIK patchwork can only notify the submitter of the patch, which is OK,
> but I think it's preferable if the notification goes to the recipient
> list of the original mail.
> 
> For example it's quite handy to know when another maintainer has merged
> a patch, so you don't merge it too, or wonder if you should.

If another maintainer picks a patch and merge, it will update the
patch status. So, refreshing the patch list will update it for you
too.

Ok, there still the risk of race issues, but, even with email
notifications you still have this risk, as you'll get the e-mail
only when the other maintainer "publishes" the patches he took
on git.

Btw, I forgot to say that[1], besides patchwork, we also use a
post-receive mailbomb script I wrote several years ago for the patches
that are actually applied at the main devel git tree (code enclosed).

[1] I don't use myself their notifications. I just store on some
random input box, in case someone complains about issues on it. 
Due to the way we work, I'm the only one that commits at the media
development tree. So, I completely forgot about that on my past
emails.

Thanks,
Mauro

The following script expects something like this at the git config
file:

[mailnotify]
	project = "subsystem_tree"
	from = my-commits-bounces@example.org
	to = my-commits@examples.org
	replyto = subsystem-ml@vger.kernel.org
	maxsize = 100000
	maxmsgs = 100
	comitteremail = my@email
#	url = http://example.org/cgit.cgi/my_tree.git
#	topic = master
	debug = 0


#!/usr/bin/perl
#
# Copyright (c) 2012-2016: Mauro Carvalho Chehab <mchehab@s-opensource.com>
# License: GPLv2
#
use warnings;
use strict;
use Getopt::Long;
use Date::Parse;
use Date::Format;
use Sys::Hostname;

$ENV{PATH} = '/usr/local/bin:/usr/bin:/bin';

my $program = $0;

my @refs;
my %parents;
#
# Retrieve all info from git config
#
my $project_name = qx(git config mailnotify.project) || "untitled";
my $smtp_server  = qx(git config mailnotify.smtpserver) || "localhost";
my $from         = qx(git config mailnotify.from) || sprintf('%s@%s', $project_name, hostname());
my $to           = qx(git config mailnotify.to) || die("No mail To:");
my $cfgcc        = qx(git config mailnotify.cc) || "";
my $replyto      = qx(git config mailnotify.replyto) || "";
my $maxsize      = qx(git config mailnotify.maxsize) || "";
my $maxmsgs      = qx(git config mailnotify.maxmsgs) || 0;
my $url          = qx(git config mailnotify.url) || "";
my $comitteremail= qx(git config mailnotify.comitteremail) || "";
my $debug        = qx(git config mailnotify.debug) || 0;
my $debug_dir    = qx(git config mailnotify.debugdir) || "queue";
my $mail_cmd     = qx(git config mailnotify.mailcmd) || "/usr/sbin/sendmail";
my $topic	 = qx(git config mailnotify.topic) || "";

GetOptions(
	   "debug" => \$debug,
	  );

$project_name =~ s/\s+$//;
$smtp_server =~ s/\s+$//;
$from =~ s/\s+$//;
$to =~ s/\s+$//;
$cfgcc =~ s/\s+$//;
$replyto =~ s/\s+$//;
$maxsize =~ s/\s+$//;
$url =~ s/\s+$//;
$comitteremail =~ s/\s+$//;
$debug =~ s/\s+$//;
$debug_dir =~ s/\s+$//;
$mail_cmd =~ s/\s+$//;
$topic =~ s/\s+$//;

if ($debug && !stat($debug_dir)) {
	mkdir $debug_dir, 0755 or die "Can't create $debug_dir";
}

#
# Get old revision, new revision and branch/tag name
#
my ($oldrev, $newrev, $refname);
if (scalar(@ARGV)) {
	($oldrev, $newrev, $refname) = @ARGV[ 0 .. 2 ];
} else {
	my $args = <STDIN>;
	($oldrev, $newrev, $refname) = split(" ", $args);
}

if (!$refname) {
	$refname = qx(git describe --all $newrev|grep heads/);
	$refname =~ s,heads/,,;
}

if (!$oldrev || !$newrev || !$refname) {
	printf(STDERR "Arguments missing. Can't proceed\n");
	exit -1;
}

printf(STDERR "Running: $0 %s %s %s\n", $oldrev, $newrev, $refname);

# Avoid errors like
# remote: fatal: Invalid revision range 0000000000000000000000000000000000000000..4dbd68c7a6b13ef1313f51468f1b154d11e5f934
if ($oldrev eq "0000000000000000000000000000000000000000") {
	printf(STDERR "Warning: using 'master' branch as old rev\n");
	$oldrev = "master";
}

#
# Get the complete revision name
#
$oldrev = qx(git rev-parse $oldrev);
$newrev = qx(git rev-parse $newrev);

chomp($oldrev);
chomp($newrev);
chomp($refname);

if ($debug) {
    printf(STDERR "oldrev:%s\n", $oldrev);
    printf(STDERR "newrev:%s\n", $newrev);
    printf(STDERR "refname:%s\n", $refname);
}

#
# Get branch name
#
my $branch = (split("/", $refname))[-1];

if ($topic ne "") {
	my $parentbranch = "";

	$parentbranch = (split("/", $refname))[-2] if (scalar(split("/", $refname)) > 1);
	$parentbranch = $refname if (!$parentbranch);
	printf(STDERR "expected parent branch:%s\n", $topic) if ($debug);
	printf(STDERR "current parent branch:%s\n", $parentbranch) if ($debug);

	if ($parentbranch ne $topic) {
		printf(STDERR "Branch $parentbranch: topic $topic don't generate emails.\n");
		exit 0;
	}
}

#
# get all changesets from $oldrev to $newrev, with their parents
#
my $n_patches = 0;
my $n_ignored = 0;
open REF, "git rev-list $oldrev..$newrev|";
while (<REF>) {
	my $curref = $_;
	$curref =~ s/\s+$//;

	if ($comitteremail) {
		my $comitter = qx(git log --pretty=format:%ce $curref -1);
		print "$comitter is not maintainer\n" if ($debug && !($comitter =~ m/($comitteremail)/));
		if (!($comitter =~ m/($comitteremail)/)) {
			$n_ignored++;
			next;
		}
	}
	push @refs, $curref;
	$n_patches++;
}
close REF;

if ($maxmsgs && ($n_patches > $maxmsgs)) {
	if ($comitteremail) {
		my $msg = "Subject: Warning: hook wants to send $n_patches patches!\nFrom: $from\nTo: $comitteremail\n\n";
		$msg .= "If this is not an error, please call\n\t" .
			  $program . " $oldrev $newrev $refname\n" .
			  "At the git server\n";
		if (!$debug) {
			open(MAIL, "| $mail_cmd -t");
			print MAIL $msg;
			close MAIL;
		} else {
			my $fname = "$debug_dir/error_msg";
			open(MAIL, ">$fname") or die "Can't create $fname";
			print MAIL $msg;
			close MAIL;
			print "Created $fname\n";
		}
	}
	# Abort script, letting the receive proceed
	exit 0;
}
#
# Remove merge changesets
#

print "Generating $n_patches emails.\n" if ($debug);

#
# Generate one email per changeset
#
my $count = 1;
foreach my $ref (@refs) {
	my %copy;
	my $log = "";

	# Add mandatory CC
	$copy{$cfgcc} = "" if ($cfgcc);

	my $comitter = qx(git log --pretty=format:"%cn <%ce>" $ref -1);
	my $comitter_email = qx(git log --pretty=format:"%ce" $ref -1);
	my $comitter_date = qx(git log --pretty=format:"%cd" $ref -1);

	# Convert date into rfc2822 format
	$comitter_date = time2str("%a, %d %b %Y %H:%M:%S %z", 
				  str2time($comitter_date));


	open IN, "git log -1 --pretty=email --stat $ref|";

	# Discard initial From line
	my $dumb=<IN>;

	my $header;
	my $is_header=1;
	while (<IN>) {
		# Proper handle header continuation fields
		if ($is_header) {
			if ($_ eq "\n") {
				$is_header = 0;
			} elsif (m/^\s/) {
				$header =~ s/\n$//;
				$header .= $_;
				next;
			} elsif (m/From:\s*(.*)\n/) {
				$header .= "From: $comitter\n";
			} elsif (m/Subject:\s*(.*)\n/) {
				my $s = $1;
				$s =~ s/^\[PATCH\]\s*//;
				$header .= sprintf("Subject: [git:%s/%s] %s\n", $project_name, $branch, $s);
			} elsif (m/Date:\s*(.*)\n/) {
				$header .= sprintf("Date: %s\n", $comitter_date);
			} else {
				$header .= $_;
			}
			next;
		}

		$log .= $_;
		if (m/(signed-off-by|author|from|accepted-by|tested-by|thanks-to|reviewed-by|cc|acked-by):\s*(.*)\s*\n$/i) {
			my $sob=$2;
			my $name;
			my $email;
			if ($sob =~ m/\s*(.*)\s*<(.*)>/) {
				$name = $1;
				$email = $2;
				$name =~ s/^\s+//;
				$name =~ s/\s+$//;
				$name =~ s/^\"(.*)\"$/$1/;
				$name="" if ($name =~ m/\@/);
			} elsif ($sob =~ m/([^\s\<]+\@[^\s+\>]+)/) {
				$email = $1;
				$name = "";
			}
			# Don't copy committer/stable
			next if ($email eq $comitter_email);
			next if ($email =~ m/stable\@kernel.org/i);

			$copy{"$email"} = $name if (!exists($copy{"$email"}));
		}
	}
	close IN;

	my $cc = "";
	while (my ($key,$value) = each(%copy) ) {
		if ($value ne "") {
			$cc .= ", $value <$key>";
		} else {
			$cc .= ", $key";
		}
	}
	$cc =~ s/^, //;
	$cc =~ s/\s+/ /g;

	my $diff = qx(git show --pretty=format:"" $ref);

	$header .= "To: $to\n";
	$header .= "Cc: $cc\n" if ($cc);

	if ($replyto) {
		$header .= "Mail-followup-to: $replyto\n";
		$header .= "Forward-to: $replyto\n";
		$header .= "Reply-to: $replyto\n";
	}

	my $author = qx(git log -1 --pretty=format:"%an <%ae>" $ref);
	my $subject = qx(git log -1 --pretty=format:"%s" $ref);
	my $date = qx(git log -1 --pretty=format:"%ad" $ref);

	my $comment = "This is an automatic generated email to let you know that the following patch were queued";
	if ($url) {
		$comment .= " at the \n$url tree:\n\n";
	} else {
		$comment .= ":\n\n";
	}
	$comment .= "Subject: $subject\n"
		  . "Author:  $author\n"
		  . "Date:    $date\n";

	my $email = "$header\n$comment\n$log\n---\n\n";
	$email   .= "$url/commit/?id=$ref\n" if ($url);
	if ($maxsize && length($diff) > $maxsize) {
		$diff = "<diff discarded since it is too big>\n"
	}
	$email .= $diff;

	if (!$debug) {
		open(MAIL, "| $mail_cmd -t");
		print MAIL $email;
		close MAIL;
	} else {
		my $fname = "$debug_dir/patch-$count-$ref.patch";
		open(MAIL, ">$fname") or die "Can't create $fname";
		print MAIL $email;
		close MAIL;
		print "Created $fname\n";
	}

	$count++;
}
printf STDERR "Sent %d emails.\n", $count - 1;
printf STDERR "Ignored %d patches that were not committed by $comitteremail.\n", $n_ignored if ($n_ignored);

close REF;
