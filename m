Return-Path: <darren@apps.dvhart.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D6BB796D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 03:20:34 +0000 (UTC)
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 85BB6201A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 03:20:34 +0000 (UTC)
Received: by mail-pa0-f45.google.com with SMTP id ey11so3324314pad.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 20:20:34 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
Message-ID: <1400295744.9575.104.camel@wasp-deb.dvhart.com>
From: Darren Vincent Hart <darren@dvhart.com>
To: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 16 May 2014 20:02:24 -0700
In-Reply-To: <4779952.HbUGmSHJeO@wuerfel>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<11391971.y9GOPHmK72@wuerfel> <20140513211442.GB28268@quad.lixom.net>
	<4779952.HbUGmSHJeO@wuerfel>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

On Wed, 2014-05-14 at 14:06 +0200, Arnd Bergmann wrote:
> On Tuesday 13 May 2014 14:14:42 Olof Johansson wrote:
> > On Tue, May 06, 2014 at 03:35:41PM +0200, Arnd Bergmann wrote:
> > > On Tuesday 06 May 2014 14:18:56 Rafael J. Wysocki wrote:
> > > 
> > > We should definitely be able to have an interface like this for
> > > ACPI, but you don't have a 'struct device_node' pointer then.
> > > We can add a new
> > > 
> > > bool dev_property_read_bool(const struct device *dev,
> > >                             const char *propname);
> > 
> > > 
> > > that handles both, but then you have to change every driver
> > > that is already using of_property_read_bool() and that can
> > > get used with ACPI.
> > 
> > It's actually not that easy in practice. There's not a one-to-one
> > correspondence between device tree nodes and struct devices in the
> > kernel. There are many bindings that use subnodes for sections of their
> > information, and so on.
> 
> I also don't think we can have a grand unified solution to the general
> problem, but doing the above would solve a lot of individual problems
> for all the simple drivers that don't use sub-nodes in DT.
> 
> I really don't see any downsides to using a common named property
> API for simple values in drivers that can.
> 
> Devices with sub-nodes are by definition complex to handle, and
> I think we will always have cases that are too complex to use
> a common interface. At the moment, we can share drivers that
> have only memory and irq resources, which is a significant share
> already. We can over time extend this to drivers that use strings,
> booleans, integers, or arrays of those. We can also extend it
> for things like gpios and dma-channels (both of which partly work
> already but are limited when it comes to naming) and a few other
> things.


Agreed, well said.


-- 
Darren Hart
Intel Open Source Technology Center
