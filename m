Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A7BB5FF8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 12:09:23 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 31E0781A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 12:09:23 +0000 (UTC)
Date: Mon, 9 Sep 2019 13:09:16 +0100
From: Mark Brown <broonie@kernel.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Message-ID: <20190909120916.GE2036@sirena.org.uk>
References: <CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<20190823164602.GB112509@dtor-ws>
	<alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
	<CAHrFyr6rQHiQAY4Wcv4WzUS2B5tBfrnWvyTjD4ktHvsEBMxkCw@mail.gmail.com>
	<CAD=FV=XGySHprMN+dv6dDKmuTQXnmYg5NStyaOJg+KdNUOFZsQ@mail.gmail.com>
	<CAHk-=whxp0Vm5V6MtaRNC0_ou0=U4-+Y7Ktzq6osU8JgHy_xhQ@mail.gmail.com>
	<20190824230447.GA5163@mit.edu> <20190825031143.GA2590@kroah.com>
	<20190827105153.GB23391@sirena.co.uk>
	<871rwpdgys.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y2zxS2PfCDLh6JVG"
Content-Disposition: inline
In-Reply-To: <871rwpdgys.fsf@mpe.ellerman.id.au>
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--y2zxS2PfCDLh6JVG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 09, 2019 at 06:14:19PM +1000, Michael Ellerman wrote:
> Mark Brown <broonie@kernel.org> writes:

> > What I'm doing for this is that when I apply the patch I save a
> > git note with the message ID and various other things then when I
> > push the patch out and generate the "applied, thanks" e-mail I
> > look for the git note and use that.

> I was doing something similar with git notes, but the beauty of a
> Link: that includes the message id is it gives you everything you need
> to send those "applied" mails without any extra state.

Yeah, you can definitely do that - I originally did it that way
but converted to notes because I want to make sure that I can
send out the applied mails if the push succeeds even if the
network is slow or spotty.

> I also have a local message-id <=> patchwork id mapping, and that means
> I can also do the patchwork state update based purely off the Link: tag.

...

> If only the patchwork maintainers weren't all volunteers they could get
> that implemented some time ;)

Indeed.

--y2zxS2PfCDLh6JVG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl12QOsACgkQJNaLcl1U
h9Bwcwf/QEFmUL/xMjQSOfTGrUTI6Ln3LmZJAuT+ZGirN/VdV86NSDmNZOtcwxq+
f9TeUHt2V4ErDel5YNvIpsPDR7hhReEVfkORgjzkNv7R4TctyLX6QmHEXEh6311D
ERrkrB8yh2YoAg5mbK1qZQagWuLUYxlGJurp8UBRImBi3COkJjVeIV3Ax+DW3Bsr
db6zH/HanY2S2KdH/yCo224/KvBof+gNqN95n4AXK/a0pUMYAzsEjgbF7lBG5TEK
NHGz9Gq+BG1k2P9Gb6gR+PvRNjiialdH4pfhrB5QUIKqqgg6HBBL9nE16QxepSHp
LepU0JX9xIP71cWnXcKBdXfdayokgw==
=RFB9
-----END PGP SIGNATURE-----

--y2zxS2PfCDLh6JVG--
