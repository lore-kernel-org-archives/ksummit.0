Return-Path: <neilb@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D307F8CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 07:01:45 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 349BF121
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 07:01:45 +0000 (UTC)
From: NeilBrown <neilb@suse.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Greg KH <greg@kroah.com>, Guenter Roeck <linux@roeck-us.net>
Date: Fri, 15 Jul 2016 17:01:33 +1000
In-Reply-To: <1468564337.2420.37.camel@HansenPartnership.com>
References: <718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<20160713143447.GH9976@sirena.org.uk>
	<20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com> <5788337F.8000500@roeck-us.net>
	<20160715014103.GA5791@kroah.com> <578850EB.3090109@roeck-us.net>
	<20160715042938.GA5527@kroah.com>
	<874m7rcus8.fsf@notabene.neil.brown.name>
	<1468564337.2420.37.camel@HansenPartnership.com>
Message-ID: <871t2vcrle.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Cc: Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
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

On Fri, Jul 15 2016, James Bottomley wrote:

> On Fri, 2016-07-15 at 15:52 +1000, NeilBrown wrote:
>> I do find quilt useful when backporting a series of patches so that I
>> can resolve the conflicts on each patch individually and move=20
>> backwards and forwards through the list of patches.  I don't think=20
>> git has an easy way to store a branch of patches-that-I-need-to-apply=20
>> and to then give me one at a time, removing them from the branch.  I=20
>> could use 'stgit' for that if necessary, though it is very tempting=20
>> to write something that is better integrated with git.
>
> Git cherry and git cherry-pick can do this.  Git cherry-pick can take a
> range of patches to apply, so you can select a bunch of patches to
> backport or otherwise move all at once.  Git cherry can tell you (to
> within an approximation, since it uses matching) what patches are
> common between two branches even if they have differing commit ids.
>
> The format is a bit frightening if you're not used to it, which is why
> stgit may be a better user experience, but you can do it with basic
> git.

I wasn't aware of "git cherry".  It certainly could be useful, but based
on the man page it would get confused by modifications made to resolve
conflicts.
If "get cherry-pick" auto-added an "upstream HASHID" line to the comment, a=
nd
if "git cherry" used that to understand that two commits where "the
same", then it would be a lot closer.

Then a command, maybe "git cherry-pick" with no args, which did the
equivalent of:=20
  git cherry-pick `git cherry | head -n1`

would almost work for "quilt push", and the "git rerere" thing (which I
almost understand) would mean that "git reset --hard HEAD^" would work
for "git pop" (or "git cherry-pop").

I'd probably want some way to record the upstream and limit commits for
a particular session.  e.g.
   git cherry start XX YY

then "git cherry-pick" and "git cherry-pop" would DoTheRightThing.
Maybe.

Thanks,
NeilBrown

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXiIpOAAoJEDnsnt1WYoG5gbEQALVoEr6pUo3QfVxmrbHPWpfF
QhIvepdxeCVWOyfvVweylWY0nTUQR+jGolGnA07njQC6n8TEC8w60vXpgaiBcV/S
WKDQlmgdKu5GuVeohVcpS1QCAn1K9R+uYALOA5m4hi98+oqIo2xsKfaJHFnytcsP
wlBOGzGD1YomShWJ2tqXOh1f3pXSG2sqaCuGtQTbU7mChf4zH7+7UmDLghEP+f5a
9Rn2XjK2miOC/CXHYMjU487zK4r06eUnsZ0QL0/Rgp/WsmNL5CTd7FEWKDFbTxLB
SiPxgYkf3Y2+9BrrXe1iWLAuuM0w0+cuPmzkV8ekyz7WVZfOjeawIDAZlxDQHPFy
M2QTKMd/17l00VBq5T+KW8qZ+f46Kws0+0nkSzRY30mptIa3/VQAWk72xjjbHfKg
3PhSpqlwaiHSWkLnZ6/TDOJqMw4kajR1l6bcezRuq06sjugPJ9roacIEZWTw4UMh
VHi/R4UyrD9G0Jj/qn9Bg8LlA24i7JEKKT64WSF8WbS7Pim4FL1S0xyfcOIDXL6p
jfrDdwGphfajjAw4mSXzEm6bJDb9+OsAwtmzdHE0Ma96sz7ZEhgDdahhwPdhWeCK
N9P6bLyzjGbUP+FoK2f9t4PwjZvKGxiY8Ww5MmtPSZrzuPT8L3lj93Ja/Wb20dOB
0U2FadA7sZqOpwr+epHe
=WRYx
-----END PGP SIGNATURE-----
--=-=-=--
