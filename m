Return-Path: <neilb@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4CB0A4A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 Aug 2017 04:19:34 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E46A7E0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 Aug 2017 04:19:33 +0000 (UTC)
From: NeilBrown <neilb@suse.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 14 Aug 2017 14:19:24 +1000
In-Reply-To: <CA+55aFxFh8K_HxXEDXGizCj097u7VE8NZB8LpAVEdA2aSYgHHg@mail.gmail.com>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<87efslsj7w.fsf@notabene.neil.brown.name>
	<CA+55aFz5NNCE6JMHfoqKtxAFSPBKkGvaDQQ+bqMzySYr--an-w@mail.gmail.com>
	<878tiqr5eb.fsf@notabene.neil.brown.name>
	<CA+55aFx0__GOf1BbM7w8K9A4mMJh8wGhsDK7J2MieHyBaX_2cQ@mail.gmail.com>
	<87zib6pm5s.fsf@notabene.neil.brown.name>
	<CA+55aFxFh8K_HxXEDXGizCj097u7VE8NZB8LpAVEdA2aSYgHHg@mail.gmail.com>
Message-ID: <87o9riok6r.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Andy Lutomirski <luto@kernel.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
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

On Fri, Aug 11 2017, Linus Torvalds wrote:

> On Fri, Aug 11, 2017 at 1:02 AM, NeilBrown <neilb@suse.com> wrote:
>>
>> What do you mean by "upgrade"?
>> Can I upgrade from 3.15 to 3.16-rc1?  If not, why not?
>
> Yes..
>
> Of course, bugs happen, and then they get fixed.
>
> But yes, even including things like -rc1 (or just "random untagged
> kernel of the day") you should
>
>  (a) feel safe in always upgrading to any higher version (I *hope* you
> can always also downgrade to a lower kernel version, but obviously at
> some point user space may start depending on newer features that
> simply don't exist in older kernels).
>
>  (b) also feel that if something breaks, it's a bug, and people will
> take it seriously and not dismiss it with some crazy "N+1 version"
> excuse.

I think the issue is that some of us would like a clearer statement on
what values of "some point" we will honor, and which values are
crazy-talk.

This related slightly to your comment:

>
> And then I say "if it took you three years to upgrade and notice a
> behavioral change that nobody else noticed, it's no longer _our_
> fault".

Can we also say "if you started depending on an API that has only been
in the kernel for 3 weeks and we had to revise it, then it not _our_
fault if you depend on it already"??

In the original post in this thread, Andy seemed to think that as long
as it gets "fixed before the next real release", we are safe.  Your
comments could be read to mean that you don't agree and that there is no
clear line at which we are safe.

You mentioned trust earlier:

> The whole point is that users are supposed to be able to *trust*
> the kernel.

I agree, but I think trust works best if it works both ways.  Can we
trust application developers not to depend on an API which hasn't
reached maturity?  I think we can if we tell them what we expect - what
constitutes "maturity" - and make it a reasonable expectation.  Do we
have to declare "maturity" the moment an API hits mainline (or hits
-next, or hits mailing lists), or can we negotiate a formal grace
period?

Yes, "no regressions" is an import rule that should remain, but there
has always been a loophole.  The loophole is "no harm, no foul".  If we
can negotiate an understanding that results in "no harm" from early
revisions to an API, then those revisions will not cause actual
regressions. "No foul".


But maybe I'm wrong and all the people talking about automatic tooling
to discover and highlight API changes in linux-next are on the right
track... or would be if everything actually went through linux-next.

Thanks,
NeilBrown


--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEG8Yp69OQ2HB7X0l6Oeye3VZigbkFAlmRJM4ACgkQOeye3VZi
gbkSAg//ZwfHr5/1+IS6OKoJvr6O5YLpihiXWUjQtweC26QAhkC7YYMvCxM1HfJD
LVnTHUc8NHH64S+q+Iq+6QWsyAl9mHVr9yC0K2dwft/4dy2EE/3tIie8FoDHaKMb
INc41SPydWieosfFFm5zP0+HkaIKH1U1Jlhzx6rtK67AdVJaGAk0rVeFA2IaHpTN
XH6qIOSIzHGhzCsTc1aVjhuU1BLlXhSwaRiprkPYU9d+cryR38cE5UqM0QDL07NY
5RstJu/76ur1+JD6kTh0ONCKyNrcqemwGl+ffVdLkQw/Mk8SE/PAmMLtBTshy/0u
kiMCkQx2Ez2kNMlqEKmEp4A3EhLzfaQAV+5YqHuN6ROECrfaeUTefoZxhkv8ygmb
joDsdJ2+MwbJNLQXclBxq06fzzSx8nhNK4SIayzPpvO6zdChJSjMKkLs2IxI+Y0y
nmGhu9VaAOIPyMlHRRLSFmJUh3cYjCorjb2tmrL1efqNHim0RIeHNFSulyUDLpwV
2UXMpAHfyUu0/RhUKA4HxEP8oDqaW/5sl39QsgbDFQCWfe+4UPK+nF2dj0fIQhVB
lEYr3JyGUAXJSqItbTW+hImgGMd4cgab7J1ayzMw0icJGxDNGp61AbCF67qPflfQ
3qgLWDuPYeSnBv3tD6j94ApybBL9dniwnJCOG1C8b1mmuHkn6kk=
=XGZz
-----END PGP SIGNATURE-----
--=-=-=--
