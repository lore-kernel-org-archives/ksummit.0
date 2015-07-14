Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E8CC99F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 16:11:50 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0034.hostedemail.com
	[216.40.44.34])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id 704C31DC7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 16:11:50 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave08.hostedemail.com (Postfix) with ESMTP id 63A7E2124EF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 16:02:28 +0000 (UTC)
Date: Tue, 14 Jul 2015 12:02:25 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sasha Levin <sasha.levin@oracle.com>
Message-ID: <20150714120225.65e489cc@gandalf.local.home>
In-Reply-To: <55A53074.7040109@oracle.com>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150714104623.GQ11162@sirena.org.uk>
	<55A51548.4040502@oracle.com>
	<20150714152515.GX11162@sirena.org.uk>
	<55A52B8B.5060606@oracle.com>
	<20150714113829.4b618d9a@gandalf.local.home>
	<55A53074.7040109@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Tue, 14 Jul 2015 11:53:24 -0400
Sasha Levin <sasha.levin@oracle.com> wrote:

 
> The point I'm trying to make is that a bad patch in Linus' tree has a wider
> ripple effect than what it were in the past, while Linus might consider a bad
> patch in one of the -rc releases something minor since "no one should be using
> it for production" it really isn't the case any more, those patches can and
> will end up with the folks who don't want to have them.

I have to ask, why?

Just because a stable tag is on a patch it automatically gets pulled
into stable? What about waiting a while before pulling in those
patches? Wait till -rc2 is out before pulling in any patches marked for
stable in -rc1. Then wait for -rc3 to pull in the patches that were
added in -rc2. But don't pull in any patches that has a "Fixes" to it
in the next -rc release.

That is, when -rc2 is released, only pull in the patches marked for
stable in -rc1 if there were no Fixes tags for them in -rc2. And so on.

Again, just placing stuff in -next isn't going to solve this. It may
help, but you will still have fixes that breaks things when they get
into Linus's tree no matter how long they were in -next. This is simply
because Linus's tree has a wider audience. But hopefully, the next
release candidate will have the fixes for anything that breaks in the
previous release candidate.

-- Steve
