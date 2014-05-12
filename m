Return-Path: <tomasz.figa@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5AECC9B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 21:17:06 +0000 (UTC)
Received: from mail-ee0-f54.google.com (mail-ee0-f54.google.com [74.125.83.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 943902026C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 21:17:05 +0000 (UTC)
Received: by mail-ee0-f54.google.com with SMTP id b57so5112360eek.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 14:17:04 -0700 (PDT)
Message-ID: <53713A49.9070400@gmail.com>
Date: Mon, 12 May 2014 23:16:57 +0200
From: Tomasz Figa <tomasz.figa@gmail.com>
MIME-Version: 1.0
To: Mark Brown <broonie@sirena.org.uk>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <1872038.43ncqEMWSx@avalon> <20140512201438.GE12304@sirena.org.uk>
	<1890814.sS5FutD9xo@avalon> <20140512203153.GH12304@sirena.org.uk>
In-Reply-To: <20140512203153.GH12304@sirena.org.uk>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Mark,

On 12.05.2014 22:31, Mark Brown wrote:
> On Mon, May 12, 2014 at 10:27:14PM +0200, Laurent Pinchart wrote:
>> On Monday 12 May 2014 21:14:38 Mark Brown wrote:
> 
>>> This is something ASoC has been resolving since forever with
>>> the machine drivers, Russell King recently created a generic
>>> version of the code that does the dependency deferral glue (see
>>> linux/component.h).  It's not a model of elegance but it ends
>>> up getting the job done.
> 
>> That solves the probe time dependencies, but unfortunately not
>> the runtime PM dependencies.
> 
> It also solves the system suspend dependencies.  Why don't the
> runtime PM dependencies just work with reference counting?
> 

Runtime PM dependencies work with reference counting just fine, but
only for topologies matching Linux driver model, e.g. devices with
exactly one device they depend on, e.g. SPI controller and SPI devices
on the bus driven by it. Add there an IOMMU and other various strange
things that should be transparent to the drivers and it stops working.

I'm still investigating this issue, so more uses cases are yet to be
found, but I also guess this is the purpose of this thread. Anyway,
for some reason .suspend_late() and .resume_early() callbacks exist in
dev_pm_ops struct and I believe that at least some of the cases
"solved" by them might be related to the issue being discussed here.

Best regards,
Tomasz
