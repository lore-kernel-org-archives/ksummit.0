Return-Path: <gregkh@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D0057D7C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 18:11:19 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 874E97DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 18:11:19 +0000 (UTC)
Date: Mon, 17 Jun 2019 20:11:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20190617181116.GA17114@kroah.com>
References: <20190617142117.76478570@coco.lan>
	<98ce589a7c50e2693ab6be158e03afde19aed81e.1560794401.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <98ce589a7c50e2693ab6be158e03afde19aed81e.1560794401.git.mchehab+samsung@kernel.org>
Cc: ksummit-discuss@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH RFC] scripts: add a script to handle
 Documentation/features
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jun 17, 2019 at 03:05:07PM -0300, Mauro Carvalho Chehab wrote:
> The Documentation/features contains a set of parseable files.
> It is not worth converting them to ReST format, as they're
> useful the way it is. It is, however, interesting to parse
> them and produce output on different formats:
> 
> 1) Output the contents of a feature in ReST format;
> 
> 2) Output what features a given architecture supports;
> 
> 3) Output a matrix with features x architectures.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> ---
> 
> As commented at KS mailing list, converting the Documentation/features
> file to ReST may not be the best way to handle it. 
> 
> This script allows validating the features files and to  generate ReST files 
> on three different formats.
> 
> The goal is to support it via a sphinx extension, in order to be able to add
> the features inside the Kernel documentation.
> 
>  scripts/get_feat.pl | 470 ++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 470 insertions(+)
>  create mode 100755 scripts/get_feat.pl
> 
> diff --git a/scripts/get_feat.pl b/scripts/get_feat.pl
> new file mode 100755
> index 000000000000..c5a267b12f49
> --- /dev/null
> +++ b/scripts/get_feat.pl
> @@ -0,0 +1,470 @@
> +#!/usr/bin/perl
> +

No SPDX line :(
