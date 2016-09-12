Return-Path: <alex.shi@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C86E1412
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Sep 2016 04:12:54 +0000 (UTC)
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AD465137
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Sep 2016 04:12:52 +0000 (UTC)
Received: by mail-qt0-f172.google.com with SMTP id l91so49602543qte.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 Sep 2016 21:12:52 -0700 (PDT)
To: Tsugikazu Shibata <tshibata@ab.jp.nec.com>, Theodore Ts'o <tytso@mit.edu>
References: <57C78BE9.30009@linaro.org>
	<20160902134711.movdpffcdcsx6kzv@thunk.org>
	<EA994DF73240CA4588A99BF072DB2840021207D3@BPXM12GP.gisp.nec.co.jp>
From: Alex Shi <alex.shi@linaro.org>
Message-ID: <57D62B3F.2070900@linaro.org>
Date: Mon, 12 Sep 2016 12:12:47 +0800
MIME-Version: 1.0
In-Reply-To: <EA994DF73240CA4588A99BF072DB2840021207D3@BPXM12GP.gisp.nec.co.jp>
Content-Type: text/plain; charset=iso-2022-jp
Content-Transfer-Encoding: 7bit
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mark Brown <broonie@linaro.org>
Subject: Re: [Ksummit-discuss] [LTSI-dev] [Stable kernel] feature
 backporting collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 09/06/2016 03:20 PM, Tsugikazu Shibata wrote:
> It seems too late but Here I would like to comment from LTSI project's stand point:
> We were started LTSI project similar view as above that is:
> - LTSI is based on upstream first policy. We are providing a chance to
> merge vendor-required patches on top of LTS but patches need to be
> in -next or merged in later upstream and back ported to LTS.
> Majority of LTSI's additional patches are drivers but sometimes tools or 
> new features may proposed. Such patches are reviewed in case by case 
> basis but should be self-contained.
> - We are approaching to SoC vendors and device manufactures to 
> convince their in-house patches to be upstream. It seems that
> SoC vendors can create their own fork for their customers but
> providing a chance to merge their patches on top of LTS as LTSI will
> make some motivation to merge such patches into upstream as long 
> term view. Yes, We hope our activities may reduce the problem 
> discussed in this thread in longer term. 
> Actually, some of SoC vendors would send us their patches 
> backported from upstream. We will continue to discuss with SoCs and 
> device manufactures to solve the problem.
> - Also, some member of LTSI is employee of companies and they are
> testing hard for LTSI kernel before the release. Those fixes are providing
> to upstream not just LTSI actually. We see LTSI is being one of activity 
> of filling the gap between companies and community to create the kernel 
> used for the companies and industry.

Thanks for Tsugikazu's explanation of LTSI!
LSK follows the very similar rules as LTSI, if anyone like to look into
LSK's policies: https://wiki.linaro.org/LSK
>From 'LSK INCLUSION CONSIDERATIONS' chapter.

Compare to LTSI, LSK has newer LTS, and more upstream features
backporting which requested by many SoC vendors. Apparently these are
needed widely in industry. And the separately feature branch give more
feasibility on feature selection to user. If don't like any features
branches, That just left pure LTS.

BTW, someone worried non-upstream feature wasn't in LSK mainline. We
setup rules to isolated them.

=====
The LSK is meant for stability, not early access, thus normal requested
features should be present in an upstream kernel (committed in the
mainline kernel, or on a clear path to upstream, i.e. merged into
linux-next or applied to a maintainer tree) prior to the request.
Exception rules for few extra features which are necessary and not
merged in upstream yet:
stay out of the LSK mainline by a separate branch, but easy merged into LSK
sponsor Linaro group or member company need providing source code and
response for quality
=====

> 
> Finally, A request to the community from LTSI's stand point is:
> We want to have some process to be expected; How or about when 
> LTS would be released. So that companies can easier to create their plan 
> to use LTS and that will cause more user can use stable and secure
> kernel.
