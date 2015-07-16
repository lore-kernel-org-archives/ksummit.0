Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7936FACC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 18:37:08 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D59C614E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 18:37:07 +0000 (UTC)
Date: Thu, 16 Jul 2015 19:36:59 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150716183659.GW11162@sirena.org.uk>
References: <20150710222351.GA28632@kroah.com> <20150711000034.GU111846@vmdeb7>
	<20150711001348.GA30675@kroah.com> <20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
	<1437063875.18768.59.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IyX+qZsYMJ8Y4LOh"
Content-Disposition: inline
In-Reply-To: <1437063875.18768.59.camel@HansenPartnership.com>
Cc: Jason Cooper <jason@lakedaemon.net>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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


--IyX+qZsYMJ8Y4LOh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 16, 2015 at 07:24:35PM +0300, James Bottomley wrote:

> Seriously, what is the actual problem?  Who bites the heads off newbies
> for sport?  I ask because the first patch submission is usually treated
> with helpfulness and tolerance, at least where I've been on the cc list.
> The wrong phase of the merge cycle can be a bugger, particularly when
> most people's attention is elsewhere, but it's not like it's a huge
> deterrent.  We all have developers who'd rather spit rats than submit a
> patch to $opensourceprojecttheyfoundabugin but then, it's sometimes
> because the reply might contradict their own mythology (or question
> their reputation).  Before we embark on a huge does of hair shirt and a
> lavish process dump, what is the problem we're trying to solve?

I think a lot of it is about perception - the whole "Linus will scream
at you for minor issues" meme is pretty strong out there and shapes
perceptions regardless of how true it is.  That said I do think there's
a couple of things that are real.

The response time issues being discussed elsewhere in the thread are
real I think - they are the biggest problem I see when I'm helping
people with patch submissions.  People get very discouraged when they
send something off and either get no response at all or find it
takes a while, they have difficulty in figuring out how to get people to
pay attention.  This is unfortunately quite common.  It's a really
difficult problem to solve with our workflows, at some point submitters
have sent a mail to the right people in close enough to the right format
so the maintainers *should* look at it but still the submitters don't
hear anything back and next steps aren't terribly clear.

I know there's also some stuff that's down to brief replies rather than
active hostility - I'm definitely part of the problem here, I need to
write a bunch of longer form replies and get a workflow for pasting them
into email (actually I think I've got that bit) sorted out.  Type the
same reply a lot and it's easy to optimise it down to brevity.

--IyX+qZsYMJ8Y4LOh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVp/nKAAoJECTWi3JdVIfQZfAH/1G9coEvXXdaJycn1rXLNmwB
0PDpbd0KnZec3GBqwupAZGKH229vppj9MjttWtW5IG9/6xrbYMUvoNmMbkjslvNU
U9Hs9RLaxD3E7fTfpggL5XCqqJ7ZpsQa9Ja3LRLux30G4S4vuKdFe/9rubK1NjeW
G4NOKwgFwVyaGtM4leL/BU9DadMrhiVULqI6peOnW0DJwsSTFtA8jH8uB1u6FG69
CoV2SXp2VgYysnw05bqnTUwDPcTV7fmS1cWxSoFXQuep0qwbVGF7hchg/vJFSZww
GDo1XnCxmZkma6xpl+xXBOZPLU8sULcw6Zt3cwFO5FX7lMtWo/+TEYNQngq71IY=
=Yk0l
-----END PGP SIGNATURE-----

--IyX+qZsYMJ8Y4LOh--
