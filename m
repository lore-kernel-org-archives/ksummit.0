Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D3640415
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 04:34:00 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3ADEF88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 04:34:00 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 31 Oct 2016 06:33:56 +0200
Message-ID: <3222571.ZdG1zlr9uW@avalon>
In-Reply-To: <CAL_JsqJ95-7mE+qW8zzPeEPMsOCTXZc-8m8MG-NogM2=os3zBQ@mail.gmail.com>
References: <CAB=NE6XscoaYq7_0wbEtgdGZt-duhMb6a-o8O+09FrJRy9EkLQ@mail.gmail.com>
	<CAL_JsqJ95-7mE+qW8zzPeEPMsOCTXZc-8m8MG-NogM2=os3zBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Jiri Kosina <jkosina@suse.cz>, Mark Brown <broonie@sirena.org.uk>
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

On Sunday 30 Oct 2016 21:13:34 Rob Herring wrote:
> On Fri, Oct 28, 2016 at 4:16 PM, Luis R. Rodriguez wrote:
> > I see some open slots for Monday, there is some overlap in interest
> > between the Audio workshop folks and the tech topic for Tuesday
> > "addressing complex dependencies". We seem to have come to some
> > arrangement to split topics up to avoid such overlap, but one subject
> > overlapping both, but that seems more appropriate for the core day is
> > "Generic drivers":
> > 
> > Having some generic device driver load, prior to a specific driver,
> > and issues / maintenance issues that come with the hacks currently in
> > place to support this / re-invent the wheel to support this per
> > subsystem.
> 
> This is a looming, unsolved problem for DT as well. We can potentially
> bind different drivers to same device if the device has multiple
> compatible strings. There's not any control of which one binds first
> either other than link or initcall order.
>
> > It might be good then to move this to a Monday slot, provided most
> > interested folks can and will be there. Thoughts?
> 
> I'd like to be there and won't be there on Mon.

This reminds me of a problem discussed a few years ago, about how to decide 
whether to automatically offload handling of functional clocks declared in DT 
to core code in an attempt to simplify drivers. The issue was that the 
decision had to be taken at a time the related driver(s) might not be 
available yet.

In any case, I'm interested in this topic.

> BTW, is there a schedule for Tues published?

-- 
Regards,

Laurent Pinchart
