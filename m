Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6A5F8990
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 16:46:25 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0462F1FDEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 16:46:24 +0000 (UTC)
Date: Thu, 29 May 2014 17:46:00 +0100
From: Mark Brown <broonie@kernel.org>
To: Ben Hutchings <ben@decadent.org.uk>
Message-ID: <20140529164600.GO5099@sirena.org.uk>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140525222923.GW15585@mwanda> <1401119598.3303.6.camel@dabdike>
	<alpine.LNX.2.00.1405271634080.28869@pobox.suse.cz>
	<1401224020.14454.92.camel@dabdike>
	<alpine.LNX.2.00.1405272316000.17241@pobox.suse.cz>
	<yq1zji2hif7.fsf@sermon.lab.mkp.net>
	<1401323745.14007.51.camel@deadeye.wl.decadent.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="zBPbvmIlJjvpbu6L"
Content-Disposition: inline
In-Reply-To: <1401323745.14007.51.camel@deadeye.wl.decadent.org.uk>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--zBPbvmIlJjvpbu6L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 29, 2014 at 01:35:45AM +0100, Ben Hutchings wrote:
> On Tue, 2014-05-27 at 20:10 -0400, Martin K. Petersen wrote:

> > There are a few companies in the enterprise space that get it. But in
> > general it can be quite the challenge to get these vendors to see the
> > value of being good Linux citizens. And these companies are much less
> > susceptible to phoronix rants than entities producing consumer widgets.

> For consumer widgets, it appears that most vendors don't update the
> software, so they won't care that any out-of-tree drivers may break on
> the next kernel version.  In fact, they're likely to be starting with
> their SoC vendor's kernel tree which was forked a few years ago and has
> a ton of dirty performance hacks in the core.

This is very true, to a good approximation nobody in the consumer
electronics space cares in the slightest about upstream - it's just not
useful as-is.  These days it's likely to be the current Android kernel
at the time the SoC was current.  There is some pressure from some of
the more clueful system integrators to be working with upstream, partly
for bringing things forwards on new devices and partly for leveraging
the review.

> > Vendor driver release cycles are often tied exclusively to new silicon
> > availability and internal firmware release schedules. Many vendors pay
> > little to no attention to Linux development cycles. Furthermore, driver
> > code is often shared between several operating systems so every patch
> > needs to undergo IP/legal review before it can be submitted upstream.
> > Internal commit messages often have partner references, bug numbers,
> > code names, etc. in them. So it's typically easier to just drop the
> > patch description than rewriting it and have the new text reviewed by
> > the legal team.
> [...]

> I never had to go through legal review, though I certainly sanitised
> some commit messages based on my own knowledge of what product
> information was and wasn't already public.

Indeed, particularly around errata.

--zBPbvmIlJjvpbu6L
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTh2RFAAoJELSic+t+oim9MnwP/jnaARq9QEH179PcEnWk57Sk
b0J6lX2Hot9CCa0L/bWkkKRBsWfnIheQKGZQ3FXDi4sRuJc7vnFM4+nU9lkFMX5C
Z3bGrUxqx6hqLQDJd8aRunCobD46I5cRaNHKMdqCpb0js2f0jxzSfHBT9daYDfse
PikqtEl3wcwitoEDYYtECbM42BsiLqPlOvEPUghY9RMaLIsD8KhHNDfKSzWF7sjq
+6inSluFnPInC7k84v+P576AA8bCtlTJQxRCaPl1N1uJ00spzbdVt6QO1DpTl9Kb
iIq5twZxtklUl25UnaxQEE2Lgb1GI2eMn2PnMS/la3vzaxTrk6gzzVe9r42hwGeY
PrbrswUOxY5ee+b/K0Mo14TqgXwxBoZngn5h+P1aoTPbdz9lpnk3uzdkSmWSpAfw
MUVABiGECutWQggifhdXRx0jDjwF+QKVGJzUotpAdTKEd0SVSRNeGPuKd93L47mJ
aOdbClFL1C3gAgJK/+uN8quOEhu7xjlkMyJCay0wxg3YnKZocANpd3urlCOCE0ja
FmMvvAVnAKhx+7xACwQoJUZ+/9jdKxBdXrftlht64Gh1iyUxzAmPpKDes+fzvsDb
BJROeH7Jsyc4xou3CMFJMg/Ykw7tjVU3GJaT2QddlazMEZTMQRih9q/Z71kNw5ax
xc9UsZDfakSKJWW54ayd
=OuKh
-----END PGP SIGNATURE-----

--zBPbvmIlJjvpbu6L--
