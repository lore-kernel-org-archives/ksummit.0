Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 42874CC3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Sep 2018 21:55:19 +0000 (UTC)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
	[209.85.215.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E6D627D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Sep 2018 21:55:18 +0000 (UTC)
Received: by mail-pg1-f177.google.com with SMTP id b129-v6so2298082pga.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Sep 2018 14:55:18 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>,
	Laura Abbott <labbott@redhat.com>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <7e4a1cb8-9f3c-e1ea-e9bd-5f1f3588ce65@roeck-us.net>
Date: Tue, 4 Sep 2018 14:55:16 -0700
MIME-Version: 1.0
In-Reply-To: <20180904213340.GD16300@sasha-vm>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On 09/04/2018 02:33 PM, Sasha Levin via Ksummit-discuss wrote:
> On Tue, Sep 04, 2018 at 01:58:42PM -0700, Laura Abbott wrote:
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
> 
> OTOH, what I like with the current process is that I don't have to align
> any of the various (internal) release schedules we have with some
> standard stable kernel release schedule. I just pick the latest stable
> kernel (.Z) and we go through our build/testing pipeline on it. If
> another stable kernel (.Z+1) is released a day later it will just wait
> until the next release based on our schedule.
> 
> Why not set your own release schedule and just take the latest stable
> kernel at that point? So what if the .Z+1 kernel is out a day later? You
> could just queue it up for your next release.
> 
> This is exactly what would happen if you ask Greg to go on some sort of
> a schedule - he'll just defer the .Z+1 commits to what would have been
> the .Z+2 release, so you don't really win anything by moving to a
> stricter schedule.
> 

Good point. There would actually be a downside of having a longer
release cycle: Fewer releases means more patches per release.
More patches per release results in more regressions per release
(if we assume a constant percentage of regressions, which seems
reasonable).

Guenter
