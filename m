Return-Path: <m.chehab@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0F208995
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Aug 2014 20:18:15 +0000 (UTC)
Received: from usmailout2.samsung.com (mailout2.w2.samsung.com
	[211.189.100.12])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5A01D20292
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Aug 2014 20:18:14 +0000 (UTC)
Received: from uscpsbgm2.samsung.com
	(u115.gpu85.samsung.co.kr [203.254.195.115]) by mailout2.w2.samsung.com
	(Oracle Communications Messaging Server 7u4-24.01(7.0.4.24.0) 64bit
	(built Nov
	17 2011)) with ESMTP id <0NAK009ZBL9ME400@mailout2.w2.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Tue,
	19 Aug 2014 16:08:10 -0400 (EDT)
Date: Tue, 19 Aug 2014 15:08:08 -0500
From: Mauro Carvalho Chehab <m.chehab@samsung.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-id: <20140819150808.34bcca65.m.chehab@samsung.com>
In-reply-to: <15653604.eanYCV9OmK@avalon>
References: <15653604.eanYCV9OmK@avalon>
MIME-version: 1.0
Content-type: text/plain; charset=US-ASCII
Content-transfer-encoding: 7bit
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

Em Mon, 18 Aug 2014 15:08:05 +0200
Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:

> Hello,
> 
> As we still haven't hammered out PM dependencies I propose discussing it in 
> the unconference track. Shuah and Mauro have reminded me of their interest in 
> the topic, does anyone else want to discuss it ?
> 
> The unconference slots are 30 minutes long only. We should avoid spending all 
> the allocated time presenting the problems, so please post your use case(s) in 
> a reply to this mail thread if you plan to participate.
> 
Greg,

I'm thinking that one solution that won't sound too hacky would be to add
a module init macro that would mark a driver to be the first one to be
probed, to be handled by the device core. If the device core
finds a USB (PCI) ID for a table initialized this way, it will only call
one device driver. This device will be the master device for that USB ID,
and he will call some init function that will do the probing of the other
device drivers associated with that specific device, being allowed to
replace the drivers specific fops by their own internal ones.

This way, at resume time, it can call each driver's specific .resume code
on the right order.

Would that work?

Regards,
Mauro
