Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CA267AEB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 May 2014 22:52:53 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 03B0C1FFF3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 May 2014 22:52:52 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 28 May 2014 01:09:58 +0200
Message-ID: <5297416.ffi1RyGs7d@vostro.rjw.lan>
In-Reply-To: <CALCETrVbGotFDSniVMDfYdP7EbQ0JQ04M1ypA9KYbQRzZ4AiQQ@mail.gmail.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CALCETrVbGotFDSniVMDfYdP7EbQ0JQ04M1ypA9KYbQRzZ4AiQQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tuesday, May 27, 2014 03:43:00 PM Andy Lutomirski wrote:
> On Tue, May 27, 2014 at 3:57 PM, Rafael J. Wysocki <rjw@rjwysocki.net=
> wrote:
> > On Tuesday, May 27, 2014 07:27:06 PM Luk=C3=A1=C5=A1 Czerner wrote:=

> >> On Sat, 24 May 2014, Wolfram Sang wrote:
> >
> > [cut]
> >
> >> >
> >> > Paid reviewers/maintainers (selected people, no hiring offers). =
The
> >> > number of developers increases faster than the number of quality=

> >> > keepers. So, the latter should be given the chance to focus on i=
t, if
> >> > they want to.
> >>
> >> That does not make much sense to me. In order to review the code y=
ou
> >> need to understand it and if you already understand the code, you
> >> can write it as well. I do not think that having dedicated reviewe=
rs
> >> is realistic in the long run.
> >
> > That's correct and dedicated reviewers who don't really write code =
will
> > become less and less reliable over time.  So they will have to be p=
eople
> > who actively work on the code *and* review patch submissions from o=
ther
> > developers.
> >
> >> However encouraging reviewers by treating reviewed-by tag with equ=
al
> >> "respect" as signed-off-by seems like the better way.
> >
> > I would even argue that it should be treated more seriously than si=
gn-offs.
> > After all, there are more patches applied (and all of them are sign=
ed-off
> > by at least one person) than there are commits with the Reviewed-by=
 tag.
>=20
> Does Signed-off-by mean something different from "I affirm what the
> DCO says" these days?

Formally - no, I don't think so.  Practically, though, I'm expecting pe=
ople
who send me patches with their sign-offs to at least stay around for so=
me time
to fix issues related to their changes.

Rafael
