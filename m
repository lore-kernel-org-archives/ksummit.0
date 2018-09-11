Return-Path: <James.Bottomley@Hansenpartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0F13ECD3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:19:42 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 975D98D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:19:41 +0000 (UTC)
In-Reply-To: <20180911181249.GA1783@localhost.localdomain>
References: <CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180910174638.26fff182@vmware.local.home>
	<20180910230301.GB1764@localhost.localdomain>
	<20180910191329.70f90a14@vmware.local.home>
	<20180911114227.241f2e5d@vmware.local.home>
	<20180911174043.GK5659@atomide.com>
	<1536688022.3511.5.camel@HansenPartnership.com>
	<20180911181249.GA1783@localhost.localdomain>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8
From: James Bottomley <James.Bottomley@Hansenpartnership.com>
Date: Tue, 11 Sep 2018 11:19:20 -0700
To: Eduardo Valentin <edubezval@gmail.com>
Message-ID: <0f1c0bda-61f1-4df4-9161-1230eb5eef46@email.android.com>
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

On September 11, 2018 11:12:51 AM PDT, Eduardo Valentin <edubezval@gmail.com> wrote:
>Hey,
>
>On Tue, Sep 11, 2018 a 10:47:02AM -0700, James Bottomley wrote:
>> On Tue, 2018-09-11 at 10:40 -0700, Tony Lindgren wrote:
>> > * Steven Rostedt <rostedt@goodmis.org> [180911 15:46]:
>> > > On Mon, 10 Sep 2018 19:13:29 -0400
>> > > Steven Rostedt <rostedt@goodmis.org> wrote:
>> > > 
>> > > > On Mon, 10 Sep 2018 16:03:03 -0700
>> > > > Eduardo Valentin <edubezval@gmail.com> wrote:
>> > > > 
>> > > > > I thought that was the case already, everthing that goes to
>> > > > > linux-next is ready to go to Linus.  
>> > > > 
>> > > > It's suppose to be, but not always, and this is why I suggested
>> > > > that Linus start yelling at those that are not doing it.
>> > > > 
>> > > 
>> > > This may have come across a bit too strong. We don't need Linus
>to
>> > > yell, but there should definitely be consequences for any
>> > > maintainer that pushes untested code to linux-next. At a bare
>> > > minimum, all code that goes into linux-next should have passed
>0day
>> > > bot. Push code to a non-linux-next branch on kernel.org, wait a
>few
>> > > days, if you don't get any reports that a bot caught something
>> > > broken, you should be good to go (also you can opt-in to get
>> > > reports on 0day success, which I do, to make that cycle even
>> > > shorter). And that's a pretty low bar to have to
>> > > pass. Ideally, all maintainers should have a set of tests they
>run
>> > > before pushing anything to linux-next, or to Linus in the late
>> > > -rcs. If you can't be bothered just to rely on at least 0day then
>> > > you should not be a maintainer.
>> > 
>> > Based on the regressions I seem to hit quite a few Linux next
>> > regressions could have been avoided if Andrew's mm tree had seem
>some
>> > more testing before being added to next. Probably because Andrew
>> > queues lots of complicated patches :)
>> > 
>> > So yeah what you're suggesting might help with that if we establish
>> > a let's say 24 hour period before adding branches to next. At
>> > least that gives the automated systems a chance to test stuff
>> > before it hits next. And people who want to can then test various
>> > branches separately in advance.
>> 
>> I really don't think that helps.  The 0day mailing list bot seems to
>be
>
>I think the idea is to minimize the failures on -next, and use the
>linux-next tree for its original purpose: check for integration issues.

We thought the patch was ready based on our acceptance criteria. That's why it went into our -next integration branch.  Finding bugs after we thought it was ready is a legitimate integration issue...


>> a bit overloaded and about 80% of the automation isn't run *unless*
>> your branch hits -next.  Our criterion for -next queueing is local
>
>Oh, I see. I was not aware of such dependency of the 0day bot. The
>kernelCI bot, which I mainly use after my local test, has no such
>requirement.
>
>> tests pass, code inspection complete and 0day ML didn't complain. 
>> However, we still get quite a few reports from the -next automated
>> testing even after our local stuff.  I really don't see what delaying
>> into -next buys you except delaying finding and fixing bugs.
>> 
>
>having a larger build/boot/test coverage before pushing on linux-next.
>But given the 0day dependency on -next itself, I am not sure it is
>worth
>it. Why is that a thing anyways? 0day cannot test individual branches?

0day does test most branches it finds but its better to work off a curated list which the -next build bot has.

James

>> This applies to 0day as well, because, by agreement, it has a much
>> deeper set of xfstest runs for branches we actually queue for -next
>> rather than the more cursory set of tests it runs on ML patches.
>> 
>> James
>> 
>> _______________________________________________
>> Ksummit-discuss mailing list
>> Ksummit-discuss@lists.linuxfoundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>_______________________________________________
>Ksummit-discuss mailing list
>Ksummit-discuss@lists.linuxfoundation.org
>https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss


-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.
