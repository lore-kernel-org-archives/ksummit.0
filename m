Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6FACDA74
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 09:28:49 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D706EA4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 09:28:48 +0000 (UTC)
Date: Thu, 6 Jul 2017 10:28:36 +0100
From: Mark Brown <broonie@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20170706092836.ifcnc2qqwufndhdl@sirena.org.uk>
References: <20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<a462fb3b-a6d4-e969-b301-b404981de224@roeck-us.net>
	<20170705112707.54d7f345@gandalf.local.home>
	<c782a15a-4e73-7373-ca66-5b55e9406059@roeck-us.net>
	<20170705130200.7c653f61@gandalf.local.home>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ptrskp3ixq57ptv3"
Content-Disposition: inline
In-Reply-To: <20170705130200.7c653f61@gandalf.local.home>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Carlos O'Donell <carlos@redhat.com>, linux-api@vger.kernel.org,
	Thorsten Leemhuis <linux@leemhuis.info>,
	Shuah Khan <shuahkh@osg.samsung.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] & [TECH TOPIC] Improve
 regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--ptrskp3ixq57ptv3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 05, 2017 at 01:02:00PM -0400, Steven Rostedt wrote:
> Guenter Roeck <linux@roeck-us.net> wrote:

> > If a test to reproduce a problem exists, it might be more beneficial to suggest
> > to the patch submitter that it would be great if that test would be submitted
> > as unit test instead of shaming that person for not doing so. Acknowledging and
> > praising kselftest submissions might help more than shaming for non-submissions.

> > My concern would be that once the shaming starts, it won't stop.

> I think this is a communication issue. My word for "shaming" was to
> call out a developer for not submitting a test. It wasn't about making
> fun of them, or anything like that. I was only making a point
> about how to teach people that they need to be more aware of the
> testing infrastructure. Not about actually demeaning people.

I think before anything like that is viable we need to show a concerted
and visible interest in actually running the tests we already have and
paying attention to the results - if people can see that they're just
checking a checkbox that will often result in low quality tests which
can do more harm than good.

--ptrskp3ixq57ptv3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlleAr8ACgkQJNaLcl1U
h9DOhAf/aYKdubgLKewIMxoIr5LWDAhJLOcmsoe/gqFbBUrOMhTCiY39mmQQ91MS
F26dit3YThMcj0TPxc9FUeUtRFmD85MHSx+rqDfbCVcOtstuuZuElDa7GUYH+WPJ
U/T3zMcSmNcQHC48/zlWGWpIJA+vARrxMJs/Vey33Mon9QqZYHG37gwcjJWicaIs
9OA3CaFSIZrM7tFGaP+kI8pF1FDXzfm0tn2VSb/yLOOYPsVF6qlLrefY0VaTQ2LT
rIIGb2FWbsb1EcGi3EfhzNAjvJdT9NLJUgAogEjawH+Cph8DxoXwkRHRY4BJxqI4
Oy02yAs0rSUZVUbmZ8/JobYQMpk1hg==
=dAZl
-----END PGP SIGNATURE-----

--ptrskp3ixq57ptv3--
