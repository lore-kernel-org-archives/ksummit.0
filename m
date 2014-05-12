Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1FD68A8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:24:35 +0000 (UTC)
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B00DE2027B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:24:34 +0000 (UTC)
Date: Mon, 12 May 2014 12:24:30 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: =?utf-8?B?THVrw6HFoQ==?= Czerner <lczerner@redhat.com>
Message-ID: <20140512162430.GZ12708@titan.lakedaemon.net>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<53703416.5070400@zytor.com> <20140512061332.GA10134@thin>
	<1399886585.879.108.camel@i7.infradead.org>
	<alpine.LFD.2.00.1405121543440.8008@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.1405121543440.8008@localhost.localdomain>
Content-Transfer-Encoding: quoted-printable
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>, Sarah A Sharp <sarah@minilop.net>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
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

On Mon, May 12, 2014 at 03:48:32PM +0200, Luk=C3=A1=C5=A1 Czerner wrote:
> On Mon, 12 May 2014, David Woodhouse wrote:
>=20
> > Date: Mon, 12 May 2014 10:23:05 +0100
> > From: David Woodhouse <dwmw2@infradead.org>
> > To: Josh Triplett <josh@joshtriplett.org>
> > Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
> >     Jason Cooper <jason@lakedaemon.net>,
> >     ksummit-discuss@lists.linuxfoundation.org,
> >     Anton Arapov <arapov@gmail.com>, Sarah A Sharp <sarah@minilop.net=
>,
> >     Dirk Hohndel <hohndel@infradead.org>
> > Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the k=
ernel
> >=20
> > On Sun, 2014-05-11 at 23:13 -0700, Josh Triplett wrote:
> > > On Sun, May 11, 2014 at 07:38:14PM -0700, H. Peter Anvin wrote:
> > > > As valuable as I obviously believe this project is, is there actu=
ally
> > > > anything that warrants discussion at the Kernel Summit?  It seems=
 like
> > > > something to Just Do[TM].
> > >=20
> > > I believe there is actually a key part of this discussion to have a=
t
> > > Kernel Summit.  We don't need to discuss the technical details of t=
he
> > > implementation; we do need to discuss the implications of enabling =
mass
> > > oops-reporting, the infrastructure and information we want to inclu=
de in
> > > codes valid for the next decade or so, the tradeoffs between ease o=
f
> > > reporting and value of the reports, some potential approaches to
> > > aggregate the date, and similar.
> >=20
> > In particular, can we avoid the silly trap of the ---[cut here]--- wh=
ich
> > comes between a kernel oops, and the potentially useful messages that
> > were printed right before it.
>=20
> Also how to communicate that we usually need the first oops ?

Well, the QR code can only hold one oops anyway.  Printing the code for
the first should be pretty simple to implement.

thx,

Jason.
