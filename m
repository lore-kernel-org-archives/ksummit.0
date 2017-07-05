Return-Path: <SRS0=19W6=6I=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8463EC3A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 16:10:03 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 317D3CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 16:10:03 +0000 (UTC)
Date: Wed, 5 Jul 2017 12:10:00 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Carlos O'Donell <carlos@redhat.com>
Message-ID: <20170705121000.5430d7d0@gandalf.local.home>
In-Reply-To: <8c6843e8-73d9-a898-0366-0b72dfeb79a2@redhat.com>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<20170705103335.0cbd9984@gandalf.local.home>
	<8c6843e8-73d9-a898-0366-0b72dfeb79a2@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: linux-api@vger.kernel.org, Thorsten Leemhuis <linux@leemhuis.info>,
	ksummit-discuss@lists.linuxfoundation.org,
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

On Wed, 5 Jul 2017 11:08:48 -0400
Carlos O'Donell <carlos@redhat.com> wrote:

> On 07/05/2017 10:33 AM, Steven Rostedt wrote:
> > No test should be written for a single specific hardware. It should be a
> > general functionality that different hardware can execute.  
> 
> Why? We test all sorts of hardware in userspace and we see value in that
> testing.
> 

One reason is for bit rot. I'm not totally against it. But I envision
that if we have hundreds of tests for very specific pieces of hardware,
it's value will diminish over time. Unless we can get a good
infrastructure written where the hardware info is more of a data sheet
then a single test itself.

-- Steve
