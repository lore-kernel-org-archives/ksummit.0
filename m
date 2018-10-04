Return-Path: <jikos@kernel.org>
Date: Thu, 4 Oct 2018 13:50:36 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
In-Reply-To: <20181003143354.GB29980@kroah.com>
Message-ID: <nycvar.YFH.7.76.1810041346070.14430@cbobk.fhfr.pm>
References: <c5546d68-bdcc-dd02-e072-9272d39de504@kernel.org>
	<20181002161730.GA7119@kroah.com>
	<20181002163001.GA11068@kroah.com>
	<20181002183743.78eac32d@coco.lan>
	<0e19e6d0-47bd-d57f-8e31-e3521c467fe0@kernel.org>
	<20181002222238.GA11788@kroah.com>
	<20181003125916.GB21043@quack2.suse.cz>
	<20181003134012.GA13071@kroah.com>
	<nycvar.YFH.7.76.1810031541020.14430@cbobk.fhfr.pm>
	<20181003143233.GA29980@kroah.com>
	<20181003143354.GB29980@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <Ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Moving debugfs file
 systems into sysfs
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 3 Oct 2018, Greg Kroah-Hartman wrote:

> Why not put the raw descriptors in sysfs?  That's what pci and usb do,
> there's no reason you can't do the same here.  You already have a sysfs
> device.  Oh wait, you do, 'report_descriptor' right?  Why do you also
> need it in debugfs?

Those are actually two different things -- the one in sysfs is verbatim 
(binary) as has been read from device, but the one in debugfs is actually 
showing how in-kernel parser has understood what came out of the device. 
Which is not necessarily the same thing :) 

Also it's rather verbose, with a lot of strings etc., not sure whether 
you'd want to see that in sysfs.

With 'events' in hid debugfs, it's a similar story really (except it 
doesn't currently have sysfs counterpart at all, as that'd basically just 
be showing raw data as coming from the device).

Thanks,

-- 
Jiri Kosina
SUSE Labs
