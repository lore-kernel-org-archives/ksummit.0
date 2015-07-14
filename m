Return-Path: <sasha.levin@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C8EC883D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 02:00:55 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3B35CF7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 02:00:55 +0000 (UTC)
Message-ID: <55A46D52.3030505@oracle.com>
Date: Mon, 13 Jul 2015 22:00:50 -0400
From: Sasha Levin <sasha.levin@oracle.com>
MIME-Version: 1.0
To: Steven Rostedt <rostedt@goodmis.org>
References: <55A1407E.5080800@oracle.com>	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>	<55A26C5B.8060007@oracle.com>	<20150713105210.6e367f4b@noble>	<55A33E48.2040202@oracle.com>	<20150713142132.08fead4d@gandalf.local.home>	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
In-Reply-To: <20150713210226.519dedfd@gandalf.local.home>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/13/2015 09:02 PM, Steven Rostedt wrote:
> On Mon, 13 Jul 2015 20:42:00 -0400
> Sasha Levin <sasha.levin@oracle.com> wrote:
> 
> 
>>> I disagree. I thought next was a place to have integration of new
>>> development, and not just a place to test. Really, how many people test
>>> next compared to Linus's tree? I trip over bugs all the times in
>>> Linus's tree that's been in -next for almost a whole release cycle.
>>
>> I didn't say that it's not for integration, I just said that with the
>> recent increase in testing by various people/organizations the focus
>> seems to be shifting to catching things in -next before they get into
>> Linus's tree.
> 
> Yes, it's great if we can catch things in -next. But I don't believe
> that patches that fix bugs found in Linus's tree should sit in next
> before going into Linus's tree, because those patches are basically
> fixing stuff that was already in next and wasn't discovered until it
> hit Linus's tree. Which is why I say it's a waste of time to put it in
> next before sending straight to Linus.

I disagree: quite a few of the patches I send out fix issues in -next rather
than Linus's tree. What makes you say that "those patches are basically
fixing stuff that was already in next and wasn't discovered until it git
Linus's tree"?

For example, looking at the workflow of mm/, I'm pretty sure that Andrew
could attest to the amount of fixes that go into mmotm for patches that
are still in mmotm.

>>>> I think that this is a small mind-shift from thinking about Linus's tree as
>>>> an integration tree to considering it as mostly bug-free code, and stop
>>>> merging in risky patches. We already have -next for that.
>>>
>>> No, we have -next as a way incorporate new code and see how things
>>> interact with other subsystems.
>>
>> I don't see why we're disagreeing?
> 
> I guess it's a point of view we are having. Maybe I'm misunderstanding
> you. Are you concerned about fixes that are sent straight to Linus
> without ever going into next? I do that quite often, and I too am
> guilty of having those fixes cause other bugs that need to be fixed.
> But I highly doubt that having them sit in next for two weeks would
> change that. Again, the code that the patches fix was already in next,
> and the original bug was never found there. What makes you think bugs
> in the fix patches will be any different?

Well, look at the last issue I've reported and you fixed:

 - "tracing: Have filter check for balanced ops" was merged in 4.1-rc8 as a fix, as
far as I can tell it never went through -next.

 - 4.1 was released shortly after, and that fix was backported into stable kernels
(3.14, for example, has that patch).

 - I've reported an issue with the patch, which was fixed in "tracing/filter: Do not
WARN on operand count going below zero", and got into 4.2.

 - The second fix, however, didn't make it into all stable kernels, which still have
only the original buggy fix.

This is exactly the scenario I'm saying we should prevent. I would even claim that
if the original fix would go through -next I would have spotted the issue before
it got into Linus's hands/stable and all this could be avoided.



Thanks,
Sasha
