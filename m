Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B23089C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 10 Jul 2016 02:02:59 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id B5F17116
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 10 Jul 2016 02:02:58 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Trond Myklebust <trondmy@primarydata.com>
Date: Sun, 10 Jul 2016 04:07:39 +0200
Message-ID: <2207268.Ush7Fd4FeZ@vostro.rjw.lan>
In-Reply-To: <A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
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

On Sunday, July 10, 2016 01:43:48 AM Trond Myklebust wrote:
>=20
> > On Jul 9, 2016, at 21:34, James Bottomley <James.Bottomley@HansenPa=
rtnership.com> wrote:
> >=20
> > [duplicate ksummit-discuss@ cc removed]
> > On Sat, 2016-07-09 at 15:49 +0000, Trond Myklebust wrote:
> >>> On Jul 9, 2016, at 06:05, James Bottomley <
> >>> James.Bottomley@HansenPartnership.com> wrote:
> >>>=20
> >>> On Fri, 2016-07-08 at 17:43 -0700, Dmitry Torokhov wrote:
> >>>> On Sat, Jul 09, 2016 at 02:37:40AM +0200, Rafael J. Wysocki
> >>>> wrote:
> >>>>> I tend to think that all known bugs should be fixed, at least=20=

> >>>>> because once they have been fixed, no one needs to remember=20
> >>>>> about them any more. :-)
> >>>>>=20
> >>>>> Moreover, minor fixes don't really introduce regressions that
> >>>>> often
> >>>>=20
> >>>> Famous last words :)
> >>>=20
> >>> Actually, beyond the humour, the idea that small fixes don't=20
> >>> introduce regressions must be our most annoying anti-pattern.  Th=
e=20
> >>> reality is that a lot of so called fixes do introduce bugs.  The=20=

> >>> way this happens is that a lot of these "obvious" fixes go throug=
h=20
> >>> without any deep review (because they're obvious, right?) and the=
=20
> >>> bugs noisily turn up slightly later.  The way this works is usual=
ly=20
> >>> that some code rearrangement is sold as a "fix" and later turns o=
ut=20
> >>> not to be equivalent to the prior code ... sometimes in incredibl=
y=20
> >>> subtle ways. I think we should all be paying much more than lip=20=

> >>> service to the old adage "If it ain't broke don't fix it=E2=80=9D=
.
> >>=20
> >> The main problem with the stable kernel model right now is that we=

> >> have no set of regression tests to apply. Unless someone goes in a=
nd
> >> actually tests each and every stable kernel affected by that =E2=80=
=9CCc:
> >> stable=E2=80=9D line, then regressions will eventually happen.
> >>=20
> >> So do we want to have another round of =E2=80=9Chow do we regressi=
on test the
> >> kernel=E2=80=9D talks?
> >=20
> > If I look back on our problems, they were all in device drivers, so=

> > generic regression testing wouldn't have picked them up, in fact mo=
st
> > would need specific testing on the actual problem device.  So, I do=
n't
> > really think testing is the issue, I think it's that we commit way =
too
> > many "obvious" patches.  In SCSI we try to gate it by having a
> > mandatory Reviewed-by: tag before something gets in, but really per=
haps
> > we should insist on Tested-by: as well ... that way there's some
> > guarantee that the actual device being modified has been tested.
>=20
> That guarantees that it has been tested on the head of the kernel tre=
e,
> but it doesn=E2=80=99t really tell you much about the behaviour when =
it hits the
> stable trees. What I=E2=80=99m saying is that we really want some for=
m of unit
> testing that can be run to perform a minimal validation of the patch =
when
> it hits the older tree.
>=20
> Even device drivers have expected outputs for a given input that can =
be
> validated through unit testing.

One thing is to be able to catch problems before commits go into -stabl=
e (and
I'm all for more QA, regression testing and such if possible to arrange=
), but
also note that this has to happen in a specific time frame.  It just ca=
n't
take too much time, or the commit may miss the release it should go int=
o if
it turns out to be valid after all.

But even if all that is in place and works like charm, some bugs will n=
ot be
caught, so the next question is what to do about them.

And I'm still thinking that problematic commits should be reverted from=
 -stable
right away regardless of what the mainline is going to do with them.

Thanks,
Rafael
