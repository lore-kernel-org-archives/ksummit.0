Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A6436AC1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 13:26:06 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 35EB9241
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 13:26:06 +0000 (UTC)
Date: Thu, 16 Jul 2015 14:25:51 +0100
From: Mark Brown <broonie@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150716132551.GH4039@sirena.org.uk>
References: <20150708114011.3a1f1861@noble> <2879113.fraeuJIr2M@avalon>
	<20150709193718.GD9169@vmdeb7> <20150710143641.GW4341@mwanda>
	<20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bpVaumkpfGNUagdU"
Content-Disposition: inline
In-Reply-To: <20150715212043.775be5d2@gandalf.local.home>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--bpVaumkpfGNUagdU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 15, 2015 at 09:20:43PM -0400, Steven Rostedt wrote:
> Sudip Mukherjee <sudipm.mukherjee@gmail.com> wrote:

> > Another problem, when a newbie tries to move out of staging to some other
> > subsystem he likes, the maintainer may not be that much responsive. Just
> > for example, i submitted a patch on November, 2014 and I am yet to receive
> > a reply or review to that and the patch was not a style correction patch.

> BTW, it should always be OK to ping the maintainer if they ignore a
> patch. I believe one week is a good time to wait. And again in another
> week if they still do not reply. I know a few maintainers that think if
> they get to a patch that is old and the author never pinged them, they
> think the author doesn't think that patch is too important and they
> just delete it.

Please don't encourage people to send content free pings bit instead
resend it - a content free ping mostly just adds to mail volume which is
pretty much the original problem.  If the patch has actually been lost
then a resend is going to be needed anyway and if not then it's mostly
just adding to mail volume.  With a lot of mail clients (including mutt
which I use) the nag will get threaded in with the original patch buried
back in the mailbox and not even be seen if that's still sitting waiting
for handling.

> I'm sure all maintainers are fine with a friendly ping after a week.
> Don't send a ping before then, because maintainers are busy, and may
> get annoyed by being too pushy.

Not me, they tend to just annoy me for the reasons above.  Resends are
useful but just straight up pings not so much.

I'd say a couple of weeks is a better lower limit than a single week
unless it's a very serious bugfix, a week could easily be a holiday or
whatever and larger patches or patch serieses do take time to review.

--bpVaumkpfGNUagdU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVp7DbAAoJECTWi3JdVIfQW6UH/066kc2pOJOy5pw9pZVpd9qv
KMU/BxEWTInaLMtdv/zwVDu22wJZmiccg/BTLEvwxbrjD7+Wo+hkPW9yxyy1+sfX
9iCpiJo3Cwk1uV4FVcAgVvEy0idgLn/6yycUwufdbLjIIbxBSxd7F1M6Svyw8MBH
QjKAs7sO9JD706RrMB50SfwBxyZF8+IoHbFR0Z0RQyR7K2BzYmBq9fGm/MlC1tQo
Nyh3BW8TigzczW2vveH+wJe1O0miVcwddcO3qAP27NCNjGZ5DlYDUgphcao3/N45
p6ftw6xe/wap2DETiLlDlG1LBbMc7FH5JxNMzgxMVSUOOHr3hW6fpKG0CtlAPuQ=
=waPc
-----END PGP SIGNATURE-----

--bpVaumkpfGNUagdU--
