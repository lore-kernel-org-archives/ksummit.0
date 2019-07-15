Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 74710B88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Jul 2019 16:11:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 03AC671C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Jul 2019 16:11:40 +0000 (UTC)
Date: Mon, 15 Jul 2019 13:11:36 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Wolfram Sang <wsa@the-dreams.de>
Message-ID: <20190715131136.6ec26015@coco.lan>
In-Reply-To: <20190706171724.GA12534@kunai>
References: <20190706142738.GA6893@kunai>
	<20190706165214.GB18182@mtr-leonro.mtl.com>
	<20190706171724.GA12534@kunai>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

Em Sat, 6 Jul 2019 19:17:24 +0200
Wolfram Sang <wsa@the-dreams.de> escreveu:

> The "problem" with a new reviewer is that I don't know if all aspects of
> a patch have been reviewed or just a subset. 

That's a good point.

While receiving feedback from some -doc patches I wrote, I guess we
currently have something that we can improve for acked-by/reviewed-by
tag description: how to indicate a partial review/ack?

I received several such acks with things like:

	For driver_foo:

	Acked-by : me <my@email>

I also received such acks as:

	Acked-by : me <my@email> # driver_foo
or:
	Acked-by : me <my@email> # for driver_foo

I guess we could agree on a "syntax" for that, with could be easily
be parsed by scripts, documenting it at
Documentation/process/5.Posting.rst.

I'm in favor of:

	Acked-by : me <my@email> # driver_foo
and:
	Reviewed-by : me <my@email> # driver_foo

Thanks,
Mauro
