Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 04F57902
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 16:54:32 +0000 (UTC)
Received: from mail-yw0-f182.google.com (mail-yw0-f182.google.com
	[209.85.161.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6B0D2198
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 16:54:31 +0000 (UTC)
Received: by mail-yw0-f182.google.com with SMTP id a12so46810896ywh.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Jul 2017 09:54:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170705140607.GA30187@kroah.com>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 5 Jul 2017 09:54:29 -0700
Message-ID: <CAPcyv4iOV2-hndx1rQmpPQF+myp=P8rmpf5JhXQXZxPhR6qoQw@mail.gmail.com>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Carlos O'Donell <carlos@redhat.com>, Linux API <linux-api@vger.kernel.org>,
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

On Wed, Jul 5, 2017 at 7:06 AM, Greg KH <greg@kroah.com> wrote:
> On Wed, Jul 05, 2017 at 09:27:57AM -0400, Steven Rostedt wrote:
>> Your "b" above is what I would like to push. But who's going to enforce
>> this? With 10,000 changes per release, and a lot of them are fixes, the
>> best we can do is the honor system. Start shaming people that don't
>> have a regression test along with a Fixes tag (but we don't want people
>> to fix bugs without adding that tag either). There is a fine line one
>> must walk between getting people to change their approaches to bugs and
>> regression tests, and pissing them off where they start doing the
>> opposite of what would be best for the community.
>
> I would bet, for the huge majority of our fixes, they are fixes for
> specific hardware, or workarounds for specific hardware issues.  Now
> writing tests for those is not an impossible task (look at what the i915
> developers have), but it is very very hard overall, especially if the
> base infrastructure isn't there to do it.
>
> For specific examples, here's the shortlog for fixes that went into
> drivers/usb/host/ for 4.12 after 4.12-rc1 came out.  Do you know of a
> way to write a test for these types of things?
>         usb: xhci: ASMedia ASM1042A chipset need shorts TX quirk
>         usb: xhci: Fix USB 3.1 supported protocol parsing
>         usb: host: xhci-plat: propagate return value of platform_get_irq()
>         xhci: Fix command ring stop regression in 4.11
>         xhci: remove GFP_DMA flag from allocation
>         USB: xhci: fix lock-inversion problem
>         usb: host: xhci-ring: don't need to clear interrupt pending for MSI enabled hcd
>         usb: host: xhci-mem: allocate zeroed Scratchpad Buffer
>         xhci: apply PME_STUCK_QUIRK and MISSING_CAS quirk for Denverton
>         usb: xhci: trace URB before giving it back instead of after
>         USB: host: xhci: use max-port define
>         USB: ehci-platform: fix companion-device leak
>         usb: r8a66597-hcd: select a different endpoint on timeout
>         usb: r8a66597-hcd: decrease timeout

I wrote some test infrastructure to go after xhci TRB boundary
conditions [1]. So, yes, some of these are possible to unit test, but
of course not all.

[1]: http://marc.info/?l=linux-usb&m=140872785411304&w=2
