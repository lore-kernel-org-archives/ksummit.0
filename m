Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 255F5D6C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 11:37:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2076B764
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 11:37:53 +0000 (UTC)
Date: Wed, 19 Sep 2018 08:37:49 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20180919083749.49268562@coco.lan>
In-Reply-To: <1537356482.4640.7.camel@HansenPartnership.com>
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	<1537279328.3424.6.camel@HansenPartnership.com>
	<20180918162948.769dda1d@coco.lan>
	<1537356482.4640.7.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC FOR KS] CoC and Linus
 position (perhaps undocumented/closed/limited/invite session)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Wed, 19 Sep 2018 07:28:02 -0400
James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:

> On Tue, 2018-09-18 at 16:29 -0300, Mauro Carvalho Chehab wrote:
> > Em Tue, 18 Sep 2018 10:02:08 -0400
> > James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:
> >  =20
> > > > After the past 2-3 days I get the feeling there are maintainers
> > > > unsure about how this affects them and I think assuaging those
> > > > fears might be a good thing.
> > > >  =20
> > >=20
> > > From my perspective, which is probably fairly widespread: we're
> > > already pretty much policing the lists using a set of rules which
> > > match fairly closely to the new CoC, so there should really be no
> > > huge impact. =20
> >=20
> > After carefully reading it a couple of times, I think it has a huge
> > impact.
> >=20
> > The more immediate impact is with regards to this wording:
> >=20
> > 	"Examples of unacceptable behavior by participants include:
> > 	...
> > 	* Publishing others=E2=80=99 private information, such as a physical or
> > electronic
> > 	=C2=A0=C2=A0address, without explicit permission"
> >=20
> > When we publish a patch with a Signed-off-by, Reviewed-by, Acked-by,
> > Requested-by, Suggested-by, etc, we are actually publishing an
> > electronic address.
> >=20
> > The DCO 1.1 has an explicit clause that would allow to publish the
> > email address from the SOB's, together to its redistribution:
> >=20
> > "=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(d) I understand and agree t=
hat this project and the
> > contribution
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0are public and that a record of the contribution
> > (including all
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0personal information I submit with it, including my sign-
> > off) is
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0maintained indefinitely and may be redistributed
> > consistent with
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0this project or the open source license(s) involved."
> >=20
> > But that doesn't cover the other tags. =20
>=20
> I disagree with the strictness of the interpretation: "including all
> personal information I submit with it" covers all the other tags.
> Although the expectation is the permission was obtained by one of the
> people adding the sign off because that's how the DCO flows, which
> might be a bit wishful thinking, we've always thought that it covers
> the additional tags for the use case section (d) was created for:
> national data protection acts and if it covers that case, it surely
> covers the CoC permission case.

I see your point. Yes, that places the SOB signer's as^W backs=20
responsible for such thing.

> Additionally, as others have said, if the tag was added from
> information in the public mailing list, it's not private within the
> meaning of the CoC.=C2=A0=C2=A0I think the electronic mail example in the=
 CoC is
> simply because it's more used in a github type environment where email
> addresses are private and not necessarily part of the workflow.

If it doesn't apply, it should be removed. Legal documents with
unneeded terms only cause confusion (and this *is* a legal document - a
IMHO very badly written Contract of Adhesion - as it creates a lot of
new duties to maintainers and establishes punishment measures if the
terms of such contract are violated).

Thanks,
Mauro
