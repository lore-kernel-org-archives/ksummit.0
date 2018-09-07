Return-Path: <labbott@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E355A1062
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 14:37:10 +0000 (UTC)
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7F8DA70D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 14:37:10 +0000 (UTC)
Received: by mail-qt0-f195.google.com with SMTP id k38-v6so16395567qtk.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 07:37:10 -0700 (PDT)
To: Guenter Roeck <linux@roeck-us.net>,
	Sasha Levin <Alexander.Levin@microsoft.com>,
	Linus Torvalds <torvalds@linux-foundation.org>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<2534be10-2e70-6932-39c1-7caca2cff044@roeck-us.net>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <4990d2c1-6f26-0500-9afa-986a61fce3bf@redhat.com>
Date: Fri, 7 Sep 2018 07:37:06 -0700
MIME-Version: 1.0
In-Reply-To: <2534be10-2e70-6932-39c1-7caca2cff044@roeck-us.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 09/06/2018 07:52 PM, Guenter Roeck wrote:
> On 09/06/2018 06:49 PM, Sasha Levin via Ksummit-discuss wrote:
>>
>> This is a *huge* reason why we see regressions in Stable. Take a look at
>> https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2018-September/005287.html
>> for a list of recent user visible regressions the CoreOS folks have
>> observed this year. Do you want to know when they were merged? Let me
>> help you: all but one were merged in -rc5 or later.
>>
> 
> My conclusion from that would be that patches are applied to stable
> before they had time to soak in mainline. Your argument against
> accepting patches into mainline might as well be applied to patches
> applied to stable.
> 
> I think you are a bit hypocritical arguing that patches should be
> restricted from being accepted into mainline ... when at the same
> time patches are at least sometimes applied almost immediately to
> stable releases from there. Plus, some if not many of the patches
> applied to stable releases nowadays don't really fix critical or
> even severe bugs. If the patches mentioned above indeed caused
> regressions in mainline, those regressions should have been found
> and fixed _before_ the patches made it into stable releases.
> Blaming mainline for the problem is just shifting the blame.
> 
> I would argue that, if anything, the rules for accepting patches into
> _stable_ releases should be much more strict than they are today.
> If anything, we need to look into that, not into restricting patch
> access to mainline.

Part of my proposal for a longer -rc time for stable was for this
exact problem: patches that have been merged in mainline but
tagged for stable may not have had time to test to find all
bugs. The thought was a longer stable -rc cycle would help
in finding those. I think you've hit upon the real problem
though which is that the patches probably shouldn't have been
in stable in the first place.

Thanks,
Laura
