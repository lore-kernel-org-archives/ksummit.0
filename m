Return-Path: <neilb@suse.de>
From: NeilBrown <neilb@suse.com>
To: Mark Brown <broonie@kernel.org>
Date: Tue, 06 Sep 2016 08:44:01 +1000
In-Reply-To: <20160905110416.GV3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF053D4A52@USCULXMSG01.am.sony.com>
	<87twdv9l0v.fsf@notabene.neil.brown.name>
	<20160905110416.GV3950@sirena.org.uk>
Message-ID: <87a8fm9dce.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
	collaboration
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

On Mon, Sep 05 2016, Mark Brown wrote:

> [ Unknown signature status ]
> On Mon, Sep 05, 2016 at 11:45:52AM +1000, NeilBrown wrote:
>> On Sat, Sep 03 2016, Bird, Timothy wrote:
>
>> > Where we are now with some of these SoCs is at millions of lines of
>> > code out-of-tree.  It's being reduced, slowly, but there are still
>> > significant areas where the mainline kernel just doesn't have the
>> > support needed for shipping product. My pet peeve is support for
>> > charging over USB, where Linaro has had a patch set
>> > being stalled and/or ignored by the USB maintainer for 2 years!!
>
>> Do you have a link to that?  I have an interest in charging over USB.
>
> This is it:
>
>     https://lkml.org/lkml/2016/7/1/35
>
> it's been more like one year than two and there has been progress but
> there's also been an awful lot of latency in the process too.

Really?  That is worthy of a "pet peeve"?
The patch set does highlight an important area of missing functionality,
but doesn't (IMO) display much understanding of the problem space.  I'm
not surprised it hasn't made progress.

Maybe I should reply to the patch directly.

Thanks,
NeilBrown

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJXzfUxAAoJEDnsnt1WYoG5WGAQAK9KmWnPsfPKam5gmfYDd5gO
7pB2tI4QI1/dDsU8IzU0HODr/b9PgXVdcc2vTFx6lWDk1jPZuasqkywy3oJfWosU
gxPOmvzE1GaG4+J/C4Ziu8rtJxiuic3lczEqCJflVdoGvEJmSCG58zU/6tqiHW+G
9Fgwr5OqjC6VOdNINGtsJZjYQhxzqp+G0C5wuOi2hNLjMBluaPE1+BpbRkQVINQi
2qDuX4ayt/DUIkHNjNHB+z2U6prgxz+Tk+OTmBoIFV6SBQ9o/BMmS3o05f4M72Jl
uR8ZzJyZv5u6ooN+3wffDW4puRfcuOTMGw6gAmEkzoO+CaAbOx+mUGhwexvcLD6n
eUp/OwV7BYzG9RibOH8ukQBx/CzqFfytU56mS0hgV6qme3QdMQO5EepfSuYBq28i
0ogKKGIkTebdZJ79jUVa/+xPsxsNg/LdHQqtR/OZjR2xS6D1MKc9YMmabHMtdWOU
uC1PY9k+RAlwHSnkeNbhYq1xrrkhVDpb+RrWSG5SgfLDmchHATT113qwS5Evzusl
G0F20MkQWrfZMQzzf02i66/Oqglx2NrMjsrM2e5ZWhTjqb+6dwZFI2wQCP6WQqmI
+GhG/jQoQxxwcaHFx1lvePXGFxPtNUmw26hLKGTk08W8FY9QlEbky8/957lnE/C/
r9toasAr7fhv7uYF+sLo
=3enI
-----END PGP SIGNATURE-----
--=-=-=--
