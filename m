Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BABA098B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 14:45:16 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7242014D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 14:45:15 +0000 (UTC)
Message-ID: <1468939510.2383.5.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 19 Jul 2016 07:45:10 -0700
In-Reply-To: <20160719034717.GA24189@swordfish>
References: <20160719034717.GA24189@swordfish>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Tejun Heo <tj@kernel.org>, Jiri Kosina <jkosina@suse.com>,
	Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2016-07-19 at 12:47 +0900, Sergey Senozhatsky wrote:
> Hello,
> 
> Wondering if anyone will be interested in printk-related topics
> (or we can handle it in the mailing list).
> 
> What I have on my list is:

Are there any bug reports for these cases?  If there are, I'd use the
bug report as an opportunity to fix on the relevant list and if there
aren't, I'd say that the problem is then largely theoretical and
there's not much point solving it until it becomes a real problem.

For instance on the KERN_CONT we've been debating the problems of pre
-empt and continuation lines for years but no-ones cared enough to fix
it.  This means either the problem isn't seen often enough in the field
or that when it is seen there hasn't been much difficulty disentangling
the log.  For the former, there's no need to fix something that isn't
seen in practice and for the latter, if no-one cares enough then it's
not a big enough problem to fix.

James
