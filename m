Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 18381A8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:46:36 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BD9CE20206
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:46:35 +0000 (UTC)
Message-ID: <5370FAC7.6040707@zytor.com>
Date: Mon, 12 May 2014 09:45:59 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Jason Cooper <jason@lakedaemon.net>, =?UTF-8?B?THVrw6HFoSBDemVybmVy?=
	<lczerner@redhat.com>
References: <20140511041449.GP12708@titan.lakedaemon.net>	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>	<53703416.5070400@zytor.com>
	<20140512061332.GA10134@thin>	<1399886585.879.108.camel@i7.infradead.org>	<alpine.LFD.2.00.1405121543440.8008@localhost.localdomain>
	<20140512162430.GZ12708@titan.lakedaemon.net>
In-Reply-To: <20140512162430.GZ12708@titan.lakedaemon.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>, Anton Arapov <arapov@gmail.com>,
	Sarah A Sharp <sarah@minilop.net>,
	ksummit-discuss@lists.linuxfoundation.org,
	Dirk Hohndel <hohndel@infradead.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/12/2014 09:24 AM, Jason Cooper wrote:
> 
> Well, the QR code can only hold one oops anyway.  Printing the code for
> the first should be pretty simple to implement.
> 

A QR code can hold a certain amount of data, which may or may not be
more than one Oops and/or kernel log messages before it.  Compressing
the data would allow for more information, although it involves more
code running on a dodgy kernel.

	-hpa
