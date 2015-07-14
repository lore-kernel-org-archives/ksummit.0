Return-Path: <sasha.levin@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 43D5BBA2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 19:31:42 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0E722103
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 19:31:40 +0000 (UTC)
Message-ID: <55A5635D.1020600@oracle.com>
Date: Tue, 14 Jul 2015 15:30:37 -0400
From: Sasha Levin <sasha.levin@oracle.com>
MIME-Version: 1.0
To: Steven Rostedt <rostedt@goodmis.org>
References: <55A1407E.5080800@oracle.com>	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>	<55A26C5B.8060007@oracle.com>	<20150713105210.6e367f4b@noble>	<55A33E48.2040202@oracle.com>	<20150713142132.08fead4d@gandalf.local.home>	<55A45AD8.5010400@oracle.com>	<20150713210226.519dedfd@gandalf.local.home>	<20150714104623.GQ11162@sirena.org.uk>	<55A51548.4040502@oracle.com>	<20150714152515.GX11162@sirena.org.uk>	<55A52B8B.5060606@oracle.com>	<20150714113829.4b618d9a@gandalf.local.home>	<55A53074.7040109@oracle.com>
	<20150714120225.65e489cc@gandalf.local.home>
In-Reply-To: <20150714120225.65e489cc@gandalf.local.home>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
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

On 07/14/2015 12:02 PM, Steven Rostedt wrote:
> On Tue, 14 Jul 2015 11:53:24 -0400
> Sasha Levin <sasha.levin@oracle.com> wrote:
> 
>  
>> > The point I'm trying to make is that a bad patch in Linus' tree has a wider
>> > ripple effect than what it were in the past, while Linus might consider a bad
>> > patch in one of the -rc releases something minor since "no one should be using
>> > it for production" it really isn't the case any more, those patches can and
>> > will end up with the folks who don't want to have them.
> I have to ask, why?
> 
> Just because a stable tag is on a patch it automatically gets pulled
> into stable? What about waiting a while before pulling in those
> patches? Wait till -rc2 is out before pulling in any patches marked for
> stable in -rc1. Then wait for -rc3 to pull in the patches that were
> added in -rc2. But don't pull in any patches that has a "Fixes" to it
> in the next -rc release.
> 
> That is, when -rc2 is released, only pull in the patches marked for
> stable in -rc1 if there were no Fixes tags for them in -rc2. And so on.
> 
> Again, just placing stuff in -next isn't going to solve this. It may
> help, but you will still have fixes that breaks things when they get
> into Linus's tree no matter how long they were in -next. This is simply
> because Linus's tree has a wider audience. But hopefully, the next
> release candidate will have the fixes for anything that breaks in the
> previous release candidate.

I agree that this would be enough for -stable.

But wouldn't you agree that the policy of not passing patches in -rc cycles
through -next at all is incorrect?

I'm fine with not having a minimal time it must live in -next, but I really
think that it should be in -next at some point.



Thanks,
Sasha
