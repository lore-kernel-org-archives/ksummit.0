Return-Path: <SRS0=+gHD=LT=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7803116C2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 17:33:39 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E5DA27C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 17:33:38 +0000 (UTC)
Date: Wed, 5 Sep 2018 13:33:36 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20180905133336.0d2be162@gandalf.local.home>
In-Reply-To: <1536165561.3627.15.camel@HansenPartnership.com>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<1536141525.8121.2.camel@HansenPartnership.com>
	<20180905104700.GE9781@sirena.org.uk>
	<6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
	<nycvar.YFH.7.76.1809051437300.15880@cbobk.fhfr.pm>
	<1536165561.3627.15.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 05 Sep 2018 17:39:21 +0100
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

> > Just randomly scrolling through those, I am wondering how at least
> >=20
> > 	7797167ffde1f00446301cb22b37b7c03194cfaf
> > 	3b885ac1dc35b87a39ee176a6c7e2af9c789d8b8
> >=20
> > made it past any stable tree acceptance criteria.
> >=20
> > They are memory ordering changes (so exactly area which is generally=C2=
=A0
> > fragile by itself and the risk of regressions simply can't be
> > completely=C2=A0ignored), yet they fix absolutely no functional issue.
> >=20
> > In addition to that, they all exist upstream only for one single -rc,
> > so=C2=A0the public testing exposure is also currently minimal.
> >=20
> > Yeah, I know I know, those are parisc, so noone cares anyway :P but
> > that's=C2=A0really just the first randomly chosen kernel, with a small
> > number of=C2=A0patches, and still 10% of them are something we'd not wa=
nt
> > to put into an=C2=A0enterprise distro kernel without a lot of
> > justification and regression=C2=A0testing. =20
>=20
> [puts PA-RISC hat on]
>=20
> The maintainers believe these two patches will fix a persistent
> segmentation fault problem that's blocking forward progress on the
> debian parisc port.  So, given the parisc specificity of the patches
> and the maintainer input, I very much think they fit the criteria.

But the change logs don't mention anything about that. The only thing
the change logs talk about is that this has performance improvements.
Was this info embargoed for some reason?

-- Steve
