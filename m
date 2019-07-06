Return-Path: <leon@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C3D651DBE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 16:52:34 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C701B70D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 16:52:33 +0000 (UTC)
Date: Sat, 6 Jul 2019 19:52:14 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Wolfram Sang <wsa@the-dreams.de>
Message-ID: <20190706165214.GB18182@mtr-leonro.mtl.com>
References: <20190706142738.GA6893@kunai>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190706142738.GA6893@kunai>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
	meaningful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jul 06, 2019 at 04:27:38PM +0200, Wolfram Sang wrote:
>
> In the parts of the Kernel I work with, reviews are usually given by a plain
> tag. I think this is not enough to keep a good code quality, so I'll start with
> my theses first:
>
> 1) we need a better distinction between Acked-by: and Reviewed-by: and encourage
>    stricter use of that

Agree

>
> 2) Reviewed-by should have a description of the review done (and the review not
>    done)

IMHO, this path of thinking will lead us to less reviews due to an extra
work and wouldn't bring an extra quality which we want.

Right now, everything is built on trust and it will continue to be after
we will demand to add extra sentence. It means that we don't fully trust
in Reviewed-by of one time contributors now and we won't trust in their
description of their Reviewed-by either.

Thanks
