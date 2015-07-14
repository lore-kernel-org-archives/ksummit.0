Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 64DA6ABA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 03:42:33 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [103.22.144.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8B1021A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 03:42:32 +0000 (UTC)
Date: Tue, 14 Jul 2015 13:42:29 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150714134229.16f6a5e4@canb.auug.org.au>
In-Reply-To: <20150713210226.519dedfd@gandalf.local.home>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Sasha Levin <sasha.levin@oracle.com>,
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

Hi Steven,

On Mon, 13 Jul 2015 21:02:26 -0400 Steven Rostedt <rostedt@goodmis.org> wrote:
>
> Yes, it's great if we can catch things in -next. But I don't believe
> that patches that fix bugs found in Linus's tree should sit in next
> before going into Linus's tree, because those patches are basically
> fixing stuff that was already in next and wasn't discovered until it
> hit Linus's tree. Which is why I say it's a waste of time to put it in
> next before sending straight to Linus.

Those bugs are not always for stuff that was in -next - there is a
significant amount of code that still does not see -next until the
merge window opens (if ever) ... and sometimes the fixes do get to sit
in -next (in my fixes tree) because they do not get forwarded to Linus
quickly (or Linus is asleep :-)) or I find them and need them so that I
can get on with further merges.

-- 
Cheers,
Stephen Rothwell                    sfr@canb.auug.org.au
