Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id ABE15875
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 12:49:22 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 7EC1820207
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 12:49:21 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 07 May 2014 15:06 +0200
Message-ID: <3062362.OuIADFcFUq@vostro.rjw.lan>
In-Reply-To: <1399460702.2996.89.camel@shinybook.infradead.org>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1399279156.20388.32.camel@pasglop>
	<1399460702.2996.89.camel@shinybook.infradead.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: "dvhart@dvhart.com" <dvhart@dvhart.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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

On Wednesday, May 07, 2014 12:05:02 PM David Woodhouse wrote:
> 
> --===============1197259587839153410==
> Content-Type: multipart/signed; micalg="sha-1"; protocol="application/x-pkcs7-signature";
> 	boundary="=-0RE4bWH9BSP3Smq+x4xP"
> 
> 
> --=-0RE4bWH9BSP3Smq+x4xP
> Content-Type: text/plain; charset="UTF-8"
> Content-Transfer-Encoding: quoted-printable
> 
> On Mon, 2014-05-05 at 18:39 +1000, Benjamin Herrenschmidt wrote:
> >=20
> > The other option is to have both the DT representation and the ACPI
> > representation reach the drivers and leave it to the them (the drivers) t=
> o get
> > through two different functions at probe time to "translates" that into a
> > "3rd" driver private one (a structure, in a way akin to the old platform =
> data
> > but of course completely local to the driver scope).
> 
> I don't like that much. For "leaf-node" device drivers, I think we're
> better off with a simple set of "device_get_property" functions which
> are a little more type-safe than the existing of_* ones, thus helping us
> to deal with the details of 32-bit cells vs. ACPI integers, etc.

I agree.


-- 
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
