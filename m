Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 472A598F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 21:05:52 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 25BDC201BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 21:05:51 +0000 (UTC)
Date: Sun, 1 Jun 2014 00:05:41 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20140531210541.GP15585@mwanda>
References: <4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<1401294020.13546.95.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528162833.GA23815@thin>
	<alpine.DEB.2.10.1405282332430.3952@nanos>
	<20140528233145.GA14933@cloud> <1401344001.27691.4.camel@dabdike>
	<20140529233459.GD11741@kroah.com>
	<1401423973.2163.26.camel@dabdike> <20140530111730.GH15585@mwanda>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Fba/0zbH8Xs+Fj9o"
Content-Disposition: inline
In-Reply-To: <20140530111730.GH15585@mwanda>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--Fba/0zbH8Xs+Fj9o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Oops.  That version had a bug in it so it chopped off too much of the
patch.

regards,
dan carpenter


--Fba/0zbH8Xs+Fj9o
Content-Type: text/x-perl; charset=us-ascii
Content-Disposition: attachment; filename="rename_rev.pl"

#!/usr/bin/perl

# This is a tool to help review variable rename patches. The goal is
# to strip out the automatic sed renames and the white space changes
# and leaves the interesting code changes.
#
# Example 1: A patch renames openInfo to open_info:
#     cat diff | rename_review.pl openInfo open_info
#
# Example 2: A patch swaps the first two arguments to some_func():
#     cat diff | rename_review.pl \
#                    -e 's/some_func\((.*?),(.*?),/some_func\($2, $1,/'
#
# Example 3: A patch removes the xkcd_ prefix from some but not all the
# variables.  Instead of trying to figure out which variables were renamed
# just remove the prefix from them all:
#     cat diff | rename_review.pl -ea 's/xkcd_//g'
#
# Example 4: A patch renames 20 CamelCase variables.  To review this let's
# just ignore all case changes and all '_' chars.
#     cat diff | rename_review -ea 'tr/[A-Z]/[a-z]/' -ea 's/_//g'
#
# The other arguments are:
# -nc removes comments
# -ns removes '\' chars if they are at the end of the line.

use strict;
use File::Temp qw/ :mktemp  /;

sub usage() {
    print "usage: cat diff | $0 old new old new old new...\n";
    print "   or: cat diff | $0 -e 's/old/new/g'\n";
    print " -e : execute on old lines\n";
    print " -ea: execute on all lines\n";
    print " -nc: no comments\n";
    print " -nb: no unneeded braces\n";
    print " -ns: no slashes at the end of a line\n";
    exit(1);
}
my @subs;
my @cmds;
my $strip_comments;
my $strip_braces;
my $strip_slashes;

sub filter($) {
    my $_ = shift();
    my $old = 0;
    if ($_ =~ /^-/) {
        $old = 1;
    }
    # remove the first char
    s/^[ +-]//;
    if ($strip_comments) {
        s/\/\*.*?\*\///g;
        s/\/\/.*//;
    }
    foreach my $cmd (@cmds) {
        if ($old || $cmd->[0] =~ /^-ea$/) {
            eval $cmd->[1];
        }
    }
    foreach my $sub (@subs) {
        if ($old) {
            s/$sub->[0]/$sub->[1]/g;
        }
    }

    # remove the newline so we can move curly braces here if we want.
    s/\n//;
    return $_;
}

while (my $param1 = shift()) {
    if ($param1 =~ /^-nc$/) {
        $strip_comments = 1;
        next;
    }
    if ($param1 =~ /^-nb$/) {
        $strip_braces = 1;
        next;
    }
    if ($param1 =~ /^-ns$/) {
        $strip_slashes = 1;
        next;
    }
    my $param2 = shift();
    if ($param2 =~ /^$/) {
        usage();
    }
    if ($param1 =~ /^-e(a|)$/) {
        push @cmds, [$param1, $param2];
        next;
    }
    push @subs, [$param1, $param2];
}

my ($oldfh, $oldfile) = mkstemp("/tmp/oldXXXXX");
my ($newfh, $newfile) = mkstemp("/tmp/newXXXXX");

my $started = 0;
my $output;

#recreate an old file and a new file
while (<>) {
    if ($_ =~ /^(---|\+\+\+)/) {
        next;
    }
    if ($_ =~ /^@/) {
        $started = 1;
    }
# Oops.  This isn't the right way to know that a diff has ended
#    if ($started && !($_ =~ /^[- @+]/)) {
#        last;
#    }
    $output = filter($_);

    if ($strip_braces && $_ =~ /^(\+|-)\W+{/) {
        $output =~ s/^[\t ]+(.*)/ $1/;
    } else {
        $output = "\n" . $output;
    }

    if ($_ =~ /^-/) {
        print $oldfh $output;
        next;
    }
    if ($_ =~ /^\+/) {
        print $newfh $output;
        next;
    }
    print $oldfh $output;
    print $newfh $output;

}
print $oldfh "\n";
print $newfh "\n";
# git diff puts a -- and version at the end of the diff.  put the -- into the
# new file as well so it's ignored
if ($output =~ /\n-/) {
    print $newfh "-\n";
}

my $hunk;
my $old_txt;
my $new_txt;

open diff, "diff -uw $oldfile $newfile |";
while (<diff>) {
    if ($_ =~ /^(---|\+\+\+)/) {
        next;
    }

    if ($_ =~ /^@/) {

        if ($strip_comments) {
            $old_txt =~ s/\/\*.*?\*\///g;
            $new_txt =~ s/\/\*.*?\*\///g;
        }
        if ($strip_braces) {
            $old_txt =~ s/{([^;{]*?);}/$1;/g;
            $new_txt =~ s/{([^;{]*?);}/$1;/g;
            # this is a hack because i don't know how to replace nested
            # unneeded curly braces.
            $old_txt =~ s/{([^;{]*?);}/$1;/g;
            $new_txt =~ s/{([^;{]*?);}/$1;/g;
        }

        if ($old_txt ne $new_txt) {
            print $hunk;
            print $_;
        }
        $hunk = "";
        $old_txt = "";
        $new_txt = "";
        next;
    }

    $hunk = $hunk . $_;

    if ($strip_slashes) {
        s/\\$//;
    }

    if ($_ =~ /^-/) {
        s/-//;
        s/[ \t\n]//g;
        $old_txt = $old_txt . $_;
        next;
    }
    if ($_ =~ /^\+/) {
        s/\+//;
        s/[ \t\n]//g;
        $new_txt = $new_txt . $_;
        next;
    }
    if ($_ =~ /^ /) {
        s/^ //;
        s/[ \t\n]//g;
        $old_txt = $old_txt . $_;
        $new_txt = $new_txt . $_;
    }
}

if ($old_txt ne $new_txt) {
    if ($strip_comments) {
        $old_txt =~ s/\/\*.*?\*\///g;
        $new_txt =~ s/\/\*.*?\*\///g;
    }
    if ($strip_braces) {
        $old_txt =~ s/{([^;{]*?);}/$1;/g;
        $new_txt =~ s/{([^;{]*?);}/$1;/g;
        $old_txt =~ s/{([^;{]*?);}/$1;/g;
        $new_txt =~ s/{([^;{]*?);}/$1;/g;
    }

    print $hunk;
}

unlink($oldfile);
unlink($newfile);

print "\ndone.\n";

--Fba/0zbH8Xs+Fj9o--
