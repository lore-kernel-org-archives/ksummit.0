Return-Path: <sundar.iyer@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C17E8AB2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 13:49:51 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6D017194
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 13:49:51 +0000 (UTC)
From: "Iyer, Sundar" <sundar.iyer@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>, NeilBrown <neilb@suse.com>
Date: Mon, 6 Jul 2015 13:49:45 +0000
Message-ID: <2FABAEF0D3DCAF4F9C9628D6E2F968454F18BA5A@BGSMSX102.gar.corp.intel.com>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<20150706114017.463ef472@noble> <53223375.qzkvIEse3r@vostro.rjw.lan>
In-Reply-To: <53223375.qzkvIEse3r@vostro.rjw.lan>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Grant Likely <grant.likely@linaro.org>, "Brown, Len" <len.brown@intel.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Kristen
	Carlson Accardi <kristen@linux.intel.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] System-wide interface to
	specify	the level of PM tuning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> -----Original Message-----
> From: ksummit-discuss-bounces@lists.linuxfoundation.org [mailto:ksummit-
> discuss-bounces@lists.linuxfoundation.org] On Behalf Of Rafael J. Wysocki
> Sent: Monday, July 6, 2015 7:12 AM
> To: NeilBrown
> Cc: Grant Likely; Brown, Len; Alan Stern; Kristen Carlson Accardi; ksummi=
t-
> discuss@lists.linuxfoundation.org
> Subject: Re: [Ksummit-discuss] [TECH TOPIC] System-wide interface to spec=
ify
> the level of PM tuning
>=20

> >
> > (a tiny bit like a devicetree database which contains configuration
> > rules).
> >
> > Or have I missed the point completely?
>=20
> No, I don't think you have missed it, but then most of subsystems and dri=
vers in
> the kernel know what it means to be "power-friendly", so they should be a=
ble to
> choose their defaults on the basis of one single setting somewhere.

Is a "single setting somewhere" even appropriate? It is actually the intell=
igence needed vs executing the actions?

Cheers!
