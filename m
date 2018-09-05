Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CB509D5D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 11:20:48 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 51CB32D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 11:20:48 +0000 (UTC)
Date: Wed, 5 Sep 2018 13:20:45 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1809051108220.1416@nanos.tec.linutronix.de>
Message-ID: <nycvar.YFH.7.76.1809051246380.15880@cbobk.fhfr.pm>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<alpine.DEB.2.21.1809051108220.1416@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 5 Sep 2018, Thomas Gleixner wrote:

> I totally agree that we want backports and stable kernels, but I really
> have to ask whether backporting all the way back to the begin of the
> universe makes any sense at all. I know that the enterprise folks still
> believe that their frankenkernels are valuable and make sense, but given
> the shit they rolled out this year, there is enough factual evidence that
> this model is broken beyond repair.

I don't think any enterprise distro vendor is asking for stable LTS for 
super-historical kernels. Major RHEL is (afaik) 2.6.32 and 3.10-based, 
major SLE is 3.0, 4.4 and 4.12 based.

So there is one intersection there, and that's 4.4.

Supporting such old monsters is a business decision that was made by said 
vendors, so it's perfectly fine they (actually "we" :) ) are suffering on 
their (our) own.

If enterprise vendors would be able to create a working business 
relationship with partners and customers around 'rolling' kernel versions 
in enterprise distributions one day, that'd of course be awesome.

We're not there yet, but things are definitely changing on this front as 
well. For example we (as in "SUSE") are now more pro-active updating 
kernel version between enterprise distro service packs than we've 
historically been. It can be seen as one of the steps towards more 
'rolling' flexibility, but it's sometimes a rather hard sell to the 
enterprise.

> IOW, in the light of meltdown/spectre all effort should have been put 
> into getting 4.14 and 4.9 fixed instead of diverting our very limited 
> capcity to create monstrosities back to 2.6 variants.

I agree that it'd be an ideal world, but it's guaranteed that if we just 
say to the people running some of our 2.6 kernel under a very special 
contract that they have to all of a sudden move to 4.14, we'll just 
immediately lose that contract (and someone else will immediately plug the 
hole on the market and create perhaps even worse backport for them), and 
for various reasons we don't want that to happen :)

Such contracts are usually set up in a way that only very specific fixes 
can be requested for said kernels. We've historically put our bets on the 
fact that we'll be able to provide those rare fixes even for 2.6, and it 
worked well.
Now we're paying back a bit of course (because spectre/meltdown of course 
qualifies), but upstream can completely and happily ignore that.

Thanks,

-- 
Jiri Kosina
SUSE Labs
