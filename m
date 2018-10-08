Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3B9997C2A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 19:49:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A82D77E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 19:49:55 +0000 (UTC)
Date: Mon, 8 Oct 2018 16:49:50 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20181008164950.71793583@coco.lan>
In-Reply-To: <1538926141.4115.2.camel@HansenPartnership.com>
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<1538861799.4088.6.camel@HansenPartnership.com>
	<CAKMK7uGvgttqL_RoXumd0F4w8UMqwaVODaMWnOZz5weSFzDJ2A@mail.gmail.com>
	<1538926141.4115.2.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [PATCH 1/2] code-of-conduct: Fix the
 ambiguity about collecting email addresses
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Sun, 07 Oct 2018 08:29:01 -0700
James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:

> On Sun, 2018-10-07 at 11:04 +0200, Daniel Vetter wrote:
> > On Sat, Oct 6, 2018 at 11:36 PM James Bottomley
> > <James.Bottomley@hansenpartnership.com> wrote: =20
> > >=20
> > > From 4a614e9440148894207bef5bf69e74071baceb3b Mon Sep 17 00:00:00
> > > 2001
> > > From: James Bottomley <James.Bottomley@HansenPartnership.com>
> > > Date: Sat, 6 Oct 2018 14:21:56 -0700
> > > Subject: [PATCH 1/2] code-of-conduct: Fix the ambiguity about
> > > collecting email
> > > =C2=A0addresses
> > >=20
> > > The current code of conduct has an ambiguity in the it considers
> > > publishing private information such as email addresses unacceptable
> > > behaviour.=C2=A0=C2=A0Since the Linux kernel collects and publishes e=
mail
> > > addresses as part of the patch process, add an exception clause for
> > > email addresses ordinarily collected by the project to correct this
> > > ambiguity.
> > >=20
> > > Signed-off-by: James Bottomley <James.Bottomley@HansenPartnership.c =
=20
> > > om> =20
> > > ---
> > > =C2=A0Documentation/process/code-of-conduct.rst | 2 +-
> > > =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
> > >=20
> > > diff --git a/Documentation/process/code-of-conduct.rst
> > > b/Documentation/process/code-of-conduct.rst
> > > index ab7c24b5478c..aa40e34e7785 100644
> > > --- a/Documentation/process/code-of-conduct.rst
> > > +++ b/Documentation/process/code-of-conduct.rst
> > > @@ -31,7 +31,7 @@ Examples of unacceptable behavior by participants
> > > include:
> > > =C2=A0* Trolling, insulting/derogatory comments, and personal or
> > > political attacks
> > > =C2=A0* Public or private harassment
> > > =C2=A0* Publishing others=E2=80=99 private information, such as a phy=
sical or
> > > electronic
> > > -=C2=A0=C2=A0address, without explicit permission
> > > +=C2=A0=C2=A0address not ordinarily collected by the project, without
> > > explicit permission
> > > =C2=A0* Other conduct which could reasonably be considered inappropri=
ate
> > > in a
> > > =C2=A0=C2=A0=C2=A0professional setting =20
> >=20
> > We've discussed this a bit with freedesktop.org people a while ago,
> > both from a CoC and privacy regulations pov, and we concluded that
> > attaching random people's emails in Reported-by: and similar lines,
> > without their consent, is indeed a problem. Bugzilla is rather
> > problematic in this way, since it looks like it's protecting your
> > email address and keeping it private, but then you can still just
> > grab it from the bugzilla emails without first asking for permission.
> > That's one of the reasons why fd.o admins want to retire Bugzilla in
> > favour of gitlab issues (where this is handled a lot more strictly). =20
>=20
> This is a code of conduct example of a violation.  While I agree we
> should exercise sensitivity in reporter expectations I don't think a
> maintainer getting it wrong should be equated to doxxing.
>=20
> In many ways, this is why having examples sections in quasi legal
> documents is a bad thing to do because it's arguable (as you have done)
> that if some behaviour isn't explicitly mentioned in the unacceptable
> examples it must be acceptable.
>=20
> Look at it this way: if a maintainer screws up and adds a reported by
> from someone who didn't expect their email to be published should that
> be treated as an immediate code of conduct violation by whatever
> enforcement process we come up with?  I think most maintainers would
> answer "no" to this.=20

Agreed.=20

I'd say more: what happens if someone adds a diff inside a bug
report? Not adding the author can be problematic too.

People should assume that, when reporting a bug, replying to
a patch, etc, his e-mail will be visible by people, and it can be
used when a fixup patch is produced. If someone doesn't want that,
it should *explicitly* say otherwise.

The text changes suggested by James reflects that: an e-mail sent in
private, with an explicit message saying to not use the personal
address is not an "electronic address not ordinarily collected by the
project".

Of course, it is up to the maintainer/developer that receives
such e-mails to either use its content, anonimizing the submitter
as requested (and eventually taking associated risks with regards
to GPL - if the email contains a patch) or to just ignore it.

Anyway, such "special cases" are the kind of thing that makes sense
on a FAQ, and not at the letter of the document itself.

Thanks,
Mauro
