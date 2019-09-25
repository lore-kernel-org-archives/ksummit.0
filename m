Return-Path: <SRS0=56DB=XU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9314C432C2
	for <ksummit-discuss@archiver.kernel.org>; Wed, 25 Sep 2019 17:32:21 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BCEC7207E0
	for <ksummit-discuss@archiver.kernel.org>; Wed, 25 Sep 2019 17:32:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BCEC7207E0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=perches.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5D4D4CB1;
	Wed, 25 Sep 2019 17:32:21 +0000 (UTC)
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E290592F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Sep 2019 17:32:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0147.hostedemail.com
	[216.40.44.147])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 3A0021DDC8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Sep 2019 17:32:11 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave07.hostedemail.com (Postfix) with ESMTP id DB23718015434
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Sep 2019 17:13:45 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 5567818224519;
	Wed, 25 Sep 2019 17:13:43 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-HE-Tag: jail83_5a5903f769533
X-Filterd-Recvd-Size: 5415
Received: from XPS-9350 (bb220-255-137-117.singnet.com.sg [220.255.137.117])
	(Authenticated sender: joe@perches.com)
	by omf07.hostedemail.com (Postfix) with ESMTPA;
	Wed, 25 Sep 2019 17:13:40 +0000 (UTC)
Message-ID: <5d71311232fd6d4aa0fab038512eab933c13a722.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Mauro Carvalho Chehab
	<mchehab+samsung@kernel.org>
Date: Wed, 25 Sep 2019 10:13:37 -0700
In-Reply-To: <20190919065447.GF2959@kadam>
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan> <20190919065447.GF2959@kadam>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH] media: add a subsystem profile
 documentation
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Thu, 2019-09-19 at 09:56 +0300, Dan Carpenter wrote:
> When I sent a patch, I use get_maintainer.pl then I add whoever the
> wrote the commit from the Fixes tag.  Then I remove Colin King and Kees
> Cook from the CC list because they worked all over the tree and I know
> them.  I also normally remove LKML if there is another mailing list but
> at least one subsystem uses LKML for patchwork so this isn't safe.
> 
> So the safest instructions are "Use get_matainer.pl and add the person
> who wrote the commit in the Fixes tag".

Maybe add this:

Add the signers of any commit referenced in a "Fixes: <commit>" line
of a patch description.

---
 scripts/get_maintainer.pl | 38 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 37 insertions(+), 1 deletion(-)

diff --git a/scripts/get_maintainer.pl b/scripts/get_maintainer.pl
index 5ef59214c555..34085d146fa2 100755
--- a/scripts/get_maintainer.pl
+++ b/scripts/get_maintainer.pl
@@ -26,6 +26,7 @@ my $email = 1;
 my $email_usename = 1;
 my $email_maintainer = 1;
 my $email_reviewer = 1;
+my $email_fixes = 1;
 my $email_list = 1;
 my $email_moderated_list = 1;
 my $email_subscriber_list = 0;
@@ -249,6 +250,7 @@ if (!GetOptions(
 		'r!' => \$email_reviewer,
 		'n!' => \$email_usename,
 		'l!' => \$email_list,
+		'fixes!' => \$email_fixes,
 		'moderated!' => \$email_moderated_list,
 		's!' => \$email_subscriber_list,
 		'multiline!' => \$output_multiline,
@@ -503,6 +505,7 @@ sub read_mailmap {
 ## use the filenames on the command line or find the filenames in the patchfiles
 
 my @files = ();
+my @fixes = ();			# If a patch description includes Fixes: lines
 my @range = ();
 my @keyword_tvi = ();
 my @file_emails = ();
@@ -568,6 +571,8 @@ foreach my $file (@ARGV) {
 		my $filename2 = $2;
 		push(@files, $filename1);
 		push(@files, $filename2);
+	    } elsif (m/^Fixes:\s+([0-9a-fA-F]{6,40})/) {
+		push(@fixes, $1) if ($email_fixes);
 	    } elsif (m/^\+\+\+\s+(\S+)/ or m/^---\s+(\S+)/) {
 		my $filename = $1;
 		$filename =~ s@^[^/]*/@@;
@@ -598,6 +603,7 @@ foreach my $file (@ARGV) {
 }
 
 @file_emails = uniq(@file_emails);
+@fixes = uniq(@fixes);
 
 my %email_hash_name;
 my %email_hash_address;
@@ -612,7 +618,6 @@ my %deduplicate_name_hash = ();
 my %deduplicate_address_hash = ();
 
 my @maintainers = get_maintainers();
-
 if (@maintainers) {
     @maintainers = merge_email(@maintainers);
     output(@maintainers);
@@ -927,6 +932,10 @@ sub get_maintainers {
 	}
     }
 
+    foreach my $fix (@fixes) {
+	vcs_add_commit_signers($fix, "blamed_fixes");
+    }
+
     foreach my $email (@email_to, @list_to) {
 	$email->[0] = deduplicate_email($email->[0]);
     }
@@ -1031,6 +1040,7 @@ MAINTAINER field selection options:
     --roles => show roles (status:subsystem, git-signer, list, etc...)
     --rolestats => show roles and statistics (commits/total_commits, %)
     --file-emails => add email addresses found in -f file (default: 0 (off))
+    --fixes => for patches, add signatures of commits with 'Fixes: <commit>' (default: 1 (on))
   --scm => print SCM tree(s) if any
   --status => print status if any
   --subsystem => print subsystem name if any
@@ -1730,6 +1740,32 @@ sub vcs_is_hg {
     return $vcs_used == 2;
 }
 
+sub vcs_add_commit_signers {
+    return if (!vcs_exists());
+
+    my ($commit, $desc) = @_;
+    my $commit_count = 0;
+    my $commit_authors_ref;
+    my $commit_signers_ref;
+    my $stats_ref;
+    my @commit_authors = ();
+    my @commit_signers = ();
+    my $cmd;
+
+    $cmd = $VCS_cmds{"find_commit_signers_cmd"};
+    $cmd =~ s/(\$\w+)/$1/eeg;	#substitute variables in $cmd
+
+    ($commit_count, $commit_signers_ref, $commit_authors_ref, $stats_ref) = vcs_find_signers($cmd, "");
+    @commit_authors = @{$commit_authors_ref} if defined $commit_authors_ref;
+    @commit_signers = @{$commit_signers_ref} if defined $commit_signers_ref;
+
+    foreach my $signer (@commit_signers) {
+	$signer = deduplicate_email($signer);
+    }
+
+    vcs_assign($desc, 1, @commit_signers);
+}
+
 sub interactive_get_maintainers {
     my ($list_ref) = @_;
     my @list = @$list_ref;


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
