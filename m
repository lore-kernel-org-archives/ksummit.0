Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EA9A5DC6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 15:40:04 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DEA3263D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 15:40:02 +0000 (UTC)
Message-ID: <1560440399.3329.26.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Guenter Roeck <linux@roeck-us.net>, Bart Van Assche
	<bvanassche@acm.org>, "Martin K. Petersen" <martin.petersen@oracle.com>
Date: Thu, 13 Jun 2019 08:39:59 -0700
In-Reply-To: <9623aa32-31f2-0053-d3bc-64bfb151865a@roeck-us.net>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
	<1560436507.3329.12.camel@HansenPartnership.com>
	<yq18su51q92.fsf@oracle.com>
	<3418df99-ff2b-9a9f-7702-1e272d1cb783@acm.org>
	<9623aa32-31f2-0053-d3bc-64bfb151865a@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2019-06-13 at 08:35 -0700, Guenter Roeck wrote:
> On 6/13/19 8:21 AM, Bart Van Assche wrote:
> > On 6/13/19 8:03 AM, Martin K. Petersen wrote:
> > > 
> > > James,
> > > 
> > > > It depends: every patch you do to an old driver comes with a
> > > > risk of breakage.  What we've found is even apparently sane
> > > > patches cause breakage which isn't discovered until months
> > > > later when someone with the hardware actually tests.
> > > 
> > > My pet peeve is with the constant stream of seemingly innocuous
> > > helper-interface-of-the-week changes. Such as "Use kzfoobar()
> > > instead of kfoobar() + memset()". And then a year later somebody
> > > decides kzfoobar() had a subtle adverse side-effect and now we
> > > all need to switch to kpzfoobar().
> > > 
> > > I appreciate that some of these helpers may have merit in terms
> > > of facilitating static code checkers, etc. But other than that, I
> > > really fail to see the value of this constant churn.
> > > 
> > > The devil is always in the details. It's almost inevitably these
> > > obvious five-liners that cause regressions down the line.
> > > 
> > > So why do we keep doing this?
> > 
> > How about discussing at the kernel summit whether or not patches
> > that have not been tested on actual hardware should be ignored?
> > 
> 
> A while ago I spent some time writing unit tests for various i2c
> based hwmon drivers (https://github.com/groeck/module-tests). With
> those, I found a substantial number of overflow conditions and other
> problems in various drivers.
> 
> Similar, my qemu boot tests have identified several problems over
> time, by nature of qemu often on hardware which is difficult if not
> almost impossible to find nowadays (ohci-sm501 is a current example).
> 
> Are you saying that such problems should not be fixed unless they can
> be verified on real hardware ?

I think virtual hardware testing is acceptable: most of the regressions
we get in old drivers from untested updates isn't anywhere near the
hardware interface handling code usually.  It's usually just an
unintended consequence of a well meaning update to the generic part of
the driver.  People who don't have the hardware and don't really
understand the driver rarely touch the core hardware handling pieces
... and if they do, we usually do demand a hardware test.

James
