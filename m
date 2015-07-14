Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5FA2DB8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 19:38:46 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0074.hostedemail.com
	[216.40.44.74])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id E49B01DD5A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 19:38:45 +0000 (UTC)
Date: Tue, 14 Jul 2015 15:38:42 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sasha Levin <sasha.levin@oracle.com>
Message-ID: <20150714153842.7a043946@gandalf.local.home>
In-Reply-To: <55A5635D.1020600@oracle.com>
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
	<20150714120225.65e489cc@gandalf.local.home>
	<55A5635D.1020600@oracle.com>
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

On Tue, 14 Jul 2015 15:30:37 -0400
Sasha Levin <sasha.levin@oracle.com> wrote:


> I agree that this would be enough for -stable.
> 
> But wouldn't you agree that the policy of not passing patches in -rc cycles
> through -next at all is incorrect?
> 
> I'm fine with not having a minimal time it must live in -next, but I really
> think that it should be in -next at some point.

I'm not sure I see this as totally necessary. But perhaps this should
be a KS topic, as I think this discussion is better resolved as a
discussion than over email.

-- Steve
