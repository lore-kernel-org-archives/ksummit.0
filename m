Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 230C1950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 08:31:59 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8AF2811A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 08:31:58 +0000 (UTC)
Date: Wed, 20 Jul 2016 08:14:30 +0200
From: Jan Kara <jack@suse.cz>
To: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Message-ID: <20160720061430.GF3918@quack2.suse.cz>
References: <20160719034717.GA24189@swordfish>
	<1468939510.2383.5.camel@HansenPartnership.com>
	<20160719145509.GA563@swordfish>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160719145509.GA563@swordfish>
Cc: Jiri Kosina <jkosina@suse.com>, ksummit-discuss@lists.linuxfoundation.org,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Tejun Heo <tj@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue 19-07-16 23:55:09, Sergey Senozhatsky wrote:
> Hello,
> 
> On (07/19/16 07:45), James Bottomley wrote:
> > On Tue, 2016-07-19 at 12:47 +0900, Sergey Senozhatsky wrote:
> > > Hello,
> > > 
> > > Wondering if anyone will be interested in printk-related topics
> > > (or we can handle it in the mailing list).
> > > 
> > > What I have on my list is:
> > 
> > Are there any bug reports for these cases?  If there are, I'd use the
> > bug report as an opportunity to fix on the relevant list and if there
> > aren't, I'd say that the problem is then largely theoretical and
> > there's not much point solving it until it becomes a real problem.
> 
> yes, there are reports. for instance,
> http://marc.info/?l=linux-kernel&m=146823278316663
> 
> I do have same problems with pintk (lockups, stalls, etc.)
> and even more.

Yeah, and there are much more reports of these problems. Last reporter of
these issues was Vishal with his phone not being able to suspend due to too
many messages being printed, Hyper-V people reported these issues, in SUSE
we have machines which are *unable to boot* without async printk patches,
and there are more.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
