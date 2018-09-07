Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A0B74EC5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 01:49:35 +0000 (UTC)
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0094.outbound.protection.outlook.com [104.47.33.94])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 47D267EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 01:49:34 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 7 Sep 2018 01:49:31 +0000
Message-ID: <20180907014930.GE16300@sasha-vm>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
In-Reply-To: <CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <859C5EAEEACE1B4CA098002DD79007D0@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
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

On Thu, Sep 06, 2018 at 06:09:43PM -0700, Linus Torvalds wrote:
>On Thu, Sep 6, 2018 at 5:51 PM Sasha Levin via Ksummit-discuss
><ksummit-discuss@lists.linuxfoundation.org> wrote:
>>
>> Assuming you've read the original mail, it appears that most parties who
>> participated in the discussion agreed that there's an issue where
>> patches that go in during (late) -rc cycles seems to be less tested and
>> are buggier than they should be.
>
>Some parties didn't participate, because it was pointless.
>
>Honestly, is that even interesting data?
>
>Seriously.
>
>OF COURSE the patches that go in during late -rc cycles are newer and
>less tested. Anything else would be insane and stupid.
>
>Patches that go in through the merge window should have been around
>for a while. They should have been in -next. They should have gone
>through a lot of testing by the developer, and by all the test-bots
>etc we have.
>
>So by any measure, the normal development patches should *absolutely*
>be the ones that are
>
> (a) most tested, most of those patches have been around for a long
>time and discussed. Sometimes for months. Sometimes for closer to a
>_year_ before a feature really gets merged.
>
> (b) hopefully the patches I pull during the merge window mostly
>pretty normal and noncontroversial. Sure, some of them have bugs too,
>but on average, you'd expect a patch to be good.
>
> (c) not very subtle at all on average. Again, most patches are just
>not very "interesting". They're bread-and-butter trivial changes.
>
>Now, compare that to something that goes in late in the rc timeframe.
>
>Ask yourself what kind of patch does that. Really ask yourself that,
>and ask yourself what caused that patch to go in late in the rc.
>I'll tell you:
>
> (a) it's likely a nastier issue than most patches. It wasn't some
>simple thing, and it wasn't an obvious problem.
>
> (b) it's subtle. It took a while to even find the bug, much less fix it.
>
> (c) it sure as hell isn't going to be a patch that has been around
>for a long time and that has gone through a lot of linux-next etc.
>
>So OF COURSE the patches that come in late during rc not only see less
>testing, but they are for subtler issues to begin with! They are fixes
>for unusual corner cases that the developer didn't think of.

This is where you're wrong because I suspect that you don't see what's
going in (late) -rc cycles

You're saying that patches that come in during -rc cycles are more
difficult and tricky, and simultaneously you're saying that it's
completely fine taking them in without any testing at all. Does that
sound like a viable testing strategy?

>From your description, one would think that folks merge all their shiny
new features during the merge window and then spend the next two months
testing that new code, finding bugs and sending you fixes, and as time
goes by fixes are more difficult so it's okay to sneak them in late
during late -rc cycles.

This is complete bullshit.

Look at v4.17-rc8..v4.18: how many of those commits fix something
introduced in the v4.17 merge window vs fixing something older?

This is a *huge* reason why we see regressions in Stable. Take a look at
https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2018-September/=
005287.html
for a list of recent user visible regressions the CoreOS folks have
observed this year. Do you want to know when they were merged? Let me
help you: all but one were merged in -rc5 or later.

>So exactly what do you think it proves that late rc patches then might
>be buggier than average?

It proves that your rules on what you take during late -rc cycles make 0
sense. It appears that once we passed -rc5 you will take anything that
looks like a fix, even if it's completely unrelated to the current merge
window or if it's riskier to take that patch than revert whatever new
code that was merged in.

>I claim it proves nothing at all. It's just a direct consequence of
>late rc patches being _different_, and being much more difficult
>issues than your average patch.
>
>Not all patches start out the same. Saying "a higher percentage of rc
>patches are buggy and less tested than during the merge window" isn't
>even worth commenting on.

How can you justify sneaking a patch that spent 0 days in linux-next,
never ran through any of our automated test frameworks and was never
tested by a single real user into a Stable kernel release?

What's the point in all the testing effort that's going on if after -rc5
you just say "fuck it" and take stuff that didn't go through any
testing?

What's the rush in pulling in untested fixes for bugs that were
introduced in previous releases? Why can't they wait until the next
merge window?


--
Thanks,
Sasha=
