Return-Path: <sergey.senozhatsky@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 16E1F414
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 06:55:43 +0000 (UTC)
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3FFB1D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 06:55:42 +0000 (UTC)
Received: by mail-oi0-f68.google.com with SMTP id 128so2523682oih.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 30 Oct 2016 23:55:42 -0700 (PDT)
Date: Mon, 31 Oct 2016 15:54:35 +0900
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20161031065435.GA458@swordfish>
References: <20160719034717.GA24189@swordfish> <20160921044156.GA486@swordfish>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160921044156.GA486@swordfish>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Tejun Heo <tj@kernel.org>, Jiri Kosina <jkosina@suse.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

On (09/21/16 13:41), Sergey Senozhatsky wrote:
> a small addition to [1]
> 
> On (07/19/16 12:47), Sergey Senozhatsky wrote:
> > What I have on my list is:
> > - synchronous printk()
> > - synchronous console_unlock()
> > - console semaphore
> 
> Petr Mladek came up with a nice summary [2] of the problems that we
> discussed (with a small update from my side [3]). So I would like to
> add one more issue to the list, that is, however, not related to async
> printk: recursive printk calls. There is a tiny set of cases when
> printk can correctly handle recursive printk calls, the rest lead to
> deadlock. Those problems, may be, not commonly seen, we had two or three
> reports via the public mailing list in the past year; and I've seen 4-5
> reports in internal bug tracker (not all of those errors were due to
> incorrect printk usage. An unfortunate ARM imprecise abort [4] delivered
> while the CPU is in printk->console_unlock->try_to_wake_up under the p->pi_lock
> is enough to deadlock the system).
> 
> There a several ideas how to try to address those issues that I'm aware
> of [5],[6],[7] and, I'm quite sure, even more ideas that I'm not aware of.
> Would be interesting to discuss it.
> 
> [1] https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2016-July/002740.html
> [2] https://marc.info/?l=linux-kernel&m=147263639304079
> [3] https://marc.info/?l=linux-kernel&m=147264799407718&w=2
> [4] http://infocenter.arm.com/help/topic/com.arm.doc.faqs/14809.html
> [5] https://marc.info/?l=linux-kernel&m=147158843319944
> [6] https://marc.info/?l=linux-kernel&m=147183933104154
> [7] https://marc.info/?l=linux-kernel&m=145440084915204


Any chance to do this session on Tuesday?
I prepared some slides; there are some patches circulating
and there are some things to discuss.

	-ss
