Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E9F92AB4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:15:46 +0000 (UTC)
Date: Mon, 12 May 2014 12:15:39 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: Teodora =?utf-8?B?QsSDbHXFo8SD?= <teobaluta@gmail.com>
Message-ID: <20140512161539.GX12708@titan.lakedaemon.net>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
Content-Transfer-Encoding: quoted-printable
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, May 11, 2014 at 08:52:12PM +0300, Teodora B=C4=83lu=C5=A3=C4=83 w=
rote:
> On Sun, May 11, 2014 at 8:18 PM, Levente Kurusa <levex@linux.com> wrote=
:
> > On Sun, May 11, 2014 at 06:37:47PM +0200, Laurent Pinchart wrote:
> >> On Sunday 11 May 2014 18:29:18 Levente Kurusa wrote:
> >> > On Sun, May 11, 2014 at 08:57:01AM -0700, Sarah A Sharp wrote:
> >> > > On Sat, May 10, 2014 at 9:14 PM, Jason Cooper wrote:
> >> > > > All,
> >> > > >
> >> > > > I recently came across a patch series attempting to implement =
encoding
> >> > > > kernel oops into a QR code [1].  The QR code is then dumped to=
 the
> >> > > >
> >> > > > framebuffer.  The QR code is a URL of the form:
> >> > > >   https://oops.kernel.org/?qr=3D<base64 compressed oops>
> >> > > >
> >> > > > This proposal is interesting because it fundamentally changes =
the way
> >> > > > users report bugs to the kernel community.  First and foremost=
, it makes
> >> > > > it much easier.
> >> > > >
> >> > > >   1) oops occurs
> >> > > >   2) user pulls out phone, scans QR code
> >> > > >       - at this point, the oops is recorded on the server.  No=
thing more
> >> > > >         is required of the user.
> >> >
> >> > To be precise, most scanners don't automatically open the links
> >> > found in QR codes and hence a tap/click from the user is required.=
 :-)
>=20
> That's correct, you still need a click, so maybe a special Android app
> could do the work so you don't need to turn the compressed oops into
> base64.

I'd like the URL to be valid (meaning base64 the compressed data) so
that we can get the data to the kernel.org server as easily as possible.
Making the app a requirement for reporting is too onerous for
non-developers.  I see no reason we can't link to (Open in/Install) it
on the webform though.

I see your app as a great tool for people developing the kernel or
curious about what happened, but there will be a significant number of
users who don't develop (possibly anything) who won't go to the effort
to install an app just to help us out.  Knowing how many of those folks
are affected by the bug is, imho, a very important data point when
triaging bugs.

Even though these 'users' don't talk on lkml, they *do* exist.  And they
say mean things like "Linux crashes on my $LAPTOP, it sucks."  I'd rather
not have to get a facebook account to learn that. :)

thx,

Jason.
