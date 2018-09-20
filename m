Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 08324FD7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 00:01:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 208C47D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 00:01:28 +0000 (UTC)
Date: Wed, 19 Sep 2018 21:01:22 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <20180919210122.694bf4a3@coco.lan>
In-Reply-To: <CAPM=9tyrsJx5oaY-umNAmNDGUAFQWQ-dmh=FdsOUEQynr_yqjg@mail.gmail.com>
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	<1537279328.3424.6.camel@HansenPartnership.com>
	<20180918162948.769dda1d@coco.lan>
	<1537356482.4640.7.camel@HansenPartnership.com>
	<20180919083749.49268562@coco.lan>
	<20180919090332.723c1b75@coco.lan>
	<1537366581.6816.1.camel@HansenPartnership.com>
	<20180919165552.0f30bbef@coco.lan>
	<CAPM=9tyrsJx5oaY-umNAmNDGUAFQWQ-dmh=FdsOUEQynr_yqjg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

Em Thu, 20 Sep 2018 06:23:05 +1000
Dave Airlie <airlied@gmail.com> escreveu:

> On Thu, 20 Sep 2018 at 05:56, Mauro Carvalho Chehab
> <mchehab+samsung@kernel.org> wrote:
> >
> > Em Wed, 19 Sep 2018 10:16:21 -0400
> > James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:
> > =20
> > > On Wed, 2018-09-19 at 09:03 -0300, Mauro Carvalho Chehab wrote: =20
> > > > Em Wed, 19 Sep 2018 08:37:49 -0300
> > > > Mauro Carvalho Chehab <mchehab+samsung@kernel.org> escreveu:
> > > > =20
> > > > > Em Wed, 19 Sep 2018 07:28:02 -0400
> > > > > James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:
> > > > > =20
> > > > > > On Tue, 2018-09-18 at 16:29 -0300, Mauro Carvalho Chehab wrote:=
 =20
> > > > > > > Em Tue, 18 Sep 2018 10:02:08 -0400
> > > > > > > James Bottomley <James.Bottomley@HansenPartnership.com>
> > > > > > > escreveu:
> > > > > > > =20
> > > > > > > > > After the past 2-3 days I get the feeling there are
> > > > > > > > > maintainers unsure about how this affects them and I think
> > > > > > > > > assuaging those fears might be a good thing.
> > > > > > > > > =20
> > > > > > > >
> > > > > > > > From my perspective, which is probably fairly widespread:
> > > > > > > > we're already pretty much policing the lists using a set of
> > > > > > > > rules which match fairly closely to the new CoC, so there
> > > > > > > > should really be no huge impact. =20
> > > > > > >
> > > > > > > After carefully reading it a couple of times, I think it has a
> > > > > > > huge impact.
> > > > > > >
> > > > > > > The more immediate impact is with regards to this wording:
> > > > > > >
> > > > > > >       "Examples of unacceptable behavior by participants
> > > > > > > include:
> > > > > > >       ...
> > > > > > >       * Publishing others=E2=80=99 private information, such =
as a
> > > > > > > physical or electronic
> > > > > > >         address, without explicit permission"
> > > > > > >
> > > > > > > When we publish a patch with a Signed-off-by, Reviewed-by,
> > > > > > > Acked-by, Requested-by, Suggested-by, etc, we are actually
> > > > > > > publishing an electronic address.
> > > > > > >
> > > > > > > The DCO 1.1 has an explicit clause that would allow to publish
> > > > > > > the email address from the SOB's, together to its
> > > > > > > redistribution:
> > > > > > >
> > > > > > > "       (d) I understand and agree that this project and the
> > > > > > > contribution
> > > > > > >             are public and that a record of the contribution
> > > > > > > (including all
> > > > > > >             personal information I submit with it, including =
my
> > > > > > > sign-off) is
> > > > > > >             maintained indefinitely and may be redistributed
> > > > > > > consistent with
> > > > > > >             this project or the open source license(s)
> > > > > > > involved."
> > > > > > >
> > > > > > > But that doesn't cover the other tags. =20
> > > > > >
> > > > > > I disagree with the strictness of the interpretation: "including
> > > > > > all personal information I submit with it" covers all the other
> > > > > > tags. Although the expectation is the permission was obtained by
> > > > > > one of the people adding the sign off because that's how the DCO
> > > > > > flows, which might be a bit wishful thinking, we've always
> > > > > > thought that it covers the additional tags for the use case
> > > > > > section (d) was created for: national data protection acts and =
if
> > > > > > it covers that case, it surely covers the CoC permission case. =
=20
> > > > >
> > > > > I see your point. Yes, that places the SOB signer's as^W backs
> > > > > responsible for such thing.
> > > > > =20
> > > > > > Additionally, as others have said, if the tag was added from
> > > > > > information in the public mailing list, it's not private within
> > > > > > the meaning of the CoC.  I think the electronic mail example in
> > > > > > the CoC is simply because it's more used in a github type
> > > > > > environment where email addresses are private and not necessari=
ly
> > > > > > part of the workflow. =20
> > > > >
> > > > > If it doesn't apply, it should be removed. Legal documents with
> > > > > unneeded terms only cause confusion (and this *is* a legal docume=
nt
> > > > > - a =20
> > > >
> > > > In time:
> > > >     and this *is* a legal document -> I believe that this is a
> > > > legal document
> > > >
> > > > I'm actually waiting for a legal advice about this under US laws.
> > > > Under Brazilian laws (and probably other civil law system), I'm
> > > > almost sure it is a contract - if this is a valid or a void one has
> > > > yet to be seen. =20
> > >
> > > OK, I can't disagree with this.  It does definitely impose obligations
> > > that are legally meaningful.  However ... =20
>=20
> A legal document would mean there were legal repercussions for
> violating it, like violating copyright laws or getting fired for
> violating your employment contract.
>=20
> This doesn't seem to stand on that, this is a set of guidelines for
> how a community should act.=20

The previous CoC were a set of guidelines. That's not the case of
this one anymore. It has a legal language, defining a mediation forum
(TAB), improper conducts, penalties, scope, responsibilities, etc.

> The people interpreting the document are
> members of the community that we in theory trust (via TAB elections).

My view is that, the way it is, if someone is not happy with TAB
decisions, it can use CoC to fill a suit in court. If this happens,
I suspect that it will turn very badly, as the improper conducts
are too wide. The ones that will be hurt are the maintainers
(as about half of the document is about duties and penalties to
maintainers).

I don't see there a single word about penalties for false claims.

> These are examples of things that cause problems, and guidelines to
> follow to avoid bad behaviours, but the intent still matters at the
> end of the day. If someone complains you accidentally tagged their
> email, the people on the complaints review will figure that out.
>=20
> It's funny we don't really have this problem with the drm so far, due
> to mainly group maintainership. If someone sends me a private email
> unless it's a security issue, I ask them to resend it to the public
> lists and/or use a public bugzilla, before I action it. This ensures
> that members of group teams can engage as a group instead of one
> maintainer having the primary inbox load.
>=20
> I've no objections to clarifying this sort of thing and I think it's
> important that we do, but trying to turn this document into something
> like an legal employment contract isn't going to be helpful.

I'm actually in favor of the opposite: to remove everything that looks
like a legal contract.

Something like the patch below.

PS. It incorporates Tony's suggestions, with an addition with regards
to IRC public channels. It is not common, but sometimes we give
credits on some patches from people that commented on IRC chats,
and that sometimes we don't know their emails.

I opted to not realign the document, in order to make easier to review.

Thanks,
Mauro

diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/proc=
ess/code-of-conduct.rst
index ab7c24b5478c..aa763c51f421 100644
--- a/Documentation/process/code-of-conduct.rst
+++ b/Documentation/process/code-of-conduct.rst
@@ -30,50 +30,48 @@ Examples of unacceptable behavior by participants inclu=
de:
   advances
 * Trolling, insulting/derogatory comments, and personal or political attac=
ks
 * Public or private harassment
-* Publishing others=E2=80=99 private information, such as a physical or el=
ectronic
-  address, without explicit permission
+* Publishing others' private information, such as a physical or electronic
+  address[1], without explicit permission
 * Other conduct which could reasonably be considered inappropriate in a
   professional setting
=20
+[1] Note that electronic addresses used on public mailing lists and public
+IRC channels associated with the Kernel community are not considered to be
+private information and can (in fact should) be used to give credit in
+Reported-by, Acked-by, Tested-by etc. tags.
=20
 Our Responsibilities
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
 Maintainers are responsible for clarifying the standards of acceptable beh=
avior
-and are expected to take appropriate and fair corrective action in respons=
e to
+and are asked to take appropriate and fair corrective action in response to
 any instances of unacceptable behavior.
=20
-Maintainers have the right and responsibility to remove, edit, or reject
-comments, commits, code, wiki edits, issues, and other contributions that =
are
+Maintainers have the right to remove, edit, or reject
+comments, commits, code, wiki edits, issues and other contributions that a=
re
 not aligned to this Code of Conduct, or to ban temporarily or permanently =
any
 contributor for other behaviors that they deem inappropriate, threatening,
-offensive, or harmful.
+offensive or harmful.
=20
 Scope
 =3D=3D=3D=3D=3D
=20
 This Code of Conduct applies both within project spaces and in public spac=
es
-when an individual is representing the project or its community. Examples =
of
-representing a project or community include using an official project e-ma=
il
-address, posting via an official social media account, or acting as an app=
ointed
-representative at an online or offline event. Representation of a project =
may be
+when an individual is representing the project or its community. It also
+applies to e-mails using kernel.org address. Representation of a project m=
ay be
 further defined and clarified by project maintainers.
=20
 Enforcement
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
-Instances of abusive, harassing, or otherwise unacceptable behavior may be
+Instances of abusive, harassing, or otherwise unacceptable behavior should=
 be
 reported by contacting the Technical Advisory Board (TAB) at
 <tab@lists.linux-foundation.org>. All complaints will be reviewed and
 investigated and will result in a response that is deemed necessary and
-appropriate to the circumstances. The TAB is obligated to maintain
-confidentiality with regard to the reporter of an incident.  Further detai=
ls of
+appropriate to the circumstances. The TAB will maintain
+confidentiality with regards to the reporter of an incident. Further detai=
ls of
 specific enforcement policies may be posted separately.
=20
-Maintainers who do not follow or enforce the Code of Conduct in good faith=
 may
-face temporary or permanent repercussions as determined by other members o=
f the
-project=E2=80=99s leadership.
-
 Attribution
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
