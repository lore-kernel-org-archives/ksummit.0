Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CCE78918
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 01:50:15 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 12E8B1F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 01:50:15 +0000 (UTC)
Date: Fri, 2 May 2014 18:21:58 -0700
From: Mark Brown <broonie@sirena.org.uk>
To: Dave Jones <davej@redhat.com>
Message-ID: <20140503012158.GA22111@sirena.org.uk>
References: <20140502173309.GB725@redhat.com>
	<20140502190301.GW3245@sirena.org.uk>
	<3908561D78D1C84285E8C5FCA982C28F327F5D80@ORSMSX114.amr.corp.intel.com>
	<20140502210340.GZ3245@sirena.org.uk>
	<20140502210851.GC13536@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline
In-Reply-To: <20140502210851.GC13536@redhat.com>
Cc: Sarah Sharp <sarah@minilop.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 02, 2014 at 05:08:51PM -0400, Dave Jones wrote:
> On Fri, May 02, 2014 at 02:03:40PM -0700, Mark Brown wrote:

>  > That works for specific processes but I don't immediately see a
>  > straightforward way to do it system wide (I guess a wrapper that straces
>  > init and children might do the trick but it's not particularly nice).
>  > Part of the trick for getting the general security win is to lower the
>  > barrier to entry.`

> Sounds like something you could use tracepoints for maybe ?
> Failing that, kprobes ?

Tracepoints do run the risk of overflowing the buffer if run for too
long but if it's the only thing running and/or is monitored that should
be OK, it's more managable than strace.  kprobes should definitely work
I think if there's a suitably canned way of setting it up.

--fUYQa+Pmc3FrFX/N
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTZESwAAoJELSic+t+oim9ngIP+wRFvNunTPiqyy97Umk5gL5K
BYL6o6DyMDlk+Fp8f7nyUNBZdceod/wqBZaFlrXcymNWH67pf8UgnOBZca+q19rd
1peNPDse+8A7TqpPJxCgmniWaWPY+kzuwPYYE9LJbTPHAWtxU0SREGgUkKZxWj4l
riOmXMYHRn7Cj/5mcLr2k89E9hVpsgILVDu/r5T7WDsR10rMcna1WYuRddRuptIp
sYWn1yt/HGebXZX1INK1OOFfPwTQVAfuKPAQ9vo3XDX+GRHQRB4qxc+vjF3wqKu2
QVbAqucrCvEork3X//CJ6CeK78VI5JjKh0XUm2k7Qs7c3Cx2T5WQxMRThu3c+adr
44czh+csTU4BH57BSvxODRngyBeH92MwMwwKzChwW0M+ZOs/yU6fXoHY2i6gReAb
fgt3iPe4umxvLAgu8TzyXSqPtBy6bS85GYmqpBefZ60zvPm5VIOA8VbLVl3mQCqI
K6KFVWaikxmh4ZERP4WKdPQJ/ewaRL2in2/EUY4Ydb20PAcsdG4tkli7Q0oATluI
h7DdYFMgor0H1oRRLz6QqSZLlee0UZs4CtVjcVNjRRZ7sd0t20TYEBhO98q2Srmh
rm8SEtNIl+fx0MDgPCMdabcq7/tLcYUHImncf9NUa3SIKmoHP/Ccl1zl9y1niWPY
iOJSBGsIRpWJunaWlQIQ
=4jFg
-----END PGP SIGNATURE-----

--fUYQa+Pmc3FrFX/N--
