Return-Path: <neilb@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4D28E486
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 11 Aug 2017 06:21:42 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DFB063CA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 11 Aug 2017 06:21:41 +0000 (UTC)
From: NeilBrown <neilb@suse.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 11 Aug 2017 16:21:32 +1000
In-Reply-To: <CA+55aFz5NNCE6JMHfoqKtxAFSPBKkGvaDQQ+bqMzySYr--an-w@mail.gmail.com>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<87efslsj7w.fsf@notabene.neil.brown.name>
	<CA+55aFz5NNCE6JMHfoqKtxAFSPBKkGvaDQQ+bqMzySYr--an-w@mail.gmail.com>
Message-ID: <878tiqr5eb.fsf@notabene.neil.brown.name>
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

On Wed, Aug 09 2017, Linus Torvalds wrote:

> On Tue, Aug 8, 2017 at 5:00 PM, NeilBrown <neilb@suse.com> wrote:
>>
>> I think this is primarily a social/communication issue.  We need to know
>> what is expected and what can be trusted.  We need clear rules that
>> everyone knows and that work for everyone.  Currently we have (fairly)
>> clear rules that work fairly well in many cases, but can be problematic.
>>
>> The rules, as you outline, are that users should not experience
>> regressions from one released kernel to a subsequent released kernel.
>> So people working on -rc kernels can expect to experience regressions.
>> Also kernel devs are free to create theoretical regressions as long an
>> no-one experiences them.
>>
>> My strawman is to suggest that we relax this.
>
> No.
>
> The whole "no regressions" is a hard rule, and it will remain so.
> It's pretty much the only really hard rule we have, and I will
> continue to insist on it.
>
> There are no loopholes. No "but it's been only one release". No, no,
> no. The whole point is that users are supposed to be able to *trust*
> the kernel. If we do something, we keep on doing it.

I completely agree with the "trust" issue.  I don't think my proposal
violates it.  It just changes the names of the things that can be
trusted.  You could easily change them back.
e.g.
- When you are ready to release 4.13, call it 4.13-pre1 instead
- You then open the merge window and pull changes onto this base
  working towards 4.14-rc1.  Just as you currently do, you accept
  changes to the API for interfaces that have not appeared in a
  released kernel (and 4.13 hasn't been released at this point).
- Greg takes over 4.13-pre and applied patches tagged for "stable"
  exactly as he currently does, except that he calls the first
  few releases "4.13-pre2" and "4.13-pre3" etc.  These "stable"
  patches might include changes to APIs that were introduced since 4.12,
  changes that you have already included in 4.14-rcX.
- After you release 4.14-pre1, the next kernel that Greg releases
  in the 4.13-preX series gets called "4.13", and subsequent kernels in
  that series are "4.13.1" etc as normal.

With this pattern, people can still trust an X.Y kernel, possible more
than they currently do (how many people wait for X.Y.3 before they will
move?).   With this pattern, we still get an X.Y every 2 months or so
(except for one 4 month gap at the change-over).
The main difference is that we are a bit more honest about how long it
takes to bake a kernel before it is ready.  We also get more time to
document and fix broken APIs.

"pre" is probably weird, and "rc" doesn't really mean "release
candidate" these days, except for rc7.  Maybe you could call your "rc"
kernels dev1, dev2, etc. Then Greg could use "rcX" for the real release
candidates.  But naming is hard.

>
> And if it makes it harder to add new user-visible interfaces, then
> that's a *good* thing.

I think the point is that it is currently too easy to add user-visible
changes (extra flags, etc), and none of the proposals actually make it
harder.  They just try to make them more visible.  The proposal makes it
harder in that it forces an extra 2 month delay.

Thanks,
NeilBrown

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEG8Yp69OQ2HB7X0l6Oeye3VZigbkFAlmNTO4ACgkQOeye3VZi
gbkLWA/+KE/u7BPctA4F6l804aVOmCRoy9WUGs2U7UbK0X6zEdzdBEyrco8M6HBl
z5iVbOmn8tWfkQqUvxbTAC8oJBhCQO128NZPyXxp5zF9B23z3XIHbXGbKbhBU9KX
P5LY2PI4aqsvI4MJN6JAodsDPsvPrQwPhbx4kfyESQ6nQHab+BJbXtjUXNMHa85x
5fMEL3NWWn8tEeaR6scFlFaYezrKcoy21y9kIKi0/aBXgJiLzgW26oeIklDBDVD+
sKQPAUawYVxz3HR0hSEVsa6O6Y/qCFKHqIXphOXblMcddi8I4aKh13xTtnYXQcvb
x2l7pA6s0RNnhJ2cQF/Aj/1w37OxRbV5HKtlpOxZTT0p7nk0u8vL7Fv78fILftX2
hHG+OLJHB0oCG2o97sp2eAGKi2zOaLYOL0AA5XMmiipEporciYBh0mg2idOXup6j
AXe+YfuUEqsUEMxgQrAXxBPyzUu0gW82vx1mpqQeZeuJE/xZ6w/oern4AzuklE0C
0CgB8jsKdhLhgyaTCno2gyldxa5pWXtT2j0mCRXio9rVPXmAGJpPkeSE/Fj9fNTp
sQxSziD3l+kaaJDrWBF7FNDY9OhANFfmvIYStBoodhwiEAHUOlsKPA0V8wh1SMO4
OdKbQqC1pmR6v3ddCJafQ4YgY+GfAsRGb4QYeEI4dPhCpF1/+dE=
=wHPF
-----END PGP SIGNATURE-----
--=-=-=--
