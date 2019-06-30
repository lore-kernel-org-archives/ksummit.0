Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9D64EB59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 30 Jun 2019 16:31:24 +0000 (UTC)
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
	[209.85.160.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6CD9AA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 30 Jun 2019 16:31:23 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id x47so12021222qtk.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 30 Jun 2019 09:31:23 -0700 (PDT)
Date: Sun, 30 Jun 2019 12:31:20 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20190630163120.GA13925@chatter.i7.local>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<alpine.DEB.2.21.1906290802360.1802@nanos.tec.linutronix.de>
	<20190629134329.GA4620@andrea>
	<alpine.DEB.2.21.1906291714150.1802@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1906291714150.1802@nanos.tec.linutronix.de>
Cc: Peter Zijlstra <peterz@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jun 29, 2019 at 05:16:18PM +0200, Thomas Gleixner wrote:
>> Makes all sense to me.  One question/remark:
>>
>> Documentation/process/submitting-patches.rst says:
>>
>>  "If the patch follows from a mailing list discussion, give a URL to the
>>   mailing list archive; use the https://lkml.kernel.org/ redirector with
>>   a ``Message-Id``, to ensure that the links cannot become stale."
>>
>> and it does not mention "lore.kernel.org": does this doc want an update?
>
>Yes. lkml.kernel.org/r was the initial redirector, but lore is the new
>thing.

FYI, lkml.kernel.org == lore.kernel.org in all respects. Using 
lore.kernel.org/r/<messageid> will match *any* mailing list archived at 
lore.kernel.org (for the full list, see https://lore.kernel.org/lists.html).
I prefer people use lore.kernel.org because that name doesn't imply that 
the search will only match LKML.

-K
