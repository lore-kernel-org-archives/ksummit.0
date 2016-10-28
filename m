Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 40722729
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Oct 2016 21:21:37 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AFC2F2A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Oct 2016 21:21:36 +0000 (UTC)
Date: Fri, 28 Oct 2016 23:21:33 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
In-Reply-To: <CAB=NE6XscoaYq7_0wbEtgdGZt-duhMb6a-o8O+09FrJRy9EkLQ@mail.gmail.com>
Message-ID: <alpine.LNX.2.00.1610282319390.31629@cbobk.fhfr.pm>
References: <CAB=NE6XscoaYq7_0wbEtgdGZt-duhMb6a-o8O+09FrJRy9EkLQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Mark Brown <broonie@sirena.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Schedule slot suggestion- Generic drivers -
	core topic
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 28 Oct 2016, Luis R. Rodriguez wrote:

> Having some generic device driver load, prior to a specific driver, and 
> issues / maintenance issues that come with the hacks currently in place 
> to support this / re-invent the wheel to support this per subsystem.
> 
> It might be good then to move this to a Monday slot, provided most 
> interested folks can and will be there. Thoughts?

As this is exactly the (current worked around in not a very nice way) 
problem of HID subsystem (hid-generic handling most of the devices "more 
or less fine", and then having drivers implementing "specific 
functionality on top"), I'd be very much interested in any discussion / 
ideas around this topic. I'll be there on monday.

Thanks,

-- 
Jiri Kosina
SUSE Labs
