Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1BD92B5A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 15:38:32 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0214.hostedemail.com
	[216.40.44.214])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9ED30185
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 15:38:31 +0000 (UTC)
Date: Tue, 14 Jul 2015 11:38:29 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sasha Levin <sasha.levin@oracle.com>
Message-ID: <20150714113829.4b618d9a@gandalf.local.home>
In-Reply-To: <55A52B8B.5060606@oracle.com>
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
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Tue, 14 Jul 2015 11:32:27 -0400
Sasha Levin <sasha.levin@oracle.com> wrote:

> If there's an issue that causes that effect then the original commit that
> caused it should be reverted rather than introducing an untested fix right
> away.
> 

You'd think. But there's been times that I sent a revert patch where
Linus himself would just make the fix instead. So Linus is just as
guilty as the rest of us for adding in patches that were not tested in
-next.

-- Steve
