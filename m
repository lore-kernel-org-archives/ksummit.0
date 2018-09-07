Return-Path: <SRS0=wPzZ=LV=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DC93DD30
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 01:09:34 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 66C295E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 01:09:34 +0000 (UTC)
Date: Thu, 6 Sep 2018 21:09:31 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180906210931.2ea15bd9@vmware.local.home>
In-Reply-To: <20180907004944.GD16300@sasha-vm>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 7 Sep 2018 00:51:42 +0000
Sasha Levin <Alexander.Levin@microsoft.com> wrote:

> Assuming you've read the original mail, it appears that most parties who
> participated in the discussion agreed that there's an issue where
> patches that go in during (late) -rc cycles seems to be less tested and
> are buggier than they should be.
> 
> Most of that thread discussed possible solutions such as:
> 
>  - Not taking non-critical patches past -rcX (-rc4 seemed to be a
>    popular one).
>  - -rc patches must fix something introduced in the current merge
>    window. Patches fixing anything older should go in the next merge
>    window.

Interesting, because this is exactly what Linus blew up about that made
headlines and a loss of a kernel developer 5 years ago:

  https://lore.kernel.org/lkml/1373593870.17876.70.camel@gandalf.local.home/T/#mb7018718ce288b55fe041778721004cd62cd00a1


>  - 1 or more weeks at the end of the cycle where nothing is taken at all
>    and we only run testing.
>  - Mandate X days/weeks in linux-next before a patch goes in.
> 
> We've never reached a conclusion because maintainers have different
> approach to this and different pain points, so it seemed difficult
> finding a one-size-fits-all solution.
> 
> If you look at the few last -rc cycles of every release in recent
> history, almost all of them were written within 2-3 days of being
> merged. There is no way to properly test these patches.

Yep, and that's caused by the design of the kernel development work
flow. Linus sets a fast paced cycle, and patches will get in fast.
That's actually what makes stable a reason to keep around. If anything,
the wait period from entering Linus's tree to going into stable (for
everything but the embargo like fixes) should probably be a week or
two, being in Linus's tree is usually the best testing of any patch, as
that's the tree that probably gets the most testing. (We don't need QA,
that's what users are for ;-)

-- Steve

> 
> Furthermore, these patches often end up in Stable, which is quite bad of
> the Stable kernel's regression rates.
