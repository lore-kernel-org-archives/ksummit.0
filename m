Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E51FA8B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 02:03:03 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 88B241F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 02:03:03 +0000 (UTC)
Date: Fri, 2 May 2014 19:02:42 -0700
From: Mark Brown <broonie@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20140503020242.GD22111@sirena.org.uk>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1583732.MIn3aNNoTS@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="sXc4Kmr5FA7axrvy"
Content-Disposition: inline
In-Reply-To: <1583732.MIn3aNNoTS@vostro.rjw.lan>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dvhart@dvhart.com,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Driver model/resources, ACPI, DT,
 etc (sigh)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--sXc4Kmr5FA7axrvy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, May 03, 2014 at 02:05:21AM +0200, Rafael J. Wysocki wrote:
> On Friday, May 02, 2014 02:42:07 PM Olof Johansson wrote:

> > Some of the ideas I have heard discussed are:
> > * Adding a new common API for resource management which will have
> > backends for ACPI or DT depending on platform

> I would like to do this, personally, because I believe that drivers
> should not need to add support for any particular firmware interfaces
> directly (except for listing matching device IDs).

The trouble with this is that the different firmware interfaces have
rather different ideas about how things should work.  Basic things like
interrupts are generally fine but more complex things like the way that
devices integrate with system power management are much more up in the
air.

--sXc4Kmr5FA7axrvy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTZE4/AAoJELSic+t+oim9qVgP/2725I8FzX+i7RiCgFS+UqBd
fFP4t7odJNN0AD7qZECrgLsNn/o/e0htgneXKbQIwnmPXFlI8cGwdq3bJ6kwXGDf
2SLaPAR41rgTr0IsZD7KHySyOTOgyEzdZBt0F3r3SOh6Xp/4kMKEDl+gRaHRnsKj
n3N1alqBKvj0AF/IMW3Ao0hUL0ce9iuPd8odoN0NaRBYlcNve7CQy1Igld7J1cBq
RHBy0Wo8xfRqPsvLqK78s9CyabCRcOt2MUVOBxuyLSz90vkiWY8aXgpbtpw8SKHk
+OGGi718+rrOHz/eWPUoNhmolvgCVY1SgIFhO/PtSWvSOif462ila1cqjiR8s540
KbqwX3qZIWMSPnlqkaYNi7AZJ7jTxReMe0rZOU4X+2AV4WXffmd9C6D2zKTgdfRm
dMyjWE6L4L+Tfcc7LRx9NjAL5kHYUbG2bttvWBXHv0O7SlmpIrmWV0AOuMp5HuKS
4OMsy/gv4nRJNPnbaua0ysDPCoFandqyW+YvSa8uNL9JloE9R4AK1xzOTUd5E/Xp
0qBkRwnNM/2KhBNNs9g9G0gL71hfgdXPLdyqjoDHc0xK1TLlkjD/mH/kJjN9Le1D
BvaKSzeuOIp8Eld6bwcuTBI47p6v603T9xzTY5wDbBokl+AEPmgN91anZTXBZyIy
RQG7KjmNMn6Kb8fbp+sg
=26iP
-----END PGP SIGNATURE-----

--sXc4Kmr5FA7axrvy--
