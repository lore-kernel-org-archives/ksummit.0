Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 37F591BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 10 Jul 2016 02:10:55 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 0A3B2E1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 10 Jul 2016 02:10:53 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Date: Sun, 10 Jul 2016 04:15:34 +0200
Message-ID: <146834264.pgPOSbOmkO@vostro.rjw.lan>
In-Reply-To: <1468115770.2333.15.camel@HansenPartnership.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Cc: Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sunday, July 10, 2016 10:56:10 AM James Bottomley wrote:
> On Sun, 2016-07-10 at 01:43 +0000, Trond Myklebust wrote:
> > > On Jul 9, 2016, at 21:34, James Bottomley <
> > > James.Bottomley@HansenPartnership.com> wrote:
> > >=20
> > > [duplicate ksummit-discuss@ cc removed]
> > > On Sat, 2016-07-09 at 15:49 +0000, Trond Myklebust wrote:
> > > > > On Jul 9, 2016, at 06:05, James Bottomley <
> > > > > James.Bottomley@HansenPartnership.com> wrote:
> > > > >=20
> > > > > On Fri, 2016-07-08 at 17:43 -0700, Dmitry Torokhov wrote:
> > > > > > On Sat, Jul 09, 2016 at 02:37:40AM +0200, Rafael J. Wysocki=

> > > > > > wrote:
> > > > > > > I tend to think that all known bugs should be fixed, at
> > > > > > > least=20
> > > > > > > because once they have been fixed, no one needs to rememb=
er
> > > > > > > about them any more. :-)
> > > > > > >=20
> > > > > > > Moreover, minor fixes don't really introduce regressions
> > > > > > > that
> > > > > > > often
> > > > > >=20
> > > > > > Famous last words :)
> > > > >=20
> > > > > Actually, beyond the humour, the idea that small fixes don't=20=

> > > > > introduce regressions must be our most annoying anti-pattern.=
=20
> > > > >  The=20
> > > > > reality is that a lot of so called fixes do introduce bugs.=20=

> > > > >  The=20
> > > > > way this happens is that a lot of these "obvious" fixes go
> > > > > through=20
> > > > > without any deep review (because they're obvious, right?) and=

> > > > > the=20
> > > > > bugs noisily turn up slightly later.  The way this works is
> > > > > usually=20
> > > > > that some code rearrangement is sold as a "fix" and later tur=
ns
> > > > > out=20
> > > > > not to be equivalent to the prior code ... sometimes in
> > > > > incredibly=20
> > > > > subtle ways. I think we should all be paying much more than l=
ip
> > > > > service to the old adage "If it ain't broke don't fix it=E2=80=
=9D.
> > > >=20
> > > > The main problem with the stable kernel model right now is that=

> > > > we
> > > > have no set of regression tests to apply. Unless someone goes i=
n
> > > > and
> > > > actually tests each and every stable kernel affected by that =E2=
=80=9CCc:
> > > > stable=E2=80=9D line, then regressions will eventually happen.
> > > >=20
> > > > So do we want to have another round of =E2=80=9Chow do we regre=
ssion test
> > > > the
> > > > kernel=E2=80=9D talks?
> > >=20
> > > If I look back on our problems, they were all in device drivers, =
so
> > > generic regression testing wouldn't have picked them up, in fact
> > > most
> > > would need specific testing on the actual problem device.  So, I
> > > don't
> > > really think testing is the issue, I think it's that we commit wa=
y
> > > too
> > > many "obvious" patches.  In SCSI we try to gate it by having a
> > > mandatory Reviewed-by: tag before something gets in, but really
> > > perhaps
> > > we should insist on Tested-by: as well ... that way there's some
> > > guarantee that the actual device being modified has been tested.
> >=20
> > That guarantees that it has been tested on the head of the kernel
> > tree, but it doesn=E2=80=99t really tell you much about the behavio=
ur when it
> > hits the stable trees.
>=20
> The majority of stable regressions are actually patches with subtle
> failures even in the head, so testing on the head properly would have=

> eliminated them.

You really sound like you had some statistics on -stable regressions ha=
ndy,
but is it the case?

The above is my impression too, but then I'm not sure how accurate it i=
s.

> I grant there are some problems where the backport
> itself is flawed but the head works (usually because of missing
> intermediate stuff) but perhaps by insisting on a Tested-by: before
> backporting, we can at least eliminate a significant fraction of
> regressions.

It also depends on how much time it takes for the bug to show up.

For example, if you fixed a bug that's 100% reproducible, but you intro=
duced
another one that happens once in a blue moon in the same commit, it may=
 not
be frequent enough to be caught before the commit goes into -stable.

> >  What I=E2=80=99m saying is that we really want some form of unit t=
esting
> > that can be run to perform a minimal validation of the patch when i=
t
> > hits the older tree.
> >=20
> > Even device drivers have expected outputs for a given input that ca=
n
> > be validated through unit testing.
>=20
> Without the actual hardware, this is difficult ...

Right.

Thanks,
Rafael
