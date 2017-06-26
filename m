Return-Path: <tony@atomide.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E147EAD6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 13:49:08 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 376D81B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 13:49:08 +0000 (UTC)
Date: Mon, 26 Jun 2017 06:49:04 -0700
From: Tony Lindgren <tony@atomide.com>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20170626134904.GH23064@atomide.com>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626064947.GF23064@atomide.com> <20170626111207.GA11688@amd>
	<20170626114931.GG23064@atomide.com> <20170626131401.GA11980@amd>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20170626131401.GA11980@amd>
Cc: Sebastian Reichel <sebastian.reichel@collabora.co.uk>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

* Pavel Machek <pavel@ucw.cz> [170626 06:14]:
> Hi!
>=20
> > > > > On Sun, Jun 25 2017, Pavel Machek wrote:
> > > > > > Situation around mobile phones is only improving very slowly. W=
e now
> > > > > > have hardware that is supported in the mainline kernel in usefu=
l way
> > > > > > (Mitac Mio A701, Nokia N900, N9, N950). Graphics acceleration i=
s still
> > > > > > missing.
> > > >=20
> > > > Also droid 4 should be getting there eventually too with 3G data wo=
rking
> > > > and audio driver in progress.
> > >=20
> > > Yes, good luck with Droid 4 getting there.=20
> >=20
> > Well actually it's sort of already there for some use cases as it's been
> > usable for me for about a month as a low-power laptop/ssh terminal with
> > Linux next and lapdock or hdmi dock :) Typing away with kernel
> > 4.12.0-rc6-next-20170622 right now.
>=20
> Do you have X running in useful configuration?

Yeah for most part I'm using X with HDMI, LCD works but there are six
out of tree omapdrm patches that need more work similar to n950. Also
the LCD backlight patch is also still pending.

> > Personally I just stick to standard mainline kernel and standard
> > distros so problem solved for me by limiting my use cases..
>=20
> Well, I'm currently doing the same. On N900, I have X running (miss
> right button on the touchscreen, and 800x480 is a bit small),
> gprs/edge/umts data working, so I have usable ssh and web
> browser. (But bufferbloat is ugly and reconnections are not handled
> well). SMSes work. WIFI works (with exception of networkmanager). GPS
> is usable. Camera is useful, including autofocus, but limited to
> 1.2MPix. It lasts for a "day" which is good enough.

OK to get to that point droid 4 still needs audio calls, camera,
and GPS at least. And PM needs more work. For reference, Sebastian
Reichel has pretty good mainline driver status matrix for both n900
and droid 4 on his website.

> Biggest problem I have now is poor quality of audio calls... Fixing
> that would enable me to make it my primary phone...

That's with HSI modems, right?

Regards,

Tony
