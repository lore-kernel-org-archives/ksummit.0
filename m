Return-Path: <sasha.levin@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8044693E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 15:53:35 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D0FD810A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 15:53:33 +0000 (UTC)
Message-ID: <55A53074.7040109@oracle.com>
Date: Tue, 14 Jul 2015 11:53:24 -0400
From: Sasha Levin <sasha.levin@oracle.com>
MIME-Version: 1.0
To: Steven Rostedt <rostedt@goodmis.org>
References: <55A1407E.5080800@oracle.com>	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>	<55A26C5B.8060007@oracle.com>	<20150713105210.6e367f4b@noble>	<55A33E48.2040202@oracle.com>	<20150713142132.08fead4d@gandalf.local.home>	<55A45AD8.5010400@oracle.com>	<20150713210226.519dedfd@gandalf.local.home>	<20150714104623.GQ11162@sirena.org.uk>	<55A51548.4040502@oracle.com>	<20150714152515.GX11162@sirena.org.uk>	<55A52B8B.5060606@oracle.com>
	<20150714113829.4b618d9a@gandalf.local.home>
In-Reply-To: <20150714113829.4b618d9a@gandalf.local.home>
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

On 07/14/2015 11:38 AM, Steven Rostedt wrote:
> On Tue, 14 Jul 2015 11:32:27 -0400
> Sasha Levin <sasha.levin@oracle.com> wrote:
> 
>> > If there's an issue that causes that effect then the original commit that
>> > caused it should be reverted rather than introducing an untested fix right
>> > away.
>> > 
> You'd think. But there's been times that I sent a revert patch where
> Linus himself would just make the fix instead. So Linus is just as
> guilty as the rest of us for adding in patches that were not tested in
> -next.

I suppose it depends on how trivial the patch in: I'm not saying not to do
it for simple things (spelling errors, trivial compile failures and such), but
yes - if Linus prefers to pull a more than trivial untested change to fix a
bug that makes him as guilty as the rest of us.

The point I'm trying to make is that a bad patch in Linus' tree has a wider
ripple effect than what it were in the past, while Linus might consider a bad
patch in one of the -rc releases something minor since "no one should be using
it for production" it really isn't the case any more, those patches can and
will end up with the folks who don't want to have them.


Thanks,
Sasha
