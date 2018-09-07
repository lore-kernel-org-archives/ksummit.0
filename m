Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5FDAB1065
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 14:54:41 +0000 (UTC)
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0120.outbound.protection.outlook.com [104.47.34.120])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B5D7F7CB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 14:54:40 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 7 Sep 2018 14:54:38 +0000
Message-ID: <20180907145437.GF16300@sasha-vm>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
In-Reply-To: <CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <96D893AFA6C56E42B686A4059AAEFF02@namprd21.prod.outlook.com>
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

On Thu, Sep 06, 2018 at 07:31:18PM -0700, Linus Torvalds wrote:
>On Thu, Sep 6, 2018 at 6:49 PM Sasha Levin
><Alexander.Levin@microsoft.com> wrote:
>>
>> You're saying that patches that come in during -rc cycles are more
>> difficult and tricky, and simultaneously you're saying that it's
>> completely fine taking them in without any testing at all. Does that
>> sound like a viable testing strategy?
>
>It sounds like *reality*.
>
>Note that I'm making the simple argument that there is a selection
>bias going on. The patches coming in are simply different.

Let's split this argument into two:

1. You argue that fixes for features that were merged in the current
window are getting more and more tricky as -rc cycles go on, and I agree
with that.

2. You argue that stable fixes (i.e. fixes for bugs introduced in
previous kernel versions) are getting trickier as -rc cycles go on -
which I completely disagree with.

Stable fixes look the same whether they showed up during the merge
window, -rc1 or -rc8, they are disconnected from whatever stage we're at
in the release cycle.

If you agree with me on that, maybe you could explain why most of the
stable regressions seem to show up in -rc5 or later? Shouldn't there be
an even distribution of stable regressions throughout the release cycle?

>What do you suggest you do about a patch that is a bug fix? Delay it
>until it has two weeks of testing? Which it won't get, because nobody
>actually runs it until it is merged?
>
>THAT is my argument. There _is_ no viable testing strategy once you're
>in the bug fix territory.

Sure, the various bots cover much less ground than actual users testing
stuff out.

However, your approach discourages further development of those bots. If
you're not going to use them properly then what's the point in investing
more effort into them.

If what you're saying is that it's pointless testing anything that comes
during late -rc windows then what reason I have to keep it in my
testing pipeline? I'll just drop all my upstream/-next testing and focus
on testing stable branches.

>> This is a *huge* reason why we see regressions in Stable.
>
>No.
>
>The *stable* people are the ones that were supposed to be the careful ones=
.
>
>Instead, you use automated scripts and hoover things up, and then you
>try to blame the development tree for getting stuff that regresses in
>your tree.

Yes, because stuff that regresses in my tree usually regresses your tree
as well.

This is also not about "hoovering": out of those 5 CoreOS issues, 2 came
in through David Miller's tree. David is probably the best person you
can have doing the net/ stable work and yet things still sneak in.

--
Thanks,
Sasha=
