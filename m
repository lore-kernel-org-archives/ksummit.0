Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 911AE1052
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 00:49:23 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D7F677D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 00:49:22 +0000 (UTC)
Date: Tue, 11 Sep 2018 10:49:20 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Eduardo Valentin <edubezval@gmail.com>
Message-ID: <20180911104920.10579e62@canb.auug.org.au>
In-Reply-To: <20180910230301.GB1764@localhost.localdomain>
References: <20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180910174638.26fff182@vmware.local.home>
	<20180910230301.GB1764@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/oj/SGlI7l+DwsLu.L=SzsgF";
	protocol="application/pgp-signature"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/oj/SGlI7l+DwsLu.L=SzsgF
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Eduardo,

On Mon, 10 Sep 2018 16:03:03 -0700 Eduardo Valentin <edubezval@gmail.com> w=
rote:
>
> On Mon, Sep 10, 2018 at 05:46:38PM -0400, Steven Rostedt wrote:
> > Honestly, I think this is something that Linus should yell at
> > maintainers for. I treat my pushes into linux-next the same as I treat
> > my pull requests to Linus. I don't push anything into next until it's
> > been fully run through my test suite, and passes. That also makes it
> > easier for me to know that whatever I have in next is also ready for
> > Linus (the way it was suppose to be). =20
>=20
> Shouldn't we all be doing that?

Yes.

> > With the 0day bot, I think it's become much better. But honestly, I
> > think any branch that causes next to fail to build, or run basic tests,
> > should be taken out of linux-next and a nasty message sent to the
> > guilty maintainer. With the exception that a breakage was caused by two
> > conflicting commits (for example, one that changes an API, and another
> > branch that uses that API without the update). Those types of breakages
> > is what linux-next is made for. But if the branch being pulled into
> > linux-next breaks something without the integration, then that's
> > unacceptable. =20
>=20
> I thought that was the case already, everthing that goes to linux-next
> is ready to go to Linus.

And, again, yes.

This is what I tell every maintainer that adds a tree to linux-next:

"Thanks for adding your subsystem tree as a participant of linux-next.  As
you may know, this is not a judgement of your code.  The purpose of
linux-next is for integration testing and to lower the impact of
conflicts between subsystems in the next merge window.=20

You will need to ensure that the patches/commits in your tree/series have
been:
     * submitted under GPL v2 (or later) and include the Contributor's
        Signed-off-by,
     * posted to the relevant mailing list,
     * reviewed by you (or another maintainer of your subsystem tree),
     * successfully unit tested, and=20
     * destined for the current or next Linux merge window.

Basically, this should be just what you would send to Linus (or ask him
to fetch).  It is allowed to be rebased if you deem it necessary."

--=20
Cheers,
Stephen Rothwell

--Sig_/oj/SGlI7l+DwsLu.L=SzsgF
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAluXERAACgkQAVBC80lX
0Gzaegf/e+rAvpOKCpXiU3ckkCwhPZlo3A0yF/UK+j9bMApWMctlkUShriNNNT39
pYEhzNE01sw5mZohQsg0sjcMAfxf+RjID5LRfIsNwiT+9znb5T5Tcxe4BFFgNGFC
LspBMeTRvTp6bCZFr0LwXe+gvBbS+pPdsOg1rOhH5jwBlrDVeVO/rh0d+h84NXyF
Z0GxkuQwqUk41EAniTn/DVjpKzS9cfdPVKj6hSOlwqhvwwCyhGOapHVSaWGPOE/B
vm7HItuV06RQ1e4KmV6E0mSxxGMk4GjP4Rb/IM4GWh8k62lDV91GFmPFylgweHbJ
avwQAiZcBqfNKeDYzwXHiXvtE3/V/Q==
=f7Li
-----END PGP SIGNATURE-----

--Sig_/oj/SGlI7l+DwsLu.L=SzsgF--
