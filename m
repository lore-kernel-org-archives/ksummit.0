Return-Path: <gregkh@linuxfoundation.org>
Date: Mon, 25 Aug 2014 07:49:13 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <m.chehab@samsung.com>
Message-ID: <20140825144913.GB14325@kroah.com>
References: <15653604.eanYCV9OmK@avalon>
	<20140819150808.34bcca65.m.chehab@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140819150808.34bcca65.m.chehab@samsung.com>
Cc: Shuah Khan <shuah.kh@samsung.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [Unconference] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 19, 2014 at 03:08:08PM -0500, Mauro Carvalho Chehab wrote:
> Em Mon, 18 Aug 2014 15:08:05 +0200
> Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:
> 
> > Hello,
> > 
> > As we still haven't hammered out PM dependencies I propose discussing it in 
> > the unconference track. Shuah and Mauro have reminded me of their interest in 
> > the topic, does anyone else want to discuss it ?
> > 
> > The unconference slots are 30 minutes long only. We should avoid spending all 
> > the allocated time presenting the problems, so please post your use case(s) in 
> > a reply to this mail thread if you plan to participate.
> > 
> Greg,
> 
> I'm thinking that one solution that won't sound too hacky would be to add
> a module init macro that would mark a driver to be the first one to be
> probed, to be handled by the device core. If the device core
> finds a USB (PCI) ID for a table initialized this way, it will only call
> one device driver. This device will be the master device for that USB ID,
> and he will call some init function that will do the probing of the other
> device drivers associated with that specific device, being allowed to
> replace the drivers specific fops by their own internal ones.
> 
> This way, at resume time, it can call each driver's specific .resume code
> on the right order.
> 
> Would that work?

As we discussed in person later on that day, this will not work due to
linking vs. module issues, and lots of other things.

People have been asking for "priorities" of driver binding/matching for
over a decade, but no one has come up with a way to solve the issues
involved, sorry.

greg k-h
