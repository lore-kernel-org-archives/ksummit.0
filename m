Return-Path: <broonie@sirena.org.uk>
Date: Mon, 11 Jul 2016 18:44:53 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20160711174453.GF3701@sirena.org.uk>
References: <alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<5781148F.1010102@roeck-us.net> <20160709212130.GC26097@thunk.org>
	<20160711151300.GB3701@sirena.org.uk>
	<20160711170333.GE3890@thunk.org>
	<20160711171146.GD3701@sirena.org.uk>
	<CAOesGMiBo=tVJcyBmCtanvEWNzX+6oNUn_5ou4O_EzCv6QkOVA@mail.gmail.com>
	<20160711171718.GE3701@sirena.org.uk>
	<20160711172455.GA27538@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6v9BRtpmy+umdQlo"
Content-Disposition: inline
In-Reply-To: <20160711172455.GA27538@roeck-us.net>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--6v9BRtpmy+umdQlo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 11, 2016 at 10:24:55AM -0700, Guenter Roeck wrote:
> On Mon, Jul 11, 2016 at 06:17:18PM +0100, Mark Brown wrote:

> > Probably also worth mentioning that this was one of the blockers for
> > getting kernelci.org testing Greg's queue for quite a while - it only
> > knows how to consume git branches.

> Kevin ended up pulling git branches from my repository, so that wasn't an
> absolute blocker. One key advantage of having the queue in git is that it is

I'm aware of that - obviously it's possible to go in both directions but
it does mean that someone needs to do the translation which is a bit
less obvious than the translation in the other direction.

> always consistent - the quilt queue was not always in sync with the -stable
> baseline, especially right after a new stable release. Another advantage
> is that the git repository can be tested by 0day.

Right, it's just generally more likely that tooling will be able to
consume git than anything else.

--6v9BRtpmy+umdQlo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXg9sUAAoJECTWi3JdVIfQfeQH/jQf9cAzcVd2Yz1sCJ+PxSTV
arbfan0K2bK9FqNkpCoaa9C8uhrMtmPgvSxos29EYGzijjFIXDKoeZKQ9WAgcnkP
j6DYagUJTUz2JdkuWDRZWlTMHL/e8Z4kpMF5OFbnFnNvsmqPvgCGNr9cIg70vut9
/Pe/Xhv349aqXnFdoen3eUWs4pgt9hl3sO4p4g3IXxTg7+YrdtUuFJr8Oo1b4grh
5hwraV7PCkS/+/npXGsOyW2OpTe6VJpFYGNN0x9A40gv7po92eECIihTl6VU9iDS
tWfcpMfQjuRp7XFDbF4t33QArUfYD11/zKyWIWW9IQctkscdW32rJqKRGIH5dA4=
=PVoW
-----END PGP SIGNATURE-----

--6v9BRtpmy+umdQlo--
