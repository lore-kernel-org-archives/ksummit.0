Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8D60DDD5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 17:21:26 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1633D7E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 17:21:26 +0000 (UTC)
Date: Mon, 17 Jun 2019 14:21:17 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Shuah Khan <skhan@linuxfoundation.org>, Jonathan Corbet <corbet@lwn.net>
Message-ID: <20190617142117.76478570@coco.lan>
In-Reply-To: <20190617071206.64154747@coco.lan>
References: <20190612085405.6045d95d@lwn.net>
	<f2f4a212-54f4-70a2-5a5d-9d45b3e1b5ae@linuxfoundation.org>
	<20190613112533.2176c5d4@coco.lan>
	<b5af03d3-2286-32e9-f895-776b563df550@linuxfoundation.org>
	<20190614210536.312fa988@coco.lan>
	<20190617071206.64154747@coco.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Mon, 17 Jun 2019 07:12:06 -0300
Mauro Carvalho Chehab <mchehab+samsung@kernel.org> escreveu:

Answering myself here...

> > 	Documentation/features  
> 
> This is actually a special case. I don't think that a plain txt->rst
> conversion is the right thing to be done here.
> 
> IMO, it requires some further discussions.

> The script should be able to produce valid ReST output on all the
> above formats, e. g.:
> 
> 1) output per feature;
> 2) output per architecture;
> 3) output as a matrix feature x architecture.

I'm actually thinking on something like:

1) A page that could be part of a feature documentation
   (On this example, it documents scheduler ARCH_HAS_MEMBARRIER_SYNC_CORE)

	https://www.infradead.org/~mchehab/rst_features/feature_membarrier-sync-core.html

2) A page that could be part of the per-archtecture books
   (here, arm64 one):

	https://www.infradead.org/~mchehab/rst_features/feature_arm64.html

3) A page with a matrix with all architectures and all features:

	https://www.infradead.org/~mchehab/rst_features/feature_matrix.html

I just wrote a patch with such script.

I should be submitting it soon to the ML for review, after some final
cleanups.

Thanks,
Mauro
