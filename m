Return-Path: <hverkuil@xs4all.nl>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 20AAE2FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 20:33:44 +0000 (UTC)
Message-ID: <536FDE91.3050708@xs4all.nl>
Date: Sun, 11 May 2014 22:33:21 +0200
From: Hans Verkuil <hverkuil@xs4all.nl>
MIME-Version: 1.0
To: Levente Kurusa <levex@linux.com>, Greg KH <greg@kroah.com>
References: <20140511053037.GQ12708@titan.lakedaemon.net>	<536FBA0E.5090301@gmail.com>
	<20140511190752.GC2527@linux.com>	<20140511192630.GA14115@kroah.com>
	<20140511195011.GD2527@linux.com>
In-Reply-To: <20140511195011.GD2527@linux.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] hobbyist recruiting
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/11/2014 09:50 PM, Levente Kurusa wrote:
> On Sun, May 11, 2014 at 09:26:30PM +0200, Greg KH wrote:
>> On Sun, May 11, 2014 at 09:16:02PM +0200, Levente Kurusa wrote:
>>> Of course, the Eudyptula challenge did bring some new developers,
>>> but as far as I see most of them posted only one patch/patchset.
>>
>> How do you know who is doing this challenge and who isn't?  I see a lot
>> of new people coming in with multiple sets of patches for cleanups and
>> good fixes over the past month or so.  Trying to track where they
>> actually come from is nothing I really care about, and is probably
>> impossible.
> 
> I've been thinking about the people who have said so in their
> emails.
> 
>>
>> If you track the number of unique people I take patches from, it's
>> going up, as is our number of unique contributors to the kernel overall.
>> It's been constantly increasing for the past 8 years, ever since I
>> started tracking the kernel development statistics.
>>
>>> Maybe, there is a way so that they will stay and work more?
>>
>> I have loads of work for people to do if they want to do it:
>> 	drivers/staging/*/TODO
>>
> 
> I talk from my own experiences. I gave a talk recently and after the
> talk people asked me how could they start. The problem, they say, is
> that there really is no central TODO list. Maybe there could be a 
> Documentation/NewcomersStartHere-like file that would list for
> instance the TODO files in drivers/staging? It's nothing big, but
> would certainly help people find their ways.

It certainly wouldn't hurt, but I'm not sure if this will really solve
much. In general all you have to do is find the subsystem mailinglist
(or email of the subsystem maintainer) you are interested in and post
an email offering to help. Generally there are always jobs available
that need doing.

My experience though is that there is a big gap between offering to do
some work and actually doing that, and at least as large a gap from
going from posting a single patch to becoming a regular contributor.

One issue might be that as a 'newbie' the problems you can work on
initially tend to be simple and often relatively boring ones (code cleanup,
sparse fixes, etc). Any work on core code often requires substantial
experience. And any work on specific drivers requires access to the right
hardware, which is often expensive to arrange or just plain hard to find.

I guess that this might be why most of the regular contributors started
out trying to support their own or their company's hardware. Which tends
to be a project at the right level: challenging yet typically not overly
difficult, and you learn a lot about the subsystem (software, process and
people).

In the media subsystem I work in there are enough drivers that need a lot
of TLC and would be an ideal starting point for a newbie. But how would
they obtain the hardware to test with and would they even be interested in
working on a driver for hardware that was already out of date 5 years ago,
let alone today?

I guess my point is that I wonder what the real problem is: are we driving
away newbies because of some bad practices on our side, or is it just
simply hard to find qualified and motivated developers?

Answers on a postcard...

Regards,

	Hans

>>> Keep them somehow in the game, i.e. badges? Mozilla's Open Badges?
>>
>> Gamifaction?  Really?  No.
>>
> 
> Fedora is doing something like this as well.
> 
> Thanks,
>     Levente Kurusa.
> 
> 
> 
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
