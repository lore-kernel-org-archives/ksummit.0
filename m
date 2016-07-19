Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 111816C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 17:58:05 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9A3C68E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 17:58:04 +0000 (UTC)
Message-ID: <1468951082.2383.29.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Date: Tue, 19 Jul 2016 10:58:02 -0700
In-Reply-To: <20160719145509.GA563@swordfish>
References: <20160719034717.GA24189@swordfish>
	<1468939510.2383.5.camel@HansenPartnership.com>
	<20160719145509.GA563@swordfish>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Viresh Kumar <viresh.kumar@linaro.org>,
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

On Tue, 2016-07-19 at 23:55 +0900, Sergey Senozhatsky wrote:
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
> > Are there any bug reports for these cases?  If there are, I'd use 
> > the bug report as an opportunity to fix on the relevant list and if
> > there aren't, I'd say that the problem is then largely theoretical 
> > and there's not much point solving it until it becomes a real
> > problem.
> 
> yes, there are reports. for instance,
> http://marc.info/?l=linux-kernel&m=146823278316663

That's about backporting a fix from upstream to 3.12 to fix the
particular issue, so it seems to be solved for the reporter as far as
it goes.

> I do have same problems with pintk (lockups, stalls, etc.)
> and even more.

OK, but given that the bugs are fixed as they're reported, the only
issue seems to be that some people think the fix is incomplete and
Andrew is sitting on it because he's unsure if the patches actually
solve the problem (or even if we have a problem).

The only comments from him I can find are in Jan's series:

http://thread.gmane.org/gmane.linux.kernel/1619692

The concern seems to be "prink is fragile you look to be making it
differently fragile, how is that of benefit".

So the problem is there's no overriding need driving this and it's
blocked by "vague concerns" about fragility.  Is there a process
problem that there's no effective way to move these patches forward
without finding an overriding need or addressing the concerns?

> > For instance on the KERN_CONT we've been debating the problems of 
> > pre-empt and continuation lines for years but no-ones cared enough 
> > to fix it.  This means either the problem isn't seen often enough 
> > in the field or that when it is seen there hasn't been much difficu
> > lty disentangling the log.  For the former, there's no need to fix 
> > something that isn't seen in practice and for the latter, if no-one 
> > cares enough then it's not a big enough problem to fix.
> 
> well, I agree that it doesn't make it impossible to read the logs.
> how often does it happen... on my laptop sometimes KERN_CONT lines
> are not always really continuous. so I observe it, in some sense.

OK, so it's unsightly but not necessarily a problem for reading the
logs.  Again, this means we have no overriding need to fix it.

James
