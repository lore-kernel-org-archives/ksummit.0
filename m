Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A722EA749
	for <ksummit@lists.linux.dev>; Tue, 18 Aug 2026 16:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787071851; cv=none; b=mR5QJmArvas8WCaltUVRNSghHPRA8oQzg5r0h5pO99mmmPrx4PApOcOljkuZmZdIZokylQbeg4IeGtBCOdsgI9ZJQ5DZUHjbnjkuigodqL7NDjNW9CRrfPbsNC56POq9wAreBzVWcgof1zN5Es4PJqARLsklnDnLMCfrN2sZ0mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787071851; c=relaxed/simple;
	bh=674aCT5W3njV0scAfZWWeZIeQFCBBTU3wlpdWshFzME=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ar10cdmaSP1P/T2v7k73ereWoZPMt4whC98+JVf51Zkh6mdQB+xwqE/p9CIJuC2ntqPGgoHjWg0vwlEnq52pMbkskddoptwkOpF6Uc5FfxSKEQqvSEOL+OiogVQnMz2fxovAqh3YZKn+GzJ9uyD21EZMVfYU7TdZsYXhetoh6Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZRJjFUh; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZRJjFUh"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AA631F000E9;
	Tue, 18 Aug 2026 16:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787071849;
	bh=/AqysMu/AHnBxCB9zWusQyh7Iat99WLi49/L81JeHrM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HZRJjFUh+dB/wauBLGBJ9fsrF1QEWCREuRcFnNh9oLW+L97yvIB0p4pFZrkHC5zpS
	 zRgJZKLzmG9PO+2EWqySwd60uzRHftsXMsvHNkJ8TbdIzW9/JOr9Xkc9eL50XCW5m+
	 K6g3OdymFHvOV4Micrh3YrqselJRL9bZcJldVAzUuT45+aV5pilqVpSagGr9YB7UTz
	 sW+4qU1EbeDP16rk2MAzUWr1JdJfFDKUNyw7uI/IA+pwGqOOozj5SsyDdq3C6klWKE
	 HJ6nq7n1/ru5mJXV1r28YZFBpoYIAJMJvM66PwaMJL+cjxN/iwHaGAUj6Cy5T5/h/v
	 /fHeZbBiyWCoA==
Date: Tue, 18 Aug 2026 17:50:44 +0100
From: Mark Brown <broonie@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Dave Airlie <airlied@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Simona Vetter <simona.vetter@ffwll.ch>,
	Steven Rostedt <rostedt@goodmis.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <bf49df4c-f879-4856-b47c-b3cda80fed30@sirena.org.uk>
References: <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home>
 <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
 <CAPM=9twB=hJURcbdaiDZjkEeUHTLmOLAoxnD+g0zGTTMq3nySw@mail.gmail.com>
 <CAMuHMdVBABOiOWDdCKE0zDffj856ui5qr3UFVptwcAn1_Hx7oQ@mail.gmail.com>
 <ant9_jhefKix5TGu@intel.com>
 <5aa1aa71-3eb5-469e-b285-94df94ac5bef@sirena.org.uk>
 <CAPM=9tzNxPUJGwzabdEwGiTrZER6VBHHDgaOq2bn+zBeFusjCQ@mail.gmail.com>
 <3a382504-6bff-45c0-8b05-3982e604d7c1@sirena.org.uk>
 <e5bde7b3a9093fa4a9b27f47a3bea9f8c5a6101f@intel.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3ezD4zFPUlDuvype"
Content-Disposition: inline
In-Reply-To: <e5bde7b3a9093fa4a9b27f47a3bea9f8c5a6101f@intel.com>
X-Cookie: Smile!  You're on Candid Camera.


--3ezD4zFPUlDuvype
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 18, 2026 at 12:38:08PM +0300, Jani Nikula wrote:
> On Thu, 13 Aug 2026, Mark Brown <broonie@kernel.org> wrote:

> > That'd be helpful, thanks -  I guess you're going to annoy someone
> > either way unfortunately but at least the commit not in mainline issue
> > would be transient.

> We use the drm subsystem maintainer tool for cherry-picks, and it uses
> the -x option.

Ah, so they are - I did do a spot check but it looks like I managed to
find some of the few directly applied fixes.  I think I usually miss
the cherry-pick -x annotations because they end up buried in the block
of signoff information.  Sorry about that.

> If you have any suggestions for helpful but non-intrusive additional
> annotations on cherry-picked commits, it should be easy enough to update
> the tool. And perhaps the annotation could be more widely adopted as
> well. It's not like nobody else ever cherry-picks, we just do it
> more. The annotation could still be the same.

The stable ones where the annotation goes at the top of the changelog
are a bit more noticable?

--3ezD4zFPUlDuvype
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmqEjWQACgkQJNaLcl1U
h9BVBwf/WxCzud14etdRlCJqzpeZqqaO2HFCrcPosaTNd6BubD2bi2GaSuguIOze
WLsqaRf2O8cz4E0F19pWR96j3eUtA3X283rycPcKudNh+A6z3D/+5RbDNPWlWLZv
ZyY8+0Pj6XqnF5Wtg7pwL6un2oCnl8bVpZHgaR5P5w0ip5Y8lizrsrgC/PQ7n5kb
JhCGYphmbjuNFjs16Ln1YEvulgjoYCrT2uhXgMKXl8ayAGx5D2iXJZXcHnRv5SRj
JMAHa+yfai7zi4Da0aCOet5XlioSy2rlKe41eXU2ClGJk/xUQpt/lhMxgPca1Jzz
ckr3fVwm4fkQX5tnkWRL1X6SR9ROxQ==
=j4Kv
-----END PGP SIGNATURE-----

--3ezD4zFPUlDuvype--
