Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5F45F7FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 17:17:19 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 071101DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 17:17:18 +0000 (UTC)
Date: Tue, 4 Aug 2015 18:17:05 +0100
From: Mark Brown <broonie@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20150804171705.GY20873@sirena.org.uk>
References: <CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723202901.GA30318@amd> <20150729133244.GH20130@sirena.org.uk>
	<20150731122227.GA31877@amd> <20150731175215.GJ20873@sirena.org.uk>
	<20150731220306.GA7867@amd> <20150801105522.GP20873@sirena.org.uk>
	<20150801190357.GA25683@amd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="b14Ixf2MZI3/ZLt4"
Content-Disposition: inline
In-Reply-To: <20150801190357.GA25683@amd>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	riverful.kim@samsung.com, kyungmin.park@samsung.com,
	John Stultz <john.stultz@linaro.org>,
	Bjorn Andersson <Bjorn.Andersson@sonymobile.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--b14Ixf2MZI3/ZLt4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 01, 2015 at 09:03:57PM +0200, Pavel Machek wrote:

> That still leaves these reasons to route it though the CPU:

> * ability to record calls

This is usually done by routing the audio to both the baseband and CPU
simultaneously - this gives you the recording without taking the
latency hit in the call data path which makes life a lot easier. =20

It's not that the hardware *can't* route audio to the CPU usually, it's
that call quality is extremely sensitive to any additional latency in
the path and mobile communications are inherently at the high end of
what's acceptable so system designs generally pay attention to ensuring
that no additional latency is introduced (like will tend to happen if
you have a general purpose OS pushing data around, or in general extra
copies).

> * ability to do signal processing on the data, like echo cancel for
>   speakerphone (or perhaps changing your voice to female one)

Right, typically if the system was intended to have these things (I'd be
surprised to see something ship without at least echo cancellation)
there would be some dedicated DSP in the data path implementing them
already.  Some of the applications really need extremely low latency
sample by sample operation which requires a dedicated processor anyway.
This is often part of the baseband, though there can be audio DSPs
elsewhere instead or as well.

> * ability to do advanced stuff like GSM-to-VOIP gateway.

Yes, though that's a completely different use case and is going to have
latency problems anyway.

--b14Ixf2MZI3/ZLt4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVwPORAAoJECTWi3JdVIfQQj4IAIFwzLKsqEjVIHMGS2cs2Mo/
7fMqLMsRrR6mbbCXRaO98AzXSsSPMRBtHyHtTdKGOklhhnVankyWUOuEL7s+SDm6
uxygUa9lUlnTOXXsXQgGex+Enna1F1DHKRsqrVUut67LqBasqU/iWw4eses8MkW1
Q/WbFUy52eTw5UxvMykvumLLSZAJ0cB3CYfwlDFGzKSkkWROc7vLD3qRn6y0pddk
qHOAd4FZjxLkcgUJgidmSn0KYnZn1e9fFQ5VZCxUnseLMMqV2lhA7GWa0brzjMgy
QqFyNe7moX83FkJwBF+PEnkg6q6ESJ5Ll/lSFNiF42TXg53M7a3egO7J3trLb6A=
=kx27
-----END PGP SIGNATURE-----

--b14Ixf2MZI3/ZLt4--
