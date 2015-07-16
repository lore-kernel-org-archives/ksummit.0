Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9EFCD9FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 14:42:10 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2459F28D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 14:42:10 +0000 (UTC)
Date: Thu, 16 Jul 2015 15:41:55 +0100
From: Mark Brown <broonie@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150716144155.GM4039@sirena.org.uk>
References: <20150709193718.GD9169@vmdeb7> <20150710143641.GW4341@mwanda>
	<20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rf72Gf+bfLC8kxKs"
Content-Disposition: inline
In-Reply-To: <20150716094720.2bf9f5ac@gandalf.local.home>
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


--rf72Gf+bfLC8kxKs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 16, 2015 at 09:47:20AM -0400, Steven Rostedt wrote:

> Well, then to each their own. I prefer the content free ping, because in
> my mail client (claws), it brings the original patch up to the front
> (my threading is to sort by latest email in the thread). A simple ping
> will move their patch ahead of other patches that may have been sent
> later, but are still in the abyss.

Interesting, not noticed a mail client with that sorting scheme before.

> A resend will just be a duplicate in my inbox and it will confuse me
> about why I have more than one of the same patch.

That happens often enough anyway due to people sending new versions in
response to other review comments or similar so I find I need to cope
with discarding old copies of things anyway.

> > Not me, they tend to just annoy me for the reasons above.  Resends are
> > useful but just straight up pings not so much.

> Then a simple reply to that content-free ping to tell the author what
> you prefer. In fact, that's what I do when they ask me about it. I
> sometimes even try to send a reply when I get the original patch
> (privately to the author from my phone) that tells them to ping me in a
> week if they don't hear back from me.

That's what I do (or just ignore them if I already have the patch) but
it does get rather repetitive and adds to the mail volume which is part
of the problem.

The basic reason I advise people to resend is that if a maintainer has a
resend in their inbox they should have everything they need to handle
the patch then and there, there are fewer things that can go wrong with
that than with a content free ping.

> > I'd say a couple of weeks is a better lower limit than a single week
> > unless it's a very serious bugfix, a week could easily be a holiday or
> > whatever and larger patches or patch serieses do take time to review.

> The time length varies from person to person. Just let the author
> know what you prefer. From developers I've talked to (including
> myself), a week seems to be the norm to wait. Anything less is an
> annoyance.

Less than a week is of course far too fast, it's a good way to get
ignored.  On the other hand a week definitely does seem to too fast to
be telling people to use as a starting point, my own experience
submitting patches and watching other people submitting patches is that
a week is definitely not an unusual time to have to wait for non-urgent
things to get handled, I only tend to start worrying that things
might've been missed after a couple of weeks.

> One of the issues with newcomers coming to development of the Linux
> kernel, is that every maintainer is different. We should be trying
> harder to let people know what we prefer. Every maintainer expects
> something different, but it's up to the maintainer to explicitly let
> others know what they want. You can't expect everyone to read your
> mind.

I basically agree with that, what I'm saying on the response time is
that I don't think you're setting realistic baselines for people.  A
week is just not what's actually happening in large parts of the kernel.
There are some people I'd expect to respond within a week in the normal
course of affairs but there are more where I wouldn't worry about it and
even the more responsive people are often slower on larger changes like
new driver submissions.

--rf72Gf+bfLC8kxKs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVp8KyAAoJECTWi3JdVIfQb2wH/3RDN+Bez7Kd7PfdG8GPb8fc
wEV7lx2tT4aG4P4e7E9bc/ZaiTIJsF+8gsbJU4hBBw4mq6TX2/N6cOE8+OJ0sUbl
2idMsA/VoClSXnUqS/kXDe57+MOcYWh3dgwy4NEjLViVb48ri/izlKqmcLURVJab
q6lob+ribAEgOMYy6JtltXjfQ/rp9aFw/5c78MCjeMLzvFkgGCr0vYTWmhjdtYIU
HQv2dbT6hGrgEHilWLb3mjbH4jXqc188eG7RCC4W1zbzJhJL6sE6Uwk/x83skDH2
GcuGcR6yI1oTqDexrJA0ZuhsxnIFCXigk2SLNd+0FlIgHESklPKP8N1p9L0vvx8=
=zlHX
-----END PGP SIGNATURE-----

--rf72Gf+bfLC8kxKs--
