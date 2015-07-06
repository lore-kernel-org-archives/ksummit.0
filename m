Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 464D2BC9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 13:54:58 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 8F2B9226
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 13:54:57 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: "Iyer, Sundar" <sundar.iyer@intel.com>
Date: Mon, 06 Jul 2015 16:21:23 +0200
Message-ID: <6142539.s1gh8ubrRK@vostro.rjw.lan>
In-Reply-To: <2FABAEF0D3DCAF4F9C9628D6E2F968454F18BA5A@BGSMSX102.gar.corp.intel.com>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<53223375.qzkvIEse3r@vostro.rjw.lan>
	<2FABAEF0D3DCAF4F9C9628D6E2F968454F18BA5A@BGSMSX102.gar.corp.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: "Brown, Len" <len.brown@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Kristen Carlson Accardi <kristen@linux.intel.com>,
	Grant Likely <grant.likely@linaro.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] System-wide interface to specify
	the level of PM tuning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Monday, July 06, 2015 01:49:45 PM Iyer, Sundar wrote:
> > -----Original Message-----
> > From: ksummit-discuss-bounces@lists.linuxfoundation.org [mailto:ksummit-
> > discuss-bounces@lists.linuxfoundation.org] On Behalf Of Rafael J. Wysocki
> > Sent: Monday, July 6, 2015 7:12 AM
> > To: NeilBrown
> > Cc: Grant Likely; Brown, Len; Alan Stern; Kristen Carlson Accardi; ksummit-
> > discuss@lists.linuxfoundation.org
> > Subject: Re: [Ksummit-discuss] [TECH TOPIC] System-wide interface to specify
> > the level of PM tuning
> > 
> 
> > >
> > > (a tiny bit like a devicetree database which contains configuration
> > > rules).
> > >
> > > Or have I missed the point completely?
> > 
> > No, I don't think you have missed it, but then most of subsystems and drivers in
> > the kernel know what it means to be "power-friendly", so they should be able to
> > choose their defaults on the basis of one single setting somewhere.
> 
> Is a "single setting somewhere" even appropriate? It is actually the intelligence
> needed vs executing the actions?

For one example, the default for most of the device/.../power/control files in
sysfs is "on" (meaning no runtime PM) while it might be "auto" (use runtime PM
if you can).  Making that change for everybody in one go may lead to various
issues (that may be regarded as regressions then), but if we made it configurable,
people might choose to make that change for themselves if they wanted to.

Thanks,
Rafael
