Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 82225CDD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 18:35:58 +0000 (UTC)
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0BC635E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 18:35:57 +0000 (UTC)
Received: by mail-oi0-f65.google.com with SMTP id r69-v6so33134652oie.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 08 Sep 2018 11:35:57 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <Alexander.Levin@microsoft.com>
References: <4990d2c1-6f26-0500-9afa-986a61fce3bf@redhat.com>
	<20180907150623.GH16300@sasha-vm>
	<9fb15d7c-c59f-ee21-9c30-6d81d53a1456@redhat.com>
	<20180907160945.GI16300@sasha-vm> <20180907202328.GE25756@kroah.com>
	<20180907211341.GJ16300@sasha-vm>
	<CA+55aFyAWowFVi_UOkoJSfFb30Djk7JxRi4QFv7oJgpRKJxK0A@mail.gmail.com>
	<20180907224346.GA21546@roeck-us.net>
	<CA+55aFwqvy-NVg73RX-k0WNBU5FOyBFeOsBTbOr2N5egk6v_Mw@mail.gmail.com>
	<20180907225744.GL16300@sasha-vm> <20180908163351.GD11120@kroah.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <23ec78f4-e038-2492-5b74-60adde97d5bc@roeck-us.net>
Date: Sat, 8 Sep 2018 11:35:54 -0700
MIME-Version: 1.0
In-Reply-To: <20180908163351.GD11120@kroah.com>
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

On 09/08/2018 09:33 AM, Greg Kroah-Hartman wrote:
> On Fri, Sep 07, 2018 at 10:57:45PM +0000, Sasha Levin via Ksummit-discuss wrote:
>> On Fri, Sep 07, 2018 at 03:53:08PM -0700, Linus Torvalds wrote:
>>> On Fri, Sep 7, 2018 at 3:43 PM Guenter Roeck <linux@roeck-us.net> wrote:
>>>>
>>>> On Fri, Sep 07, 2018 at 03:27:01PM -0700, Linus Torvalds wrote:
>>>>>
>>>>> So maybe an automated "linux-next" that starts happening *before* the
>>>>> rc stage would catch some things?
>>>>
>>>> And it does, as soon as Greg publishes a set of patches.
>>>
>>> Yes, yes, I was clearly not explaining myself well.
>>>
>>> I see all the reports that you (and Nathan, and Shuah, and others) do
>>> for stable rc's. So I very much know that happens.
>>>
>>> But I was literally thinking of that week or two *before* Greg
>>> actually picks up the stable patches because he wants to have them get
>>> some testing in mainline first.
>>>
>>> *If* the same kinds of scripts that Greg and Sasha already use to pick
>>> up their stable patches could be automated early, maybe the patches
>>> would also get a bit of special testing in the *context* of the stable
>>> tree? A special automated "these are marked for stable, but haven't
>>> been picked up yet" stable-next testing thing?
>>
>> I agree. This is what I was suggesting with stable-next branches.
> 
> Ok, this sounds semi-reasonable.  I'll knock something up this week to
> see if it's viable to do automated and then have it get sent to 0-day to
> do a basic "smoke test".

This is a good idea to help finding build errors earlier, but having it
in place would not have helped avoiding any of the reported regressions
on stable releases.

On the other side, adding networking tests and some basic virtual/network
file system tests to the existing test suites would have caught several
of the recent regressions. Not all of them, for sure, but at least some.
If I had to choose one improvement, doing that would be my preference.

Guenter
