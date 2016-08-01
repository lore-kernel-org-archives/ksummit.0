Return-Path: <lars@metafoo.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0D1108A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 18:21:51 +0000 (UTC)
Received: from www381.your-server.de (www381.your-server.de [78.46.137.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 04BD51C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 18:21:48 +0000 (UTC)
To: Mark Brown <broonie@kernel.org>, Andrzej Hajda <a.hajda@samsung.com>
References: <20160729111303.GA10376@sirena.org.uk> <2525670.QGOuaEkzC4@avalon>
	<93f7ce34-c2e9-583f-2e6f-1f23ae76a761@xs4all.nl>
	<a4640467-d916-d52c-a905-152a53251f94@metafoo.de>
	<20160801105531.2687069a@recife.lan> <579F6049.9030408@samsung.com>
	<63f6e3b4-3a48-182f-e8d5-87e720b60d5d@metafoo.de>
	<579F6C00.502@samsung.com>
	<f612af4e-ddd1-44e3-9d0a-c7540636351c@metafoo.de>
	<579F766F.1000605@samsung.com> <20160801170613.GV10376@sirena.org.uk>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <8a7ddcd0-cbe6-2abe-eeb6-d1264af64c89@metafoo.de>
Date: Mon, 1 Aug 2016 20:21:33 +0200
MIME-Version: 1.0
In-Reply-To: <20160801170613.GV10376@sirena.org.uk>
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="aHB9Pxc3ChIhmLL5qCoFH35tuLsfNkIT6"
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
 and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--aHB9Pxc3ChIhmLL5qCoFH35tuLsfNkIT6
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 08/01/2016 07:06 PM, Mark Brown wrote:
> On Mon, Aug 01, 2016 at 06:18:55PM +0200, Andrzej Hajda wrote:
>> On 08/01/2016 05:43 PM, Lars-Peter Clausen wrote:
>>> On 08/01/2016 05:34 PM, Andrzej Hajda wrote:
>>>> On 08/01/2016 04:54 PM, Lars-Peter Clausen wrote:
>=20
>>>>> One option, which I think is currently the most used option in the =
kernel,
>>>>> is to unregister the resource when the provider is removed, but kee=
p the
>>>>> resource object alive as long as there are users. Any further opera=
tion on
>>>>> such object will fail with an error. This works to the point where =
things
>>>>> don't crash, but it wont function in any meaningful way. There is n=
o way to
>>>>> automatically recover if the resource reappears.
>=20
>>>> For me it is not a real solution, it is just dirty workaround to jus=
t avoid
>>>> invalid pointers. It 'works' only because unbinding is rarely used.
>>>> For example, how the device is supposed to work if its regulator or =
clock
>>>> disappeared?
>=20
> The device isn't supposed to work, just not crash - this is mainly used=

> for things that are exposed to userspace where we need to keep returnin=
g
> errors to userspace until they free their reference.  I'm not sure we
> can get out of that one.
>=20
>>>>> Other options are as you pointed out notifier callbacks that allows=
 the
>>>>> resource use to be aware that a resource has disappeared and it mig=
ht adjust
>>>>> and continue to function with limited functionality.
>=20
>>>>> Another option is to teach the device core about critical resource
>>>>> dependencies so that a consumer is automatically unbound by the cor=
e if any
>>>>> of its resource dependencies are unregistered. The device can also
>>>>> automatically be re-bound once the critical resources re-appear.
>=20
>>>>> The most likely solution is probably a mixture of all of them.
>=20
>>>> If we implement callbacks, we do not need other two 'options'.
>=20
>>> Having to manually register callbacks for every resource in every dri=
ver
>>> will result in a massive amount of boilerplate code. I'd rather avoid=
 that.
>=20
>> You can use helper to monitor multiple resources in one callback - it
>> should not increase the code significantly. As I wrote in other e-mail=
 I
>> send already RFC in which the code in the driver was even shorter
>> than before. See [1].
>=20
> I think a lot of the difference between the two cases above is just
> about where the default callback comes from and how it's presented to
> users - having the driver core able to handle critical resources doesn'=
t
> seem hugely different to providing a list of resources and offsets into=

> driver_data in the struct driver and having a default callback that
> calls probe() and remove() with an already allocated and initialized
> driver_data.  That'd definitely cut down a lot on bolilerplate code, bu=
t
> there's problems with the driver trying to clean up when removing (eg,
> disabling things) when some of the resources it used are in the process=

> of being removed themselves.

Yes, when I read callbacks I though about having to have individual
callbacks for each resources and the driver needs to manually track which=

are already available. Whereas this is has the tracking implemented in a
framework which is closer to what I meant by the core tracking option. In=

the end probe() is also just a callback.

The question is just about what level of integration into the device driv=
er
core do we want.

What restrack effectively does is split to split probe() into a top and a=

bottom half. The top half establishes the dependencies and the bottom hal=
f
runs once all the dependencies are met. In this particular implementation=
 th
bottom half runs outside the scope of the device driver core. Which means=

the device driver core assumes that the device has successfully probed on=
ce
the top half (the real probe() callback) finishes.

Another place where ordering is important is suspend and resume. We want =
to
avoid suspending a resource provider before the consumer. The default
suspend/resume order that is established by the device driver core depend=
s
on the probe order of the devices. Suspend runs in the opposite oder, res=
ume
in the same. Together with EPROBE_DEFER this makes sure that a consumer i=
s
suspended before any providers it might depend on. Not waiting for the
resources to become available before probe() succeeds will break this. So=

this is something that needs to be addressed by either by integrating pm
support directly in restrack or extending the device driver core to nativ=
ely
support two stage probe with the device only being considered fully probe=
d
once the second stage has completed.



--aHB9Pxc3ChIhmLL5qCoFH35tuLsfNkIT6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXn5MzAAoJEOj3aLScRbOZ29cP/jNaQrRlrEAzjtlJ9kC2Pw9T
4y9unmtG7so1Tm5YEjFs6Un4kWPB0tPoZw5OKDcisvdkzhYaqYR7uo8csd/t7Z/a
AN4m719wfwLU4QgvOPtDFiz+pLYeOJG9bMAKcihvFErCUaEv8vUO6yBA1gTT2ZCF
e8TF+ETPQqQZlTfPoVhJBN0nLZTSfKIytUyo0Caji3+eRSXPpJUheLBBfOLYxAc0
y0r/phXQskBSrOTqcXoGqxxkfLHcPfkSfaHm7zb8U2/v8ve1Ua7/NPI1IJXG1dQF
4Tcw6b2cz6ouM/ZO3gwJeDqLzXkFruf8uN86Ayzb9e62KqQ3KVAhwcrs2HCSlK3x
qMiT3u+ziBtGjsfsEj2rBHQwQatXtFg9+Qy2zgFax3Bbh53jHBPZdnvETvy+V+0O
tcY1u05VgbFynOXtWBWWRm+2GRJhDfZoJm3gvnzOUWqVKq2ap1Vz/JsLkw7pd4+l
7CJgUK/Ko9C99ATcIxzwwF0/Mo77kWU+mtNcyBwZDA/sCakQ/+aMUV30mDWCP+oY
j1LxwCA9Na+Z+FKc3oWcQ41fxvwTZOgra49e2iiSwbEV0Gsq5IcdofhGcSmv2omw
jnd3VN/RdxJrqdpA18SFs20w85O3+uzHqOW10LmZ8y3f5tq5o+BKPeE43P6+YsHW
zZVTuT1kBV0l9RMRqZpi
=QGPw
-----END PGP SIGNATURE-----

--aHB9Pxc3ChIhmLL5qCoFH35tuLsfNkIT6--
