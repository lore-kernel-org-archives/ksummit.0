Return-Path: <alex.shi@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 48AFC954
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Sep 2016 14:52:27 +0000 (UTC)
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8ED3114C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Sep 2016 14:52:24 +0000 (UTC)
Received: by mail-pf0-f172.google.com with SMTP id 21so20072161pfy.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Sep 2016 07:52:24 -0700 (PDT)
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
References: <57C78BE9.30009@linaro.org> <20160902191637.GC6323@sasha-lappy>
	<20160903000518.GN3950@sirena.org.uk> <1656524.OIRTMDr3jV@avalon>
	<57E22F8E.1040801@linaro.org> <20160921092341.GA25038@kroah.com>
From: Alex Shi <alex.shi@linaro.org>
Message-ID: <57E29EA3.2000605@linaro.org>
Date: Wed, 21 Sep 2016 22:52:19 +0800
MIME-Version: 1.0
In-Reply-To: <20160921092341.GA25038@kroah.com>
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



On 09/21/2016 05:23 PM, gregkh@linuxfoundation.org wrote:
>> > 
>> > I am not a fun of some scheduler solution. But focus on this can not
>> > explain why many distributions are using 'old' stable kernel. Looking
>> > into product world, could you find some real product are using
>> > 'upstream' kernel?
>> > 
>> > 'upstream first' is good for feature development, but isn't good for
>> > product.
> Not true, IBM and Intel have shown that it saves you time and money to
> do "upstream first", why do people claim that their reports of this is
> somehow false?  Other companies also agree, but just don't want to take
> the initial "hit" of time to do it correctly as it will affect the
> device today to save time and money for the device tomorrow.

Thanks for quick response!

I have left Intel Open source center for 3 years, may I miss some
changes in Intel. In my memory, Intel has no soft product on its leading
open source project, like virtualization or others. On android or
previous meego project, it's still use 'old' kernel with much of
down-stream patches.

So would you like to tell me more detailed info of IBM, Intel case?

> 
>> > Many product guys talked to me that the non-upstream porting didn't
>> > cost much and not the reason to pin on some stable kernel.
> You must be talking to product people who only have to make one device,
> not a family of devices :)

No, what I asked is one of Linaro core member, they are also leading
company in mobile phone.

> 
>> > All of them said that testing and stability was the most cost part.
> Sure, software is always free, it's that pesky testing and fixing all of
> the bugs found that costs money :)
> (hint, all of those backports and non-upstrem stuff is what is causing
> lots of those bugs...)
> 
>> > Not only the regular test case, benchmarks, but also the long time
>> > using for some trick/corner case bugs in whole system.
> What do you mean by this?

Uh, they are not so confident on the whole system stability, bug maybe
come from middle layer, or user APP the compatibility with kernel.
Regular testing cannot cover everything, some bug report also come from
consumers.

> 
>> > I doubt the 'keep rebasing on upstream' guys have been really worked on
>> > product?
> I doubt those "let's not work upstream" have been in this business for
> as long as those of us who say "work upstrem first" have :)

There are do many guys 'ignore' the upstream work with a huge 'time to
market' pressure. But there are not only their fault, community may need
some better ways to help them out.

BTW, I take back this word. There are may some industry out of my
experience which is doing so. But let me know the case.

> 
> Fine, you can ignore us, but realize that it will cost you time and
> money to _not_ work upstream.  We are just trying to help you out...

Sorry to give you this impression, but that's not what I mean. To save
mobile industry guys' time and give more help should be better than give
more pressure on them.
