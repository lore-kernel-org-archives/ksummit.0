Return-Path: <heiko@sntech.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F286747F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 Jul 2015 14:21:32 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [95.129.55.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2F374136
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 Jul 2015 14:21:27 +0000 (UTC)
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Thu, 30 Jul 2015 16:21:24 +0200
Message-ID: <3889421.xHYd3fi1mh@diego>
In-Reply-To: <1438264121.2229.11.camel@HansenPartnership.com>
References: <20436.1438090619@warthog.procyon.org.uk>
	<1438243737.26511.114.camel@infradead.org>
	<1438264121.2229.11.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, mcgrof@gmail.com,
	jkkm@jkkm.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Am Donnerstag, 30. Juli 2015, 06:48:41 schrieb James Bottomley:
> On Thu, 2015-07-30 at 09:08 +0100, David Woodhouse wrote:
> > On Wed, 2015-07-29 at 16:39 -0700, James Bottomley wrote:
> > > On Wed, 2015-07-29 at 18:32 +0100, David Woodhouse wrote:
> > > > ... as well as contradicting its explicit statement that its in=
tention
> > > > is to "control the distribution of derivative OR COLLECTIVE WOR=
KS".
> > >=20
> > > That quote loses the last important piece; that paragraph, which =
I'll
> > > quote in full
> > >=20
> > >         Thus, it is not the intent of this section to claim right=
s or
> > >         contest your rights to work written entirely by you; rath=
er, the
> > >         intent is to exercise the right to control the distributi=
on of
> > >         derivative or collective works based on the Program.
> > >=20
> > > says that no additional rights over pieces that were written by a=
nother
> > > (in this case a firmware provider) and are not based on the Progr=
am are
> > > claimed.  That rather supports the idea that the extent of the li=
cense
> > > attachment is limited to derivation.
> >=20
> > The more conventional interpretation of that paragraph =E2=80=94 th=
e
> > interpretation which *doesn't* require us to believe that the GPL
> > wasted all those words *explicitly* talking about things which are =
"not
> > derived from the Program, and can be reasonably considered independ=
ent
> > and separate works in themselves", only to contradict itself and sa=
y
> > "haha just joking; *ALL* aggregation is fine" =E2=80=94 is that thi=
s is the GPL
> > clarifying how it operates within the constraints of copyright law.=

> >=20
> > There is a common =E2=80=94 though bogus =E2=80=94 complaint about =
the 'infectious'
> > nature of the GPL, which goes along the lines of "how can they requ=
ire
> > that I publish the source code to the bits that *I* wrote. Copyrigh=
t
> > law gives them no rights over *my* code".
> >=20
> > The paragraph you cite above is more reasonably interpreted as a
> > clarification that the GPL isn't claiming any *rights* over your ow=
n
> > separate works, and that it merely operates by withholding permissi=
on
> > to use the *GPL'd* part in that context.
> >=20
> > But again, I'm not requiring that you publicly accept this point of=

> > view. There is plenty of scope for debate, and it's not impossible =
that
> > a court *could* uphold your interpretation and effectively just del=
ete
> > the paragraphs of the GPL that you don't like.
> >=20
> > All I'm asking is that you stop making the bogus claim that yours i=
s
> > the *only* possible interpretation. It isn't even the sanest one.
>=20
> OK, let us suppose for the sake of argument that this is correct and =
the
> GPL does manage to get extended to non derived included projects.  Ev=
en
> in that case, we're not causing any corporate legal jeopardy because =
of
> the principle of estoppel. Estoppel says we cannot accuse someone of
> breaching our licence for something we also did.  So if we ship the
> firmware with the kernel, anyone else also shipping firmware with the=

> kernel is automatically innoculated against accusations of license
> breach for that action.

Which may or may not be true in all jurisdictions. Aka in germany gpl=20=

violation suits most of the time take up device vendors, not the non-eu=
ropean=20
soc vendor who violated the license originally.


Also what about the termination clause? According to [0] =C2=A74 says s=
omething=20
along the lines of "Under v2, violators forfeit their rights to redistr=
ibute=20
and modify the GPL=E2=80=99d software until those rights are explicitly=
 reinstated by=20
the copyright holder."

So while they may not be sued, they probably still also don't get the=20=

redistribution and modification rights?


[0] https://softwarefreedom.org/resources/2008/compliance-guide.html
