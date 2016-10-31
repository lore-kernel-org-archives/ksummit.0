Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 39A425AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 16:18:36 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3445C1B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 16:18:34 +0000 (UTC)
Date: Mon, 31 Oct 2016 12:18:24 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Message-ID: <20161031161824.3knff5u3m6mipelv@thunk.org>
References: <20160719034717.GA24189@swordfish> <20160921044156.GA486@swordfish>
	<20161031065435.GA458@swordfish>
	<20161031135617.bs7df7kur23gvm6b@thunk.org>
	<20161031145655.GA433@swordfish>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161031145655.GA433@swordfish>
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

On Mon, Oct 31, 2016 at 11:56:55PM +0900, Sergey Senozhatsky wrote:
> ok, thanks. I personally will have some conflicts on Wed - "Open
> panel for discussing MM problems" and some of LPC microconfs.

would 10:00am (after the MM panel) work for you and others?

> and I'd love to change the topic name since async printk is just
> 25% of the issue we want to discuss. the list I'm looking at now
> is as follows:
> 
> 1) deadlocks in printk and printk recursion
> 2) async printk
> 3) pr_cont
> 4) console semaphore scalability and problems

So a topic name like "printk improvements" would be better?

     	   	     	     		   	 - Ted
