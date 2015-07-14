Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8C1C193E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 02:28:20 +0000 (UTC)
Received: from vena.lwn.net (tex.lwn.net [70.33.254.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7EBAAF4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 02:28:19 +0000 (UTC)
Date: Mon, 13 Jul 2015 20:28:18 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150713202818.23310729@lwn.net>
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
Content-Transfer-Encoding: 8bit
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

On Mon, 13 Jul 2015 21:02:26 -0400
Steven Rostedt <rostedt@goodmis.org> wrote:

> Yes, it's great if we can catch things in -next. But I don't believe
> that patches that fix bugs found in Linus's tree should sit in next
> before going into Linus's tree, because those patches are basically
> fixing stuff that was already in next and wasn't discovered until it
> hit Linus's tree. Which is why I say it's a waste of time to put it in
> next before sending straight to Linus.

That, of course, assumes that these fixes don't introduce *other* bugs
that might just be caught in -next...

In general, though, I think a lot of people see -next as -rc1 without the
quality control; it's volatile and scary.  So it's not surprising that it
doesn't get a lot of real-world testing.  And, as long as that's the case,
there's going to be a lot of bugs that are never caught in -next.

jon
