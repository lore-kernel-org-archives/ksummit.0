Return-Path: <neil@brown.name>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9E58822DD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 25 Oct 2018 22:02:34 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BD89E7DC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 25 Oct 2018 22:02:33 +0000 (UTC)
From: NeilBrown <neil@brown.name>
To: Laura Abbott <labbott@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 26 Oct 2018 09:02:23 +1100
In-Reply-To: <c6bf1877-6e29-50ec-ffa8-314ab35ec9ce@redhat.com>
References: <20181020134908.GA32218@kroah.com>
	<87y3ar80ac.fsf@notabene.neil.brown.name>
	<c6bf1877-6e29-50ec-ffa8-314ab35ec9ce@redhat.com>
Message-ID: <87d0rx65xs.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mishi Choudhary <mishi@linux.com>
Subject: Re: [Ksummit-discuss] Call to Action Re: [PATCH 0/7] Code of
	Conduct: Fix some wording, and add an interpretation document
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 24 2018, Laura Abbott wrote:

> On 10/21/2018 02:20 PM, NeilBrown wrote:
>
> <snip>
>
>> I call on the community to consider what *does* need to be said, about
>> conduct, to people outside the community and who have recently joined.
>> What is the document that you would have liked to have read as you were
>> starting out?  It is all too long ago for me to remember clearly, and so
>> much has changed.
>>=20
>
> I joined much more recently than many and what I would have wanted
> then is an interesting question. I probably would _not_ have wanted
> a code of conduct when I first started working in open source. I also
> said things in my younger years I regret and probably wouldn't have
> said if I was held to a higher standard of conduct. Younger me frequently
> put up with behavior I wouldn't tolerate today. Younger me also
> greatly benefited from the experience of other kernel developers
> giving me firm feedback in a helpful way and saying no to bad approaches.
> I don't believe I would have continued if I hadn't been given that
> feedback in a useful way.

Thanks for this thoughtful reply.  You seem to make two key points.

Firstly, you repeatedly value feedback - both positive and negative.  I
agree.  One of the worst things that can happen when I post a patch, is
that it get ignored (no feedback).
This gels with what Linus said recently, as reported in
 https://lwn.net/Articles/769117/

     To that end, he asked the assembled group to watch his emails and
     let him know if things start to get close to the edge.

He explicitly asked for feedback, giving people permission to speak up
when they thought he was out of line.  I personally think this is a
very significant statement.  Not for what it tells those maintainers
(who probably generally knew that already) so much as for what it tells
the broader community who don't know Linus so well: Feedback about
behaviour is explicitly welcome.

You go on to say, below, that a private e-mail can resolve things.  I
don't actually think that a private e-mail is such a good idea because
even though it might resolve things, it doesn't let the broader
community know they are resolved, and doesn't set any example of how
resolution works.  Giving feedback in public is hard, but if there was a
clearly established mechanism, that might make it easier.  I wouldn't
choose the wording you provided as it focuses on "you" rather than "me",
but that sort of gentleness is definitely appropriate.

Your second point is about more serious issues and particularly how they
will be handled.  As I have said elsewhere, and will not belabor here,
I think this is upside down: we can and should give power to the weak,
rather than trying to curb the power of the strong.

Extrapolating from the "feedback" point, I'm imagining having a document
which starts:

  In the Linux kernel community we try to be helpful and not hurtful.
  The best way to understand how this applies in practice is to give,
  receive, and observe feedback.

  If someone says/does/writes something that you think is helpful, consider
  saying so: "Thank you, I found that to be helpful".
  - You can your own words if you wish.
  - You might like to add your voice to others if the situation warrants
    it.
  If someone says/does/writes something that you think is hurtful
  (whether to yourself or someone else), please consider saying
  something:
  "This seems hurtful to me"
  - It is best to use exactly this wording.  In particular, don't
    embellish or explain unless asked.
  - Normally just one voice is sufficient.  If an individual repeats
    the hurtful behavior, one new voice per instance is sufficient.


It might then continue with some specifics, though there seems to be
some debate on whether such specifics are a good idea.  I don't have a
firm opinion.

Thanks a lot,
NeilBrown

=20=20
=20=20

>
> Today, I think the code of conduct is a very important addition to
> the community. It's a stronger assertion that the kernel community
> is committed to raising the bar for behavior. I have no concern about
> patch review or quality dropping because most maintainers demonstrate
> every day that they can give effective feedback. We're all going to
> screw that up sometimes and the Code of Conduct reminds us to do our
> best. Most issues that arise can be resolved with a private e-mail
> going "you might want to rethink your wording there."
>
> What the Code of Conduct also provides is confidence that more serious
> community issues such as harassment not related to patch
> review can be handled. It spells out certain behaviors that won't
> be tolerated and explains how those problems will be dealt with.
> Will those problems actually be handled appropriately when the time
> comes? I can't actually say for sure, but the kernel community works
> on trust so I guess I have to trust that it will. I really hope I never
> have to report harassment but I'm glad there's a process in place.
>
> Thanks,
> Laura

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEG8Yp69OQ2HB7X0l6Oeye3VZigbkFAlvSPW8ACgkQOeye3VZi
gblvnA/9FikE+oTW2bq06zx5WWqim9d06F1SgjFipoO1hBl2pe7kf7fHtA5bn536
30iNqFlEsFVdBelLVDoPkwdWI96qEXEjTVFsRIgrcO9ZhPb4MYGNfKRp6dwzCOMz
PWVVMayvgmcGcSqW01osuqpCTb/KxBFiIYXJ1u4K/zW7QjknFknQdO8FATl+mvFO
KkMIIfihdC1KICZccmGN/wTfMiDBkBr4RXQJqunKawG3Kqr4JD/ni4sUIIeLQYmv
qFxVQJgR2quO0b+dM0MbTfp8bFcTM5sRYgmx8XQDeLY8IDqWtZgnFHJa7gk4bCnw
zJLE14MSBBQp/C4mSiGR8Fc8zFSkf/ChoYZNgeijlKNV1iht1B6yn5TbtqkGg0iN
2/4Xp2lPWrJUARXGOCoNHVQ+UAyqmJ55xbANyKmmpVbUpqTJInMQEVOjR4LFbI0Q
lV0H9eseLaQ9aBu2rv79/nexMSCYWiTbUHD9TVd1myHLockn/gNYLXSn8iAxlH5m
4ATfAr7Ad5NOAyKxYL4DZ4evORgIpYxvcaAoPGztQJQQgljCLlqeYJOpTxSk5VYS
2tWnuvIjDUmxMOuCw2Aqn6pv/ropuuoGvngC+BwyUwBtkGS6rFFnWxMmNIzLGO79
fFV7bO6JlZlMxB5Dw1AyjFhouLFXURgeX2uo3RCtb8imt2QQxTQ=
=WzY7
-----END PGP SIGNATURE-----
--=-=-=--
