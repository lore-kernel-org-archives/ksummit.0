Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CC3A4D62
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 10:14:38 +0000 (UTC)
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EC2D17A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 10:14:36 +0000 (UTC)
Date: Fri, 7 Sep 2018 13:14:18 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20180907101417.4o2ztkgredd3abd6@mwanda>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180907091842.6c55bd9a@canb.auug.org.au>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] API
 replacement/deprecation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 07, 2018 at 09:18:42AM +1000, Stephen Rothwell wrote:
> Hi Kees,
> 
> On Thu, 6 Sep 2018 11:24:11 -0700 Kees Cook <keescook@chromium.org> wrote:
> >
> > If there was an agreement by all maintainers that deprecated
> > functions/patterns should not be added, and we documented the
> > deprecation somewhere like Documentation/process/deprecated.rst, then
> > we could make the declaration that if such functions got added (it's
> > easy to mechanically check for them), it would be the responsibility
> > of the author and maintainer chain to see that it got fixed before the
> > release is cut. We already have this for things like "breaks the x86
> > allmodconfig build" or similar. The checking would be manual, and the
> > enforcement would be by agreement, but it'd be better than the kind of
> > "please don't do this" hand-waving we've had in the past.
> 
> I could do this in linux-next, of course, the same way I check for
> missing signed-off-bys.  All I would need is the list of deprecated
> things.
> 

We could just use a simple script.  It wouldn't add build warnings to
the normal build and it could also work for macros.


diff --git a/scripts/check_deprecated.pl b/scripts/check_deprecated.pl
new file mode 100755
index 000000000000..4f5571d0bfde
--- /dev/null
+++ b/scripts/check_deprecated.pl
@@ -0,0 +1,34 @@
+#!/usr/bin/perl
+
+use strict;
+
+open(LIST, "<", "scripts/deprecated_stuff");
+
+my %warnings;
+my $regex = "(";
+my $first = 1;
+while (<LIST>) {
+    if ($_ =~ /(\w+) (.*)/) {
+        if ($first) {
+            $regex = "$regex$1";
+            $first = 0;
+        } else {
+            $regex = "$regex|$1";
+        }
+
+        $warnings{$1} = $2;
+    }
+}
+$regex = "$regex)";
+
+close(LIST);
+
+while (<>) {
+    if (!($_ =~ /^\+/)) {
+        next;
+    }
+
+    if ($_ =~ /\b($regex)\b/) {
+        print $warnings{$1} . "\n";
+    }
+}
diff --git a/scripts/deprecated_stuff b/scripts/deprecated_stuff
new file mode 100644
index 000000000000..01623103aece
--- /dev/null
+++ b/scripts/deprecated_stuff
@@ -0,0 +1,2 @@
+strcpy strcpy is insecure
+blah some reason
-- 
2.11.0
