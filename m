Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3D12AF7E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 01:09:56 +0000 (UTC)
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E1E7D5E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 01:09:55 +0000 (UTC)
Received: by mail-it0-f45.google.com with SMTP id j81-v6so18562957ite.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 18:09:55 -0700 (PDT)
MIME-Version: 1.0
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
In-Reply-To: <20180907004944.GD16300@sasha-vm>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 6 Sep 2018 18:09:43 -0700
Message-ID: <CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
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

On Thu, Sep 6, 2018 at 5:51 PM Sasha Levin via Ksummit-discuss
<ksummit-discuss@lists.linuxfoundation.org> wrote:
>
> Assuming you've read the original mail, it appears that most parties who
> participated in the discussion agreed that there's an issue where
> patches that go in during (late) -rc cycles seems to be less tested and
> are buggier than they should be.

Some parties didn't participate, because it was pointless.

Honestly, is that even interesting data?

Seriously.

OF COURSE the patches that go in during late -rc cycles are newer and
less tested. Anything else would be insane and stupid.

Patches that go in through the merge window should have been around
for a while. They should have been in -next. They should have gone
through a lot of testing by the developer, and by all the test-bots
etc we have.

So by any measure, the normal development patches should *absolutely*
be the ones that are

 (a) most tested, most of those patches have been around for a long
time and discussed. Sometimes for months. Sometimes for closer to a
_year_ before a feature really gets merged.

 (b) hopefully the patches I pull during the merge window mostly
pretty normal and noncontroversial. Sure, some of them have bugs too,
but on average, you'd expect a patch to be good.

 (c) not very subtle at all on average. Again, most patches are just
not very "interesting". They're bread-and-butter trivial changes.

Now, compare that to something that goes in late in the rc timeframe.

Ask yourself what kind of patch does that. Really ask yourself that,
and ask yourself what caused that patch to go in late in the rc.

I'll tell you:

 (a) it's likely a nastier issue than most patches. It wasn't some
simple thing, and it wasn't an obvious problem.

 (b) it's subtle. It took a while to even find the bug, much less fix it.

 (c) it sure as hell isn't going to be a patch that has been around
for a long time and that has gone through a lot of linux-next etc.

So OF COURSE the patches that come in late during rc not only see less
testing, but they are for subtler issues to begin with! They are fixes
for unusual corner cases that the developer didn't think of.

So exactly what do you think it proves that late rc patches then might
be buggier than average?

I claim it proves nothing at all. It's just a direct consequence of
late rc patches being _different_, and being much more difficult
issues than your average patch.

Not all patches start out the same. Saying "a higher percentage of rc
patches are buggy and less tested than during the merge window" isn't
even worth commenting on.

                  Linus
