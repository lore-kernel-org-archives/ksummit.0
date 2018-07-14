Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6BEAEACC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Jul 2018 20:40:28 +0000 (UTC)
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 10B1DF1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Jul 2018 20:40:27 +0000 (UTC)
Received: by mail-pf0-f194.google.com with SMTP id a26-v6so2324564pfo.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Jul 2018 13:40:27 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
To: Pavel Machek <pavel@ucw.cz>
References: <20180501163818.GD1468@sasha-vm>
	<20180501194450.GD10479@thunk.org> <20180501200019.GA7397@sasha-vm>
	<20180501205448.GE10479@thunk.org> <20180501220228.GD7397@sasha-vm>
	<20180502043017.GA11938@1wt.eu> <20180502194139.GA18390@sasha-vm>
	<20180502200229.GA12729@1wt.eu>
	<20180714173812.xhfwtcijlxebmn2k@devuan>
	<e1198cd9-9113-d231-d15a-31ac5224b3b1@roeck-us.net>
	<20180714194716.GA27381@amd>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <4fbbb00c-dcc1-8a2a-a1c6-8d61d545b7b6@roeck-us.net>
Date: Sat, 14 Jul 2018 13:40:25 -0700
MIME-Version: 1.0
In-Reply-To: <20180714194716.GA27381@amd>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Greg KH <gregkh@linuxfoundation.org>, Willy Tarreau <w@1wt.eu>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/14/2018 12:47 PM, Pavel Machek wrote:
> Hi!
> 
>>>>> The way I see it, if a commit can get one or two tested-by, it's a good
>>>>> alternative to a week in -next.
>>>>
>>>> Agreed. Even their own actually. And I'm not kidding. Those who run large
>>>> amounts of tests on certain patches could really mention is in tested-by,
>>>> as opposed to the most common cases where the code was just regularly
>>>> tested.
>>>
>>> Actually, it would be cool to get "Tested: no" and "Tested: compile"
>>> tags in the commit mesages. Sometimes it is clear from the context
>>> that patch was not tested (treewide update of time to 64bit), but
>>> sometime it is not.
>>>
>>> This is especially problem for -stable, as it seems that lately
>>> patches are backported from new version without any testing.
>>
>>
>> When I started my own testing some five years ago, most architectures
>> did not even build in stable releases. At that time, the only tests being
>> done on stable release candidates were a number of build tests, and most
>> of the results were ignored.
>>
>> Today, we have 0day, kernelci, kerneltests, Linaro's LKFT, and more, plus
>> several merge and boot tests done by individuals. Stable release candidates
>> are build tested on all supported architectures, with hundreds of
> ...
>> Sure, testing is still far from perfect and needs to be improved. However,
>> requiring that every patch applied to stable releases be tested individually
>> (where ? on all affected architectures ?) would be the wrong
>> direction.
> 
> Well, 0day, kernelci etc... is nice... until the change is in the
> driver. Most of the kernel are drivers, remember?
> 
> I don't know. I'd say that if patch is important enough for -stable,
> there should be someone testing it. For core kernel changes, that can
> be 0day bot, but for drivers...
> 

For my part I am just glad that we were able to pick up a fix in xhci code
just last week, tested or not, from -stable, instead of having to track it
down ourselves. Similar for many other driver patches which _do_ affect us
(like the flurry of ext4 patches this week). Granted, there are lots of
patches which we don't use/need, but even there it is surprising how many
problems are found with existing testing.

For anyone interested in making sure that obscure (whatever that means)
drivers are tested for stable releases, but does not want to spend time on it,
all I can recommend is to implement qemu support for it and let me know,
and I'll be happy to add a respective test to my test farm.

However, ultimately, stable release candidates are public. Everyone is
invited to test them. Anyone interested in a specific release and driver
is invited take stable release candidates and do the necessary testing,
just like I and several others do.

> And problem exists on mainline, too.
> 
> Hmm. Patch for obscure driver. Wow, nice, is WellKnownName actually
> using that driver? Aha, no, he is not; he is doing global
> search&replace, and did not test the patch...
> 

Ah, like me with the strncpy(x, y, strlen(y)) -> memcpy() replacements
I did a week or so ago ? You are right, I only compile tested those and
otherwise trusted my ability to understand C code. If that caused any
problems, please let me know, and hopefully I'll be able to learn something
from it.

Really, there are infrastructure changes all the time. Sometimes I am asked
to run a complete test sequence with those, but most of the time they are
applied to -next and people wait for the fallout. That may not be perfect but,
seriously, the only alternative would be to declare that in-kernel APIs
shall not be changed anymore. I don't think that would be feasible.

Thanks,
Guenter
