Return-Path: <sergey.senozhatsky@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7F5CB892
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 18:22:45 +0000 (UTC)
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EF2FA1E7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 18:22:43 +0000 (UTC)
Received: by mail-pf0-f194.google.com with SMTP id n85so9342669pfi.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 11:22:43 -0700 (PDT)
Date: Tue, 1 Nov 2016 03:21:33 +0900
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20161031182133.GA490@swordfish>
References: <20160719034717.GA24189@swordfish> <20160921044156.GA486@swordfish>
	<20161031065435.GA458@swordfish>
	<20161031135617.bs7df7kur23gvm6b@thunk.org>
	<20161031145655.GA433@swordfish>
	<20161031161824.3knff5u3m6mipelv@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161031161824.3knff5u3m6mipelv@thunk.org>
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

On (10/31/16 12:18), Theodore Ts'o wrote:
> On Mon, Oct 31, 2016 at 11:56:55PM +0900, Sergey Senozhatsky wrote:
> > ok, thanks. I personally will have some conflicts on Wed - "Open
> > panel for discussing MM problems" and some of LPC microconfs.
> 
> would 10:00am (after the MM panel) work for you and others?

speaking for myself only,
if there are no better options, then I'm OK with Wed 10am. I'd like
to be in Sweeney AB starting from 11:20am, but can sacrifice it, if
need be (in case if 10am doesn't work for someone. or if 1hr won't
be enough (which is quite likely)). so let's hear from others.

> > and I'd love to change the topic name since async printk is just
> > 25% of the issue we want to discuss. the list I'm looking at now
> > is as follows:
> > 
> > 1) deadlocks in printk and printk recursion
> > 2) async printk
> > 3) pr_cont
> > 4) console semaphore scalability and problems
> 
> So a topic name like "printk improvements" would be better?

"printk considered harmful" sounds good as well :) but "printk improvements"
can surely work.

	-ss
