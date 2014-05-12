Return-Path: <lczerner@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C82A02FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 13:49:12 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 5B3CA201BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 13:49:11 +0000 (UTC)
Date: Mon, 12 May 2014 15:48:32 +0200 (CEST)
From: =?ISO-8859-15?Q?Luk=E1=A8_Czerner?= <lczerner@redhat.com>
To: David Woodhouse <dwmw2@infradead.org>
In-Reply-To: <1399886585.879.108.camel@i7.infradead.org>
Message-ID: <alpine.LFD.2.00.1405121543440.8008@localhost.localdomain>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<53703416.5070400@zytor.com> <20140512061332.GA10134@thin>
	<1399886585.879.108.camel@i7.infradead.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>, Sarah A Sharp <sarah@minilop.net>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>, Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 12 May 2014, David Woodhouse wrote:

> Date: Mon, 12 May 2014 10:23:05 +0100
> From: David Woodhouse <dwmw2@infradead.org>
> To: Josh Triplett <josh@joshtriplett.org>
> Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
>     Jason Cooper <jason@lakedaemon.net>,
>     ksummit-discuss@lists.linuxfoundation.org,
>     Anton Arapov <arapov@gmail.com>, Sarah A Sharp <sarah@minilop.net>,
>     Dirk Hohndel <hohndel@infradead.org>
> Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
> 
> On Sun, 2014-05-11 at 23:13 -0700, Josh Triplett wrote:
> > On Sun, May 11, 2014 at 07:38:14PM -0700, H. Peter Anvin wrote:
> > > As valuable as I obviously believe this project is, is there actually
> > > anything that warrants discussion at the Kernel Summit?  It seems like
> > > something to Just Do[TM].
> > 
> > I believe there is actually a key part of this discussion to have at
> > Kernel Summit.  We don't need to discuss the technical details of the
> > implementation; we do need to discuss the implications of enabling mass
> > oops-reporting, the infrastructure and information we want to include in
> > codes valid for the next decade or so, the tradeoffs between ease of
> > reporting and value of the reports, some potential approaches to
> > aggregate the date, and similar.
> 
> In particular, can we avoid the silly trap of the ---[cut here]--- which
> comes between a kernel oops, and the potentially useful messages that
> were printed right before it.

I'd like people to include the lines before the oops as well, it's
often quite useful. The question is how to communicate this
information to the users through the kernel oops ? Also how to
communicate that we usually need the first oops ? Maybe instead of
"cut here" line we can have the one or two sentences about this ?

-Lukas
