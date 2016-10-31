Return-Path: <sergey.senozhatsky@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5164B360
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 14:58:02 +0000 (UTC)
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DF4E3FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 14:58:01 +0000 (UTC)
Received: by mail-oi0-f66.google.com with SMTP id i127so12114732oia.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 07:58:01 -0700 (PDT)
Date: Mon, 31 Oct 2016 23:56:55 +0900
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20161031145655.GA433@swordfish>
References: <20160719034717.GA24189@swordfish> <20160921044156.GA486@swordfish>
	<20161031065435.GA458@swordfish>
	<20161031135617.bs7df7kur23gvm6b@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161031135617.bs7df7kur23gvm6b@thunk.org>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Tejun Heo <tj@kernel.org>, Jiri Kosina <jkosina@suse.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk considered harmful (was:
 [TECH TOPIC] asynchronous printk)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

On (10/31/16 09:56), Theodore Ts'o wrote:
> On Mon, Oct 31, 2016 at 03:54:35PM +0900, Sergey Senozhatsky wrote:
> > 
> > Any chance to do this session on Tuesday?
> > I prepared some slides; there are some patches circulating
> > and there are some things to discuss.
> 
> Unless there are strong reasons why this needs to be done on Tuesday,
> my preference would be to try to schedule tech topics on Wednesday or
> Thursday.  But sure, I'm happy to schedule such a topic if folks are
> interested.  Let me know what your potential conflicts might be and/or
> a preferred time slot.

ok, thanks. I personally will have some conflicts on Wed - "Open
panel for discussing MM problems" and some of LPC microconfs.

and I'd love to change the topic name since async printk is just
25% of the issue we want to discuss. the list I'm looking at now
is as follows:

1) deadlocks in printk and printk recursion
2) async printk
3) pr_cont
4) console semaphore scalability and problems

	-ss
