Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E8C19C50
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 16:06:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 170CE798
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 16:06:35 +0000 (UTC)
Date: Wed, 19 Sep 2018 13:06:29 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20180919130629.2fd79cc5@coco.lan>
In-Reply-To: <1537366581.6816.1.camel@HansenPartnership.com>
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	<1537279328.3424.6.camel@HansenPartnership.com>
	<20180918162948.769dda1d@coco.lan>
	<1537356482.4640.7.camel@HansenPartnership.com>
	<20180919083749.49268562@coco.lan>
	<20180919090332.723c1b75@coco.lan>
	<1537366581.6816.1.camel@HansenPartnership.com>
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

Em Wed, 19 Sep 2018 10:16:21 -0400
James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:

> On Wed, 2018-09-19 at 09:03 -0300, Mauro Carvalho Chehab wrote:
> > Em Wed, 19 Sep 2018 08:37:49 -0300
> > Mauro Carvalho Chehab <mchehab+samsung@kernel.org> escreveu:
> >  =20
> > > Em Wed, 19 Sep 2018 07:28:02 -0400
> > > James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:
> > >  =20
> > > > On Tue, 2018-09-18 at 16:29 -0300, Mauro Carvalho Chehab wrote: =20
> > > > > Em Tue, 18 Sep 2018 10:02:08 -0400
> > > > > James Bottomley <James.Bottomley@HansenPartnership.com>
> > > > > escreveu:
> > > > > =C2=A0=C2=A0 =20
> > > > > > > After the past 2-3 days I get the feeling there are
> > > > > > > maintainers unsure about how this affects them and I think
> > > > > > > assuaging those fears might be a good thing.
> > > > > > > =C2=A0=C2=A0 =20
> > > > > >=20
> > > > > > From my perspective, which is probably fairly widespread:
> > > > > > we're already pretty much policing the lists using a set of
> > > > > > rules which match fairly closely to the new CoC, so there
> > > > > > should really be no huge impact.=C2=A0=C2=A0 =20
> > > > >=20
> > > > > After carefully reading it a couple of times, I think it has a
> > > > > huge impact.
> > > > >=20
> > > > > The more immediate impact is with regards to this wording:
> > > > >=20
> > > > > 	"Examples of unacceptable behavior by participants
> > > > > include:
> > > > > 	...
> > > > > 	* Publishing others=E2=80=99 private information, such as a
> > > > > physical or electronic
> > > > > 	=C2=A0=C2=A0address, without explicit permission"
> > > > >=20
> > > > > When we publish a patch with a Signed-off-by, Reviewed-by,
> > > > > Acked-by, Requested-by, Suggested-by, etc, we are actually
> > > > > publishing an electronic address.
> > > > >=20
> > > > > The DCO 1.1 has an explicit clause that would allow to publish
> > > > > the email address from the SOB's, together to its
> > > > > redistribution:
> > > > >=20
> > > > > "=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(d) I understand and a=
gree that this project and the
> > > > > contribution
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0are public and that a record of the contribution
> > > > > (including all
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0personal information I submit with it, including my
> > > > > sign-off) is
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0maintained indefinitely and may be redistributed
> > > > > consistent with
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0this project or the open source license(s)
> > > > > involved."
> > > > >=20
> > > > > But that doesn't cover the other tags.=C2=A0=C2=A0 =20
> > > >=20
> > > > I disagree with the strictness of the interpretation: "including
> > > > all personal information I submit with it" covers all the other
> > > > tags. Although the expectation is the permission was obtained by
> > > > one of the people adding the sign off because that's how the DCO
> > > > flows, which might be a bit wishful thinking, we've always
> > > > thought that it covers the additional tags for the use case
> > > > section (d) was created for: national data protection acts and if
> > > > it covers that case, it surely covers the CoC permission case. =20
> > >=20
> > > I see your point. Yes, that places the SOB signer's as^W backs=C2=A0
> > > responsible for such thing.
> > >  =20
> > > > Additionally, as others have said, if the tag was added from
> > > > information in the public mailing list, it's not private within
> > > > the meaning of the CoC.=C2=A0=C2=A0I think the electronic mail exam=
ple in
> > > > the CoC is simply because it's more used in a github type
> > > > environment where email addresses are private and not necessarily
> > > > part of the workflow. =20
> > >=20
> > > If it doesn't apply, it should be removed. Legal documents with
> > > unneeded terms only cause confusion (and this *is* a legal document
> > > - a =20
> >=20
> > In time:
> > 	and this *is* a legal document -> I believe that this is a
> > legal document
> >=20
> > I'm actually waiting for a legal advice about this under US laws.
> > Under Brazilian laws (and probably other civil law system), I'm
> > almost sure it is a contract - if this is a valid or a void one has
> > yet to be seen. =20
>=20
> OK, I can't disagree with this.  It does definitely impose obligations
> that are legally meaningful.  However ...
>=20
> > > IMHO very badly written Contract of Adhesion - as it creates a lot
> > > of new duties to maintainers and establishes punishment measures if
> > > the terms of such contract are violated). =20
>=20
> I can't disagree with that either.  Unfortunately, most codes of
> conduct are definitely badly written from a legal point of view because
> they're usually constructed by non-lawyers without any legal input.=20
> I'm not very keen on this one because, as I said somewhere upthread, it
> doesn't cover a lot of our problem areas.  However, it's not the worst
> I've seen.

Well, we don't need to stick with it. If it has solvable problems,
they should be fixed. Otherwise, better to revert this patch and keep
using the old CoC, where the major ideas are already covered, but with
a language that won't cause too much legal problems.

Every time I read the new CoC I become more convinced that it is
utter crap (can I say it with this new Coc?). The email address
issue is just the tip of the iceberg.

> To your specific concern, run this thought experiment with me:=20
> Supposing instead of =C2=A0"Publishing others=E2=80=99 private informatio=
n, such as
> a physical or electronic address, without explicit permission", it had
> said "publishing others non-public information ...." (sorry had to
> correct the misplaced apostrophe as well).  I think you can agree with
> me that an email address already sent to the list cannot be non-public,=20
> since it's already been disclosed by the sender in a public forum.  So
> with that form of wording it would cover the tags use case, right?
>=20
> Now let me point out that from a US legal point of view, "non-public"
> encompasses a broader range of things than "private", so anything
> that's private is also non-public but not everything that's non-public
> is also private.  Thus the original wording is actually a narrower duty
> which is a strict subset of the form of wording I asked you to
> consider.  Thus, I still don't think our use of tags resulting from
> public email exchanges can be in any way construed as a violation of
> the privacy duty imposed by the CoC.

I understand your point, but the concept of "public/non-public",
"private", "personal information", etc actually depends on how it
is defined. It should either be clearly stated or the document,=20
or whatever the legislation says would be valid (or judge's mind).

I suspect that, in US, the concept of non-public and private can
even vary from state to state, or even from district to district,
as local legislators may have approved laws defining it for
electronic communications. It is even worse if we consider other
Countries with a different ruleset.

That's why, on most legal contracts there are clauses that specify
what it actually cover, instead of too broader terms like the ones
used on this CoC.

For example LF web site privacy policy - with very likely it was
written by some lawyers[1] states that e-mail addresses are=20
Personal information.

[1] https://www.linuxfoundation.org/privacy/

At the "Sharing of Personal Information" chapter, it then defines
a concept of "Publicly Available Information", saying that those
can be disclosed.

-

What I'm trying to say that, while I'm fine with the idea of having
a CoC, it should either be prepared by someone that understands
what legal impacts it will cause (e. g. some lawyers that understands
open source), or it shouldn't be adding stuff that will just cause
more evil than good.

See, the points that this new CoC tries to address (on a very bad
way) were already covered by the past CoC:

-Code of Conflict
-----------------
-
-The Linux kernel development effort is a very personal process compared
-to "traditional" ways of developing software.  Your code and ideas
-behind it will be carefully reviewed, often resulting in critique and
-criticism.  The review will almost always require improvements to the
-code before it can be included in the kernel.  Know that this happens
-because everyone involved wants to see the best possible solution for
-the overall success of Linux.  This development process has been proven
-to create the most robust operating system kernel ever, and we do not
-want to do anything to cause the quality of submission and eventual
-result to ever decrease.
-
-If however, anyone feels personally abused, threatened, or otherwise
-uncomfortable due to this process, that is not acceptable.  If so,
-please contact the Linux Foundation's Technical Advisory Board at
-<tab@lists.linux-foundation.org>, or the individual members, and they
-will work to resolve the issue to the best of their ability.  For more
-information on who is on the Technical Advisory Board and what their
-role is, please see:
-
-	- http://www.linuxfoundation.org/projects/linux/tab
-
-As a reviewer of code, please strive to keep things civil and focused on
-the technical issues involved.  We are all humans, and frustrations can
-be high on both sides of the process.  Try to keep in mind the immortal
-words of Bill and Ted, "Be excellent to each other."

The old one doesn't prevent using Reviewed-by/Acked-by/... tags.

It also doesn't turn maintainers into baby sitters, making them
accountable for any bad behavior on every place where a member
of the community misbehaves.

Thanks,
Mauro
