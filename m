Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 166A04C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 19:43:36 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 15D7820326
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 19:43:34 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Thu, 08 May 2014 22:00:14 +0200
Message-ID: <2386707.ZbPgSdVt2i@vostro.rjw.lan>
In-Reply-To: <CAErSpo4rBTrRrH4+2QRa+EPrQ6fBsOs+UDKxPAuckUZ9dfLykQ@mail.gmail.com>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<CAErSpo4rBTrRrH4+2QRa+EPrQ6fBsOs+UDKxPAuckUZ9dfLykQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Device error handling /
	reporting / isolation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thursday, May 08, 2014 12:03:39 PM Bjorn Helgaas wrote:
> On Thu, May 8, 2014 at 6:37 AM, David Woodhouse <dwmw2@infradead.org>=
 wrote:
> > I'd like to have a discussion about handling device errors.
> >
> > IOMMUs are becoming more common, and we've seen some failure modes =
where
> > we just end up with an endless stream of fault reports from a given=

> > device, and the kernel can do nothing else.
> >
> > We may have various options for shutting it up =E2=80=94 a PCI func=
tion level
> > reset, power cycling the offending device, or maybe just configurin=
g the
> > IOMMU to *ignore* further errors from it, which would at least let =
the
> > system get on with doing something useful (and if we do, when do we=

> > re-enable reporting?).
> >
> > But I absolutely don't want us to be implementing policies like tha=
t in
> > an individual IOMMU driver; this needs to be handled by generic dev=
ice
> > code. Once upon a time I might have said PCI code, but this is actu=
ally
> > relevant for non-PCI devices too.
> >
> > I want the IOMMU to report errors, and let the system do the approp=
riate
> > thing. Which requires some discussion about what the "appropriate t=
hing"
> > can be in various circumstances, and indeed what options are availa=
ble
> > to us on various platforms.
>=20
> I'm interested in this discussion, too.

Yes, me too.

--=20
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
