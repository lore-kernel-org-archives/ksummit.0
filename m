Return-Path: <preeti@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2EBBFADE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:28:48 +0000 (UTC)
Received: from e33.co.us.ibm.com (e33.co.us.ibm.com [32.97.110.151])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 820D320259
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:28:47 +0000 (UTC)
Received: from /spool/local
	by e33.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<preeti@linux.vnet.ibm.com>; Mon, 12 May 2014 11:28:46 -0600
Received: from b03cxnp08025.gho.boulder.ibm.com
	(b03cxnp08025.gho.boulder.ibm.com [9.17.130.17])
	by d03dlp01.boulder.ibm.com (Postfix) with ESMTP id 564751FF0040
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 11:28:44 -0600 (MDT)
Received: from d03av03.boulder.ibm.com (d03av03.boulder.ibm.com [9.17.195.169])
	by b03cxnp08025.gho.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with
	ESMTP id s4CHSan063766658
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 19:28:44 +0200
Received: from d03av03.boulder.ibm.com (localhost [127.0.0.1])
	by d03av03.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id s4CHSB5R015648 for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 11:28:11 -0600
Message-ID: <53710391.6000504@linux.vnet.ibm.com>
Date: Mon, 12 May 2014 22:53:29 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
MIME-Version: 1.0
To: Josh Boyer <jwboyer@fedoraproject.org>
References: <CA+5PVA4AtLtf_XKpWOjpqkWGmm6Hg1kZExs-2K15RJiYsbgnkQ@mail.gmail.com>
In-Reply-To: <CA+5PVA4AtLtf_XKpWOjpqkWGmm6Hg1kZExs-2K15RJiYsbgnkQ@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Nominations for per topic people
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/09/2014 10:19 PM, Josh Boyer wrote:
> Below are people that have been nominated in the submitted topic
> threads that aren't already on the list.
> 
> Josh Poimboeuf (live kernel patching)
> Seth Jennings (live kernel patching)
> Vojtech Pavlik (live kernel patching, trusted kernel patchset)
> Pavel Emelyanov (live kernel patching)
> Masami Hiramatsu (live kernel patching)
> Jiri Slaby (live kernel patching, stable)
> Michael Matz (live kernel patching)
> Josh Boyer (trusted kernel patchset, stable)
> Joey Li (trusted kernel patchset)
> Gary Lin (trusted kernel patchset)
> James Morris (trusted kernel patchset)
> Matthew Garret (trusted kernel patchset)
> Darren Hart (driver model and ACPI/DT)
> Grant Likely (driver model and ACPI/DT, also on the ksummit committee so...)
> Al Stone (driver model and ACPI/DT)
> Amit Kucheria (energy conservation bias)
> Morten Rasmussen (energy conservation bias)

I would like to nominate myself for the topic "Energy Conservation Bias".

I have been working on improving Energy management on PowerPC over the
last year. Specifically I have worked on extending the tick broadcast
framework in the kernel to support deep idle states and helped review
and improvise the cpufreq driver for PowerNV platforms.

https://lkml.org/lkml/2014/2/7/608
http://thread.gmane.org/gmane.linux.power-management.general/44175

Besides this I have been helping out in efforts to integrate cpuidle
with scheduler over the last year. The year before that I spent time
analysing the advantage that the per-entity load tracking metric brings
to the scheduler and its role in designing the power aware scheduler.
I presented a talk at the Linux Foundation Collaboration Summit 2013 on
the same.

I wish to be a part of this discussion and look forward to sharing my
ideas on Energy management in the kernel. I am very interested in
bringing to the table, the challenges and solutions that we have on
PowerPC in the area of Energy Management. Please consider my
participation in this discussion.

Regards
Preeti U Murthy

> Waiman Long (asm-generic low levels)
> Jörg Rödel (device error handling)
> Michael Kerrisk (API/ABI review)
> Shuah Khan (API/ABI review)
> Dave Jones (kernel tinification, energy conservation bias, and trinity work)
> Andy Lutomirski (virtually every topic thread thus far)
> 
> Hope that helps.
> 
> josh
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
