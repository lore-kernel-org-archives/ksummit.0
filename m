Return-Path: <alex.shi@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 21133B37
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Sep 2016 03:15:15 +0000 (UTC)
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3B484233
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Sep 2016 03:15:14 +0000 (UTC)
Received: by mail-pf0-f176.google.com with SMTP id p64so25602177pfb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Sep 2016 20:15:14 -0700 (PDT)
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
References: <57C78BE9.30009@linaro.org> <20160902191637.GC6323@sasha-lappy>
	<20160903000518.GN3950@sirena.org.uk> <1656524.OIRTMDr3jV@avalon>
	<57E22F8E.1040801@linaro.org> <20160921092341.GA25038@kroah.com>
	<57E29EA3.2000605@linaro.org> <20160921152819.GA25212@kroah.com>
From: Alex Shi <alex.shi@linaro.org>
Message-ID: <57E34CBE.6080907@linaro.org>
Date: Thu, 22 Sep 2016 11:15:10 +0800
MIME-Version: 1.0
In-Reply-To: <20160921152819.GA25212@kroah.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


On 09/21/2016 11:28 PM, gregkh@linuxfoundation.org wrote:
> Being one of the previous Meego kernel maintainers, and in charge of a
> number of laptops that shipped Meego images (we made money on
> preinstalled Linux!) I strongly disagree with that statement.  We spent
> a lot of time getting all of the work we did for Meego upstream when we
> added it to our kernels, there was no deviation there at all.

Thanks info, Greg!

I wish every company could have engineers as good as you. Then there is
no needs on LTSI or LSK like things.

But the fact is much of company still need some help on kernel. Even in
Meego project, most of vendors can not do well as your team, they still
need 'reference kernel' and keep much out of tree code.

http://www.allaboutmeego.com/news/item/12477_MeeGo_kernel_policy_announceme.php
--
Correspondingly, maintainers of "kernel adaptations" will be expected to
backport features from the main MeeGo reference kernel to their own
kernels, to protect the reputation of MeeGo and maintain functionality
for end-users.
--
BTW, meego.com disappeared, so I can not find full kernel policy of
meego now.

> 
>> So would you like to tell me more detailed info of IBM, Intel case?
> 
> It's online somewhere, and has been described in many presentations from
> executives of both companies.  I think there was a business "whitepaper"
> written somewhere as well that went into the details.
> 
>>>>> Many product guys talked to me that the non-upstream porting didn't
>>>>> cost much and not the reason to pin on some stable kernel.
>>> You must be talking to product people who only have to make one device,
>>> not a family of devices :)
>>
>> No, what I asked is one of Linaro core member, they are also leading
>> company in mobile phone.
> 
> Lots of companies ship mobile phones, none of them do it well :)

That depends on how you define 'well'. :)
Yes, they has no capability to polish software system in ideal status.
but they give people more choices on smart phone. Not only iphone.

> 
>>>>> All of them said that testing and stability was the most cost part.
>>> Sure, software is always free, it's that pesky testing and fixing all of
>>> the bugs found that costs money :)
>>> (hint, all of those backports and non-upstrem stuff is what is causing
>>> lots of those bugs...)
>>>
>>>>> Not only the regular test case, benchmarks, but also the long time
>>>>> using for some trick/corner case bugs in whole system.
>>> What do you mean by this?
>>
>> Uh, they are not so confident on the whole system stability, bug maybe
>> come from middle layer, or user APP the compatibility with kernel.
> 
> Really?  That's news to me, what are we breaking at that layer?  We
> ALWAYS want to know information like that as we do not accept that.

Sorry. I can not get more detailed info from them.

> 
>> Regular testing cannot cover everything, some bug report also come from
>> consumers.
> 
> Sure, you do realize you are talking to lots of people here who
> individually have decades of shipping Linux products on lots of
> different platforms?  :)
> 
> We know bug reports come from everyone, there is no such thing as "bug
> free software", and none of us are claiming it.  What we are claiming is
> that you should stick to the tree that is tested by as many people as
> possible the closest (i.e. mainline) as that gets you the most bug
> fixes, as well as the ability to use the kernel community to help you
> out when you have problems.  Otherwise you are on your own with your
> 2.5million lines added franken-kernel that no one will touch if they
> have a choice not to.
> 
>>>>> I doubt the 'keep rebasing on upstream' guys have been really worked on
>>>>> product?
>>> I doubt those "let's not work upstream" have been in this business for
>>> as long as those of us who say "work upstrem first" have :)
>>
>> There are do many guys 'ignore' the upstream work with a huge 'time to
>> market' pressure. But there are not only their fault, community may need
>> some better ways to help them out.
> 
> Ok, why are they not talking to us?  We are easy to find, just look at
> our inboxes :)
> 
> What do you think we could do to help them out?  That's what I have been
> doing for the past 10 years in going around and working with companies.
> But it's a two-way street, we aren't going to suddenly stop development
> on new kernels and just focus on one specific one for a full year, you
> have to be realistic.

Actually, I have no much good idea on helping them. But seems LTSI/LSK
is kind of thing would give some help.

Open source is a large world with many players which isn't good enough.

The interesting thing is, we always play the same role as you here to
our members, to encourage them to involve more in community, to use
latest kernel/LTS as they can. But they need time and more practice.

> 
>> BTW, I take back this word. There are may some industry out of my
>> experience which is doing so. But let me know the case.
> 
> Lots of them are, look at the customers of Renesas as one such example
> of an SoC company that knows how to do this well, and is doing a great
> job.  And their customers seem to appreciate it from what I can tell.

Good to know. Thanks!

> 
>>> Fine, you can ignore us, but realize that it will cost you time and
>>> money to _not_ work upstream.  We are just trying to help you out...
>>
>> Sorry to give you this impression, but that's not what I mean. To save
>> mobile industry guys' time and give more help should be better than give
>> more pressure on them.
> 
> We have given them lots of help, we gave them a whole kernel, and
> another company gave them a whole operating system for free.  What more
> do they want? :)
> 

Shortly here, LTSI/LSK. For long term, the capability for upstream work.

Well, the LTSI/LSK do save their time and release more engineers to
upstream work.
