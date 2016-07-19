Return-Path: <viresh.kumar@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 36D826C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 18:24:19 +0000 (UTC)
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1A8801C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 18:24:18 +0000 (UTC)
Received: by mail-pa0-f45.google.com with SMTP id fi15so9384772pac.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 11:24:18 -0700 (PDT)
Date: Tue, 19 Jul 2016 11:24:16 -0700
From: Viresh Kumar <viresh.kumar@linaro.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160719182416.GC13704@ubuntu>
References: <20160719034717.GA24189@swordfish>
	<1468939510.2383.5.camel@HansenPartnership.com>
	<20160719145509.GA563@swordfish>
	<1468951082.2383.29.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1468951082.2383.29.camel@HansenPartnership.com>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Tejun Heo <tj@kernel.org>, Jiri Kosina <jkosina@suse.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 19-07-16, 10:58, James Bottomley wrote:
> On Tue, 2016-07-19 at 23:55 +0900, Sergey Senozhatsky wrote:
> > Hello,
> > 
> > On (07/19/16 07:45), James Bottomley wrote:
> > > On Tue, 2016-07-19 at 12:47 +0900, Sergey Senozhatsky wrote:
> > > > Hello,
> > > > 
> > > > Wondering if anyone will be interested in printk-related topics
> > > > (or we can handle it in the mailing list).
> > > > 
> > > > What I have on my list is:
> > > 
> > > Are there any bug reports for these cases?  If there are, I'd use 
> > > the bug report as an opportunity to fix on the relevant list and if
> > > there aren't, I'd say that the problem is then largely theoretical 
> > > and there's not much point solving it until it becomes a real
> > > problem.
> > 
> > yes, there are reports. for instance,
> > http://marc.info/?l=linux-kernel&m=146823278316663
> 
> That's about backporting a fix from upstream to 3.12 to fix the
> particular issue, so it seems to be solved for the reporter as far as
> it goes.

Not really, we need patches from Sergey and Jan for async printing to make it
work.

-- 
viresh
