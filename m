Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DF1FF9F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 16:30:44 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5FA40131
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 16:30:44 +0000 (UTC)
Date: Tue, 25 Aug 2015 17:30:34 +0100
From: Mark Brown <broonie@kernel.org>
To: Shuah Khan <shuahkhan@gmail.com>
Message-ID: <20150825163034.GB12878@sirena.org.uk>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<CAKocOOP19WowbqaUBxESDd5Q5E4fPYpgPvKTqMn8JhTEhqJEAw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XOIedfhf+7KOe/yw"
Content-Disposition: inline
In-Reply-To: <CAKocOOP19WowbqaUBxESDd5Q5E4fPYpgPvKTqMn8JhTEhqJEAw@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Emily Ratliff <eratliff@linuxfoundation.org>, shuahkh@osg.samsung.com
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--XOIedfhf+7KOe/yw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 25, 2015 at 09:15:32AM -0600, Shuah Khan wrote:
> On Mon, Aug 24, 2015 at 10:35 AM, Kees Cook <keescook@chromium.org> wrote:

> > I agree with the sentiment here, but not with the language. Finding
> > flaws (which is what selftests, KASan, Trinity, etc do) isn't
> > hardening. Hardening is stopping the exploitation of flaws. The
> > hardening the kernel needs is about taking away exploitation tools,
> > not killing bugs. (Though killing bugs is still great.)

> I agree with Kees on this. Kselftest or any other test suites can help
> with regression testing and make sure Kernel works the way it should.
> Also these tests can tell us if kernel is hardened or not.

> Hardening means something different to me. i.e making sure kernel
> can protect against attacks and fail gracefully. This is something to
> address during design and development process.

Testsuites can help here if we get into the habit of making sure they
exercise error conditions; they're off to the side a bit but they can
be a useful way of promoting good practice (at least in my experience).

--XOIedfhf+7KOe/yw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJV3JgqAAoJECTWi3JdVIfQ5ygH/jbLwdooGnCpKLKgJ3WiAcQs
7w7Xm9rHD5wajyY1nPBzcHpWl2mFk8p+oZ7gQJAMJZYi3di/qv3HnUMcH10PkamE
VXwYIwvyPtlOloysDMRU4RkYZkU45SQY/Fu/7q4eQPFLwjXlOorztizW1lxqUWb/
EJ0huTY607o2xwF1W7W4HPri/qW/AS7Jc67gep4J10XMiNK93MHeOxyFGBngwRO4
ju2smqVHVVw7kiO1RGUuYz6Xo565Gd0+IBRUCoocb0Qklum1xupm2mwjreHEW5gf
MDg94hvw4xAzn93pa9keelhNRXvue3c981O3uWq7Y1pQxSRaIz1aW3RIQmkJtlY=
=P6Ip
-----END PGP SIGNATURE-----

--XOIedfhf+7KOe/yw--
