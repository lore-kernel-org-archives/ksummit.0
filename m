Return-Path: <sergey.senozhatsky@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 716CD995
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 14:55:39 +0000 (UTC)
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 01455121
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 14:55:38 +0000 (UTC)
Received: by mail-pf0-f194.google.com with SMTP id g202so1545911pfb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 07:55:38 -0700 (PDT)
Date: Tue, 19 Jul 2016 23:55:09 +0900
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160719145509.GA563@swordfish>
References: <20160719034717.GA24189@swordfish>
	<1468939510.2383.5.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1468939510.2383.5.camel@HansenPartnership.com>
Cc: Jiri Kosina <jkosina@suse.com>, ksummit-discuss@lists.linuxfoundation.org,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Viresh Kumar <viresh.kumar@linaro.org>, Tejun Heo <tj@kernel.org>
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

On (07/19/16 07:45), James Bottomley wrote:
> On Tue, 2016-07-19 at 12:47 +0900, Sergey Senozhatsky wrote:
> > Hello,
> > 
> > Wondering if anyone will be interested in printk-related topics
> > (or we can handle it in the mailing list).
> > 
> > What I have on my list is:
> 
> Are there any bug reports for these cases?  If there are, I'd use the
> bug report as an opportunity to fix on the relevant list and if there
> aren't, I'd say that the problem is then largely theoretical and
> there's not much point solving it until it becomes a real problem.

yes, there are reports. for instance,
http://marc.info/?l=linux-kernel&m=146823278316663

I do have same problems with pintk (lockups, stalls, etc.)
and even more.


> For instance on the KERN_CONT we've been debating the problems of pre
> -empt and continuation lines for years but no-ones cared enough to fix
> it.  This means either the problem isn't seen often enough in the field
> or that when it is seen there hasn't been much difficulty disentangling
> the log.  For the former, there's no need to fix something that isn't
> seen in practice and for the latter, if no-one cares enough then it's
> not a big enough problem to fix.

well, I agree that it doesn't make it impossible to read the logs.
how often does it happen... on my laptop sometimes KERN_CONT lines
are not always really continuous. so I observe it, in some sense.

	-ss
