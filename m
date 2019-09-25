Return-Path: <SRS0=56DB=XU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63ECBC432C2
	for <ksummit-discuss@archiver.kernel.org>; Wed, 25 Sep 2019 18:40:16 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 37A7921655
	for <ksummit-discuss@archiver.kernel.org>; Wed, 25 Sep 2019 18:40:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="k2hiS4xU"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 37A7921655
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BB659C3F;
	Wed, 25 Sep 2019 18:40:15 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 97B8DAD7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Sep 2019 18:40:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 72B77108
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Sep 2019 18:40:11 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id e5so2908188pls.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Sep 2019 11:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to;
	bh=MuGT3zeB87Kf7bqZ0dAnnifWsbY2EnFsryvY8zE4L20=;
	b=k2hiS4xUarg1KgRUWzgkyJyk06WmpFYdsvsbt373eel40fuHIDRGpwUz7FZd+51YIG
	ZzEbDVZaBIqOp0cV56ziKFIIkARUnORU5d2B26MfwxYZoU3n6aR4XJq4FPAGHIpDZCGF
	dTzMqTXw3L/SZ3PidwBtj6rE4L+16Q0ZM2aM8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=MuGT3zeB87Kf7bqZ0dAnnifWsbY2EnFsryvY8zE4L20=;
	b=XSHZsZSjufyeGU3EV3RaTbX/YCPG0oVWCOjzDTy64XlL1GVWlKaGgFgDAwIFxOmgD3
	ta7dNBvd8U/TuvBRhd0LngrlgQk4qHH8me9IaWKPw4d2Q+bAr1Yytcxm6MlGNrQVzAiT
	dVuve9qsACoM9ZsNqmjmD49OSYkQ/FB4CMN+BJK/Nkw5RrHEPQAEq1WRD0LE49y/dZTw
	tyU7tVyy10AQh4tLGRFWpZgXzenbWSUs1KvLp2pC0yXHvv8ReAviXk9SUs73j6rqyVAt
	6jNIvBOoz3bydnDozu9P9b4bsWCRPPIydk3N97CQGN+1UPuKkjoLo8T1tFs6uRp2yGBq
	Bs4Q==
X-Gm-Message-State: APjAAAUZQu3D52fFlFG0lQRsJqPhMj4yfvmwf6LKeKdbdWFm6xSG/ZCA
	t4ve8/ftnYUrJ6uGEr7euqcG3Q==
X-Google-Smtp-Source: APXvYqyi345HBHvXtJFrdrAFgsh83ZZSsqYUWK7abFYoPZWKB/q6DvRBZYtN+lJ6jxADvL2+CTxQwQ==
X-Received: by 2002:a17:902:9045:: with SMTP id
	w5mr10341767plz.226.1569436810831; 
	Wed, 25 Sep 2019 11:40:10 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
	by smtp.gmail.com with ESMTPSA id
	g12sm10754208pfb.97.2019.09.25.11.40.09
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 25 Sep 2019 11:40:09 -0700 (PDT)
Date: Wed, 25 Sep 2019 11:40:08 -0700
From: Kees Cook <keescook@chromium.org>
To: Joe Perches <joe@perches.com>
Message-ID: <201909251127.D0C517171E@keescook>
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan> <20190919065447.GF2959@kadam>
	<5d71311232fd6d4aa0fab038512eab933c13a722.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d71311232fd6d4aa0fab038512eab933c13a722.camel@perches.com>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>,
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

On Wed, Sep 25, 2019 at 10:13:37AM -0700, Joe Perches wrote:
> On Thu, 2019-09-19 at 09:56 +0300, Dan Carpenter wrote:
> > When I sent a patch, I use get_maintainer.pl then I add whoever the
> > wrote the commit from the Fixes tag.  Then I remove Colin King and Kees
> > Cook from the CC list because they worked all over the tree and I know
> > them.  I also normally remove LKML if there is another mailing list but
> > at least one subsystem uses LKML for patchwork so this isn't safe.
> > 
> > So the safest instructions are "Use get_matainer.pl and add the person
> > who wrote the commit in the Fixes tag".
> 
> Maybe add this:
> 
> Add the signers of any commit referenced in a "Fixes: <commit>" line
> of a patch description.

Oh yes please! I've always done this manually, so that's a nice bit of
automation. :)

> 
> ---
>  scripts/get_maintainer.pl | 38 +++++++++++++++++++++++++++++++++++++-
>  1 file changed, 37 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/get_maintainer.pl b/scripts/get_maintainer.pl
> index 5ef59214c555..34085d146fa2 100755
> --- a/scripts/get_maintainer.pl
> +++ b/scripts/get_maintainer.pl
> @@ -26,6 +26,7 @@ my $email = 1;
>  my $email_usename = 1;
>  my $email_maintainer = 1;
>  my $email_reviewer = 1;
> +my $email_fixes = 1;
>  my $email_list = 1;
>  my $email_moderated_list = 1;
>  my $email_subscriber_list = 0;
> @@ -249,6 +250,7 @@ if (!GetOptions(
>  		'r!' => \$email_reviewer,
>  		'n!' => \$email_usename,
>  		'l!' => \$email_list,
> +		'fixes!' => \$email_fixes,
>  		'moderated!' => \$email_moderated_list,
>  		's!' => \$email_subscriber_list,
>  		'multiline!' => \$output_multiline,
> @@ -503,6 +505,7 @@ sub read_mailmap {
>  ## use the filenames on the command line or find the filenames in the patchfiles
>  
>  my @files = ();
> +my @fixes = ();			# If a patch description includes Fixes: lines
>  my @range = ();
>  my @keyword_tvi = ();
>  my @file_emails = ();
> @@ -568,6 +571,8 @@ foreach my $file (@ARGV) {
>  		my $filename2 = $2;
>  		push(@files, $filename1);
>  		push(@files, $filename2);
> +	    } elsif (m/^Fixes:\s+([0-9a-fA-F]{6,40})/) {

Is "6" a safe lower bound here? I thought 12 was the way to go?

$ git log | egrep 'Fixes: [a-f0-9]{1,40}' | col2 | awk '{print length }' | sort | uniq -c | sort -n | tail
    238 8
    300 7
    330 14
    344 6
    352 11
    408 40
    425 10
    735 16
   1866 13
  31446 12

Hmpf, 6 is pretty high up there...

> +		push(@fixes, $1) if ($email_fixes);
>  	    } elsif (m/^\+\+\+\s+(\S+)/ or m/^---\s+(\S+)/) {
>  		my $filename = $1;
>  		$filename =~ s@^[^/]*/@@;
> @@ -598,6 +603,7 @@ foreach my $file (@ARGV) {
>  }
>  
>  @file_emails = uniq(@file_emails);
> +@fixes = uniq(@fixes);
>  
>  my %email_hash_name;
>  my %email_hash_address;
> @@ -612,7 +618,6 @@ my %deduplicate_name_hash = ();
>  my %deduplicate_address_hash = ();
>  
>  my @maintainers = get_maintainers();
> -
>  if (@maintainers) {
>      @maintainers = merge_email(@maintainers);
>      output(@maintainers);
> @@ -927,6 +932,10 @@ sub get_maintainers {
>  	}
>      }
>  
> +    foreach my $fix (@fixes) {
> +	vcs_add_commit_signers($fix, "blamed_fixes");
> +    }
> +
>      foreach my $email (@email_to, @list_to) {
>  	$email->[0] = deduplicate_email($email->[0]);
>      }
> @@ -1031,6 +1040,7 @@ MAINTAINER field selection options:
>      --roles => show roles (status:subsystem, git-signer, list, etc...)
>      --rolestats => show roles and statistics (commits/total_commits, %)
>      --file-emails => add email addresses found in -f file (default: 0 (off))
> +    --fixes => for patches, add signatures of commits with 'Fixes: <commit>' (default: 1 (on))

Should "Tested-by" and "Co-developed-by" get added to @signature_tags ?

>    --scm => print SCM tree(s) if any
>    --status => print status if any
>    --subsystem => print subsystem name if any
> @@ -1730,6 +1740,32 @@ sub vcs_is_hg {
>      return $vcs_used == 2;
>  }
>  
> +sub vcs_add_commit_signers {
> +    return if (!vcs_exists());
> +
> +    my ($commit, $desc) = @_;
> +    my $commit_count = 0;
> +    my $commit_authors_ref;
> +    my $commit_signers_ref;
> +    my $stats_ref;
> +    my @commit_authors = ();
> +    my @commit_signers = ();
> +    my $cmd;
> +
> +    $cmd = $VCS_cmds{"find_commit_signers_cmd"};
> +    $cmd =~ s/(\$\w+)/$1/eeg;	#substitute variables in $cmd
> +
> +    ($commit_count, $commit_signers_ref, $commit_authors_ref, $stats_ref) = vcs_find_signers($cmd, "");
> +    @commit_authors = @{$commit_authors_ref} if defined $commit_authors_ref;
> +    @commit_signers = @{$commit_signers_ref} if defined $commit_signers_ref;
> +
> +    foreach my $signer (@commit_signers) {
> +	$signer = deduplicate_email($signer);
> +    }
> +
> +    vcs_assign($desc, 1, @commit_signers);
> +}

@commit_authors is unused?

> +
>  sub interactive_get_maintainers {
>      my ($list_ref) = @_;
>      my @list = @$list_ref;
> 
> 
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

Yay! :)

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
