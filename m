Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1D8B18A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Jul 2018 17:38:36 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AD8D7790
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Jul 2018 17:38:35 +0000 (UTC)
Date: Sat, 14 Jul 2018 19:38:12 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Willy Tarreau <w@1wt.eu>
Message-ID: <20180714173812.xhfwtcijlxebmn2k@devuan>
References: <20180501163818.GD1468@sasha-vm> <20180501194450.GD10479@thunk.org>
	<20180501200019.GA7397@sasha-vm> <20180501205448.GE10479@thunk.org>
	<20180501220228.GD7397@sasha-vm> <20180502043017.GA11938@1wt.eu>
	<20180502194139.GA18390@sasha-vm> <20180502200229.GA12729@1wt.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20180502200229.GA12729@1wt.eu>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi!

> > The way I see it, if a commit can get one or two tested-by, it's a good
> > alternative to a week in -next.
>=20
> Agreed. Even their own actually. And I'm not kidding. Those who run large
> amounts of tests on certain patches could really mention is in tested-by,
> as opposed to the most common cases where the code was just regularly
> tested.

Actually, it would be cool to get "Tested: no" and "Tested: compile"
tags in the commit mesages. Sometimes it is clear from the context
that patch was not tested (treewide update of time to 64bit), but
sometime it is not.

This is especially problem for -stable, as it seems that lately
patches are backported from new version without any testing.
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html
