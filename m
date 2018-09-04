Return-Path: <labbott@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 78331CC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Sep 2018 22:06:47 +0000 (UTC)
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0F83B7FD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Sep 2018 22:06:46 +0000 (UTC)
Received: by mail-qt0-f175.google.com with SMTP id g53-v6so5853638qtg.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Sep 2018 15:06:46 -0700 (PDT)
To: Guenter Roeck <linux@roeck-us.net>,
	ksummit-discuss@lists.linuxfoundation.org
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<2c3b5669-bf03-326e-e61a-73100c141857@roeck-us.net>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <71cd50f3-9cd8-9d88-b8f2-cb5eca1f1133@redhat.com>
Date: Tue, 4 Sep 2018 15:06:43 -0700
MIME-Version: 1.0
In-Reply-To: <2c3b5669-bf03-326e-e61a-73100c141857@roeck-us.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Greg KH <gregkh@linuxfoundation.org>
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

On 09/04/2018 02:49 PM, Guenter Roeck wrote:
> On 09/04/2018 01:58 PM, Laura Abbott wrote:
>> I'd like to start a discussion about the stable release cycle.
>>
>> Fedora is a heavy user of the most recent stable trees and we
>> generally do a pretty good job of keeping up to date. As we
>> try and increase testing though, the stable release process
>> gets to be a bit difficult. We often run into the problem where
>> release .Z is officially released and then .Z+1 comes
>> out as an -rc immediately after. Given Fedora release processes,
>> we haven't always finished testing .Z by the time .Z+1 comes
>> out. What to do in this situation really depends on what's in
>> .Z and .Z+1 and how stable we think things are. This usually
>> works out fine but a) sometimes we guess wrong and should have
>> tested .Z more b) we're only looking to increase testing.
>>
>> What I'd like to see is stable updates that come on a regular
>> schedule with a longer -rc interval, say Sunday with
>> a one week -rc period. I understand that much of the current
>> stable schedule is based on Greg's schedule. As a distro
>> maintainer though, a regular release schedule with a longer
>> testing window makes it much easier to plan and deliver something
>> useful to our users. It's also a much easier sell for encouraging
>> everyone to pick up every stable update if there's a known
>> schedule. I also realize Greg is probably reading this with a very
>> skeptical look on his face so I'd be interested to hear from
>> other distro maintainers as well.
>>
> 
> For my part, a longer -rc interval would not help or improve the
> situation. Given the large number of security fixes, it would
> actually make the situation worse: In many cases I could no longer
> wait for a fix to be available in a release. Instead, I would have
> to pick and pre-apply individual patches from a pending release.
> 

Fedora does this already. We frequently carry patches which have
not yet made it into a stable release. Sometimes they only stay
around for one release but we've had ones that stayed around for
multiple releases.

> I like the idea of having (no more than) one release per week with
> the exception of security fixes, but longer -rc intervals would be
> problematic.
> 

Security fixes are an interesting question. The problem is that
not every security issue is actually equal and even patches
that fix CVEs can cause regressions.

> Guenter

Thanks,
Laura
