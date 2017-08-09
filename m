Return-Path: <neilb@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 823A6A92
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 Aug 2017 00:01:04 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 20E9A3CA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 Aug 2017 00:01:04 +0000 (UTC)
From: NeilBrown <neilb@suse.com>
To: Andy Lutomirski <luto@kernel.org>,
	"ksummit-discuss\@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Wed, 09 Aug 2017 10:00:51 +1000
In-Reply-To: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
Message-ID: <87efslsj7w.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
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

On Thu, Aug 03 2017, Andy Lutomirski wrote:

> [Note: I'm not entirely sure I can make it to the kernel summit this
> year, due to having a tiny person and tons of travel]
>
> This may be highly controversial, but: there seems to be a weakness in
> the kernel development model in the way that new ABI features become
> stable.  The current model is, roughly:
>
> 1. Someone writes the code.  Maybe they cc linux-abi, maybe they don't.
> 2. People hopefully review the code.
> 3. A subsystem maintainer merges the code.  They hope the ABI is right.
> 4. Linus gets a pull request.  Linus probably doesn't review the ABI
> for sanity, style, blatant bugs, etc.  If Linus did, then he'd never
> get anything else done.
> 5. The new ABI lands in -rc1.
> 6. If someone finds a problem or objects, it had better get fixed
> before the next real release.
>
> There's a few problems here.  One is that the people who would really
> review the ABI might not even notice until step 5 or 6 or so.  Another
> is that it takes some time for userspace to get experience with a new
> ABI.
>
> I'm wondering if there are other models that could work.  I think it
> would be nice for us to be able to land a kernel in Linus tree and
> still wait a while before stabilizing it.  Rust, for example, has a
> strict policy for this that seems to work quite well.
>
> Maybe we could pull something off where big new features hide behind a
> named feature gate for a while.  That feature gate can only be enabled
> under some circumstances that make it very hard to mistake it for true
> stability.  (For example, maybe you *can't* enable feature gates on a
> final kernel unless you manually patch something.)
>
> Here are a few examples that come to mind for where this would have helped:
>
>  - Whatever that new RDMA socket type was that was deemed totally
> broken but only just after it hit a real release.
>  - O_TMPFILE.  I discovered that it corrupted filesystems in -rc6 or
> -rc7.  That got fixed, the the API is still a steaming pile of crap.
>  - Some cgroup+bpf stuff that got cleaned up in a -rc7 or so a few releases ago.
>
> I'm sure there are tons more.
>
> Is this too crazy, or is it worth discussing?

I think this is a real issue and it would be good to see improvements.

I think this is primarily a social/communication issue.  We need to know
what is expected and what can be trusted.  We need clear rules that
everyone knows and that work for everyone.  Currently we have (fairly)
clear rules that work fairly well in many cases, but can be problematic.

The rules, as you outline, are that users should not experience
regressions from one released kernel to a subsequent released kernel.
So people working on -rc kernels can expect to experience regressions.
Also kernel devs are free to create theoretical regressions as long an
no-one experiences them.

My strawman is to suggest that we relax this.  We change the promise "if
it works on a released kernel, it will work on all future released
kernels", to "if it works on N consecutive released kernels, it will
work on all future released kernels", and then bikeshed the value of N,
but probably settle on N=2.
This should give important new freedom to kernel developers, and impose
a (hopefully) small burden on application developers.  They should be
testing their code anyway (we all should), now they have to test it
twice.
To make that burden smaller, we could aim to apply all "new API fixes"
to the -stable kernels promptly.
If a new API appears in Linux N it might behave differently in N+1, but
in that case the first N.M stable kernel released after N+1 will also
have the new behaviour.
So developing against that N.M should always be safe.  Any APIs it has
are declared to be stable.

My other strawman is to declare that if an API is not documented, then
it isn't stable.  People are welcome to use undocumented APIs, but when
their app breaks, they get to keep both parts.  Of course, if the
documentation is wrong, that puts us in an awkward place - especially if
the documented behaviour is impossible to implement.  We can then
schedule the release of the documentation at whatever time seems
appropriate given the complexity and utility of the particular API.

My main point here is that I think the only real solution here is to
revise the current social contract.  Trying to use technology to detect
API changes - as has been suggested in this thread - is not a bad idea,
but is unlikely to catch the really important problems.

Thanks,
NeilBrown

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEG8Yp69OQ2HB7X0l6Oeye3VZigbkFAlmKULUACgkQOeye3VZi
gbmDJBAAoS4qpgcOhZxtNH+HF/ZrXYY8o7sWcmnA4CHimYy41ThKG8D20ppIkI9F
BpTmOVhZHB0Zzg0548oPwvRPTNlGsOajB90kEmwze5p92ErjgUdrLCretPOWXy6T
9BcdIJfAvX8rJiOj8Wa6WanIh/4ldKXakWWnz3SMXZxWpejK2o28dFy9RheWJzAB
q3lLLJX6teZnk3FFteu2I7p3wPK5R1nu8aSXVVWz88/YX+6K+u35iNacSF2Tabwd
upBOHQmSi79X+aB5eiYxmRXB/2KVeMXxml6Z/62SXCbbdQotvqPPhuWmGKuyXCwW
hFlx/xhObLkGS+HSSPd33HGOMlRVq26z2HfPoX5Pe/gIJr1LdLVgswL9cl93oXNF
BvvvolUTq1lQ9VqIfqqb7vnUPZOEqbjtUf0aA+EQhG6m2GJZrdKkyh9ATUfVkMXG
R/+XyI6RUhqFsOriP64NjOAQ1qzic86/sCA9gkJtGupIosOZia3vnI4eRH+a1n8H
vQmL7tbkab4iIFJsjI9QrtPg+rcCPYjikM3+NlLXI+FKdu+M3XqDyZfm6xDYIqZQ
vjnvqJ9O56rOEO4DE1PsAbCbiOZDEBst1WvxPiSF81LsN42qJ8pKKPWr3CdYXVzt
Ly+3h5RgfmmL3dvyDsVlM9PtkfMShKUdpDRLwntfDyloyr/64Vc=
=C4H9
-----END PGP SIGNATURE-----
--=-=-=--
