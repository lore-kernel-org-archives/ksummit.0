Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 830B41060
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Sep 2018 20:57:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E027727B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Sep 2018 20:57:48 +0000 (UTC)
Date: Wed, 26 Sep 2018 17:57:24 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20180926175724.7723bb61@coco.lan>
In-Reply-To: <20180924193107.GM570@io.lakedaemon.net>
References: <cf7638b9-c25d-d47e-f539-192a43268122@kernel.org>
	<20180924193107.GM570@io.lakedaemon.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: olof@lxom.net, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH-TOPIC] Review - Code of Conduct: Let's
 revamp it.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Mon, 24 Sep 2018 19:31:07 +0000
Jason Cooper <jason@lakedaemon.net> escreveu:

> All,
>=20
> On Mon, Sep 24, 2018 at 08:24:07AM -0600, Shuah Khan wrote:
> > I have been trying to follow various threads on this topic and none of =
them address
> > the review of this patch that went in. There is no mistake in the title=
 of this topic.
> > I do consider this topic to be more general than limited to Maintainer =
Summit. Hence,
> > the choice of a wider Technical designation. =20
>=20
> fwiw, I agree with the insufficient scope, and the lack of public
> mailinglist discussion.
>=20
> I'd like to make a drive-by observation (or two), if I may.  The kernel
> community is *huge* and *active* in comparison to most other projects.
> It also has a lot more history than most others.  That history isn't
> stored in a database, only to be accessed through a web page, accepting
> the single database as canonical.  Rather, the history is stored in many
> places, accessible by many different methods, and verifiable against
> other remote copies of the history.
>=20
> This difference is an understated advantage of the kernel development
> process.  Once you say "it", you can never refute that you said it.  The
> history itself provides a conscious check.  As a result, I don't think a
> CoC in any form is going to cause any sort of material change in anyones
> behavior.  Rather, it'll just push away valuable and scarce talent.
>=20
> The second observation is that trying to adopt a single CoC for the
> _entire_ Linux development community is an exercise in futility.  As
> Daniel Vetter has mentioned many times in these recent discussions, dri
> has been happily living under their own CoC for quite some time.  So we
> can gather a) it works for them, and b) it doesn't bother any other
> subsystems.
>=20
> So why are we trying to apply a single CoC to everyone?  Why not let
> each subsystem / sub-community adopt their own and see how it goes?  A/B
> test it.  It could either be a footer link for the respective
> mailinglist, or a link in MAINTAINERS.  Any community not specifying one
> defaults to the Code of Conflict.

Well, we have a privacy policy for media development that touches some
of the items covered by the CoC:

	https://linuxtv.org/wiki/index.php/LinuxTVWiki:Privacy_policy

The rationale behind it is very different than the one for the CoC...
it was added mainly to comply to the new EU legislation.

It is based on Wikipedia privacy policy (with some amendments), as the
main thing that we host there (where maintainers don't have control) are
wiki pages.

Yet, while not a CoC, it says things like:

   "LinuxTV is collaborative, with users writing most of the policies and s=
electing from amongst themselves people to hold certain administrative righ=
ts. These rights may include access to limited amounts of otherwise nonpubl=
ic information about recent contributions and activity by other users. They=
 use this access to help protect against vandalism and abuse, fight harassm=
ent of other users, and generally try to minimize disruptive behavior on th=
e sites."

In other words, it crosses some lines with this CoC. It also explicitly
says that:

	"Any information you post publicly on the Wiki or send via e-mail to a dis=
cussion list is just that =E2=80=93 public. For example, if you put your ma=
iling address on your talk page, that is public, and not protected by this =
Policy. And if you edit without registering or logging into your account, y=
our IP address will be seen publicly. Please think carefully about your des=
ired level of anonymity before you disclose personal information on your us=
er page or elsewhere."

That's said, I like the concept of global CoC, but you touched an
interesting point: it may conflict with already-existing CoC and similar
documents.

> I'd like to assume the backdoor method the CoC was introduced was purely
> to avoid a never-ending bikeshed.  And the subsequent threads are
> evidence that it didn't take a prognosticator to predict the mess.
>=20
> Perhaps that's an indicator that it shouldn't be done that way.  Maybe
> approaching the problem on a per-sub-community will work better.  I
> dunno.
>=20
> Just my 2 cents.
>=20
>=20
> Thanks,
>=20
> Jason.
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss



Thanks,
Mauro
