Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 79D5BB01
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 19:41:02 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0183.hostedemail.com
	[216.40.44.183])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2AD251FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 19:41:01 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id A412DB1E23
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 19:22:47 +0000 (UTC)
Date: Tue, 6 Sep 2016 15:22:43 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Al Viro <viro@ZenIV.linux.org.uk>
Message-ID: <20160906152243.766f3845@gandalf.local.home>
In-Reply-To: <20160906185143.GF2356@ZenIV.linux.org.uk>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [topic proposal] tracepoints and ABI
 stability warranties
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 6 Sep 2016 19:51:43 +0100
Al Viro <viro@ZenIV.linux.org.uk> wrote:

> 	I think this is something that needs to be discussed at KS; IMO we
> need at least some way to express the degree of stability promises made
> wrt individual tracepoints and some mechanisms for preventing silent creep
> towards full stability; something along the lines of "unstable tracepoint $FOO
> used by $PROGRAM, kernel tainted", at least.

What about having a set of tracepoints that are only enabled if one
adds to the kernel command line "this-kernel-is-broken" and a big
printk banner saying something like:

*****************************************************************
*****************************************************************
**        WARNING WARNING WARNING WARNING WARNING WARNING      **
**                                                             **
**        This kernel is BROKEN! Do not use in production      **
*****************************************************************
*****************************************************************

Then the tracepoints in vfs will appear.

This worked so far with my trace_printk() usage.

-- Steve
