Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3A0958DC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Jun 2017 05:21:40 +0000 (UTC)
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D5FCDA6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Jun 2017 05:21:39 +0000 (UTC)
Received: by mail-pf0-f196.google.com with SMTP id w12so15006878pfk.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 Jun 2017 22:21:39 -0700 (PDT)
Date: Mon, 19 Jun 2017 14:21:46 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: ksummit-discuss@lists.linuxfoundation.org, Petr Mladek <pmladek@suse.com>,
	Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20170619052146.GA2889@jagdpanzerIV.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

	I, Petr Mladek and Steven Rostedt would like to propose a printk
tech topic (as suggested by Steven). We are currently exploring the idea
of complete redesign and rework of printk and it would be extremely helpful
to hear from the community. printk serves different purposes, and some of
requirements of printk tend to contradict each other; printk is monolithic
and quite heavy, no wonder, it causes problems sometimes.

	So the questions are (a short list) - what the new printk should be?
should it remain monolithic, or can we split it? (e.g. core kernel messages
don't share the log buffer with debug/info messages, etc.) what are the
printk requirements? I've started playing with the idea of moving printk to
per-CPU model: log buffers, per-CPU printk flusher threads. does is it make
sense (wrt to printk requirements) to have direct and in-direct flushers of
printk messages (e.g. core kernel messages are printed directly; debug/info
messages are printed by printing kthreads, etc. well, unless in panic)? ...

	There are many other questions, so it'd be great to have a
brainstorming session.

	-ss
