Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1519989C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 11:34:46 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CB98C151
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 11:34:44 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Thu, 06 Jul 2017 14:34:38 +0300
Message-ID: <7042009.5tkGy6PEBL@avalon>
In-Reply-To: <20170705121000.5430d7d0@gandalf.local.home>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<8c6843e8-73d9-a898-0366-0b72dfeb79a2@redhat.com>
	<20170705121000.5430d7d0@gandalf.local.home>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Carlos O'Donell <carlos@redhat.com>, linux-api@vger.kernel.org,
	Thorsten Leemhuis <linux@leemhuis.info>,
	Shuah Khan <shuahkh@osg.samsung.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] & [TECH TOPIC] Improve
	regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday 05 Jul 2017 12:10:00 Steven Rostedt wrote:
> On Wed, 5 Jul 2017 11:08:48 -0400 Carlos O'Donell wrote:
> > On 07/05/2017 10:33 AM, Steven Rostedt wrote:
> > > No test should be written for a single specific hardware. It should be a
> > > general functionality that different hardware can execute.
> > 
> > Why? We test all sorts of hardware in userspace and we see value in that
> > testing.
> 
> One reason is for bit rot. I'm not totally against it. But I envision
> that if we have hundreds of tests for very specific pieces of hardware,
> it's value will diminish over time. Unless we can get a good
> infrastructure written where the hardware info is more of a data sheet
> then a single test itself.

That's all nice, but when the hardware is complex and not fully abstracted 
behind a kernel API, tests are bound to be hardware-specific. Of course, a bug 
or regression observed only with a specific device, but triggered through the 
usage of abstract APIs only, can lead to a test case written for that device 
but runnable with any device in the same category. In that case the test case 
should certainly be added to a test suite for the corresponding API/subsystem, 
not to an hidden test suite for a particular device.

-- 
Regards,

Laurent Pinchart
