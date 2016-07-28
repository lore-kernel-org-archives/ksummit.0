Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5D367995
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 02:59:48 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0043.hostedemail.com
	[216.40.44.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D7983298
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 02:59:47 +0000 (UTC)
Date: Wed, 27 Jul 2016 22:59:45 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Jan Kara <jack@suse.cz>
Message-ID: <20160727225945.50b29c20@grimm.local.home>
In-Reply-To: <20160719135529.GH6782@quack2.suse.cz>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<578DDAED.1070504@de.ibm.com> <578DDC5D.4070709@de.ibm.com>
	<20160719135529.GH6782@quack2.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 19 Jul 2016 15:55:29 +0200
Jan Kara <jack@suse.cz> wrote:

> Well, he backed up from that statement later a bit. So when I was
> discussing this problem with him at last KS he agreed that making printk
> async is the way to go and he specifically dismissed attempts to print
> synchronously for a while and fall back to async only later. He just wanted
> some way to get things to console synchronously once things go bad (oops,
> panic,...) which is discussed elsewhere in this thread.

Note, my selftests require synchronous printing, so I hope this feature
still allows locations to force that without being in oops mode. The
tracing selftests can cause triple faults, and seeing where it happened
is a must. I already had issues once when printk changed (temporarily)
to only dump out lines when a \n was seen. That caused me to think the
wrong test was rebooting the box.

-- Steve
