Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0D3FB8A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 17:06:30 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7A6042F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 17:06:29 +0000 (UTC)
Date: Mon, 1 Aug 2016 18:06:13 +0100
From: Mark Brown <broonie@kernel.org>
To: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <20160801170613.GV10376@sirena.org.uk>
References: <20160729111303.GA10376@sirena.org.uk> <2525670.QGOuaEkzC4@avalon>
	<93f7ce34-c2e9-583f-2e6f-1f23ae76a761@xs4all.nl>
	<a4640467-d916-d52c-a905-152a53251f94@metafoo.de>
	<20160801105531.2687069a@recife.lan> <579F6049.9030408@samsung.com>
	<63f6e3b4-3a48-182f-e8d5-87e720b60d5d@metafoo.de>
	<579F6C00.502@samsung.com>
	<f612af4e-ddd1-44e3-9d0a-c7540636351c@metafoo.de>
	<579F766F.1000605@samsung.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="aXNiKu4lnbRqA5kZ"
Content-Disposition: inline
In-Reply-To: <579F766F.1000605@samsung.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
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


--aXNiKu4lnbRqA5kZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 01, 2016 at 06:18:55PM +0200, Andrzej Hajda wrote:
> On 08/01/2016 05:43 PM, Lars-Peter Clausen wrote:
> > On 08/01/2016 05:34 PM, Andrzej Hajda wrote:
> >> On 08/01/2016 04:54 PM, Lars-Peter Clausen wrote:

> >>> One option, which I think is currently the most used option in the kernel,
> >>> is to unregister the resource when the provider is removed, but keep the
> >>> resource object alive as long as there are users. Any further operation on
> >>> such object will fail with an error. This works to the point where things
> >>> don't crash, but it wont function in any meaningful way. There is no way to
> >>> automatically recover if the resource reappears.

> >> For me it is not a real solution, it is just dirty workaround to just avoid
> >> invalid pointers. It 'works' only because unbinding is rarely used.
> >> For example, how the device is supposed to work if its regulator or clock
> >> disappeared?

The device isn't supposed to work, just not crash - this is mainly used
for things that are exposed to userspace where we need to keep returning
errors to userspace until they free their reference.  I'm not sure we
can get out of that one.

> >>> Other options are as you pointed out notifier callbacks that allows the
> >>> resource use to be aware that a resource has disappeared and it might adjust
> >>> and continue to function with limited functionality.

> >>> Another option is to teach the device core about critical resource
> >>> dependencies so that a consumer is automatically unbound by the core if any
> >>> of its resource dependencies are unregistered. The device can also
> >>> automatically be re-bound once the critical resources re-appear.

> >>> The most likely solution is probably a mixture of all of them.

> >> If we implement callbacks, we do not need other two 'options'.

> > Having to manually register callbacks for every resource in every driver
> > will result in a massive amount of boilerplate code. I'd rather avoid that.

> You can use helper to monitor multiple resources in one callback - it
> should not increase the code significantly. As I wrote in other e-mail I
> send already RFC in which the code in the driver was even shorter
> than before. See [1].

I think a lot of the difference between the two cases above is just
about where the default callback comes from and how it's presented to
users - having the driver core able to handle critical resources doesn't
seem hugely different to providing a list of resources and offsets into
driver_data in the struct driver and having a default callback that
calls probe() and remove() with an already allocated and initialized
driver_data.  That'd definitely cut down a lot on bolilerplate code, but
there's problems with the driver trying to clean up when removing (eg,
disabling things) when some of the resources it used are in the process
of being removed themselves.

--aXNiKu4lnbRqA5kZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXn4GEAAoJECTWi3JdVIfQUMAH/j6gqfwJRWfEph8eBbYX1bLp
+ZjkW6WsCKVxM0WI8xtlaWUNMzksZILY7JACHFPT1LenyIBXrxdjcxuu00S9WLse
ow8/yTYDKYzPv3ne6QmsoP9igMtyshpTpQ3u+1Um81Ybv8LQB8AmYQ0UR3/t9bLG
56DcdlgCEIifM1EbIwbqguCU9cSztqYC0XuVeJCj6Ge7+Q7fg4UBdqociRfP3nCC
0vWFjsYDulJ+DZ3ta2tJIftuGing/maB+M7ifbHYmHNGLdyXkiJ8gMAQmZ2sSX/S
BZVM6uXi9CB5sJORunhzfaqpfIbP86bScsHOxqSklRqUhmykq4M0p3ziz9e7+O0=
=MwPy
-----END PGP SIGNATURE-----

--aXNiKu4lnbRqA5kZ--
