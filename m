Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7CA594D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 15:45:36 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BFE87122
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 15:45:35 +0000 (UTC)
Date: Thu, 21 Jul 2016 17:45:32 +0200
From: Jan Kara <jack@suse.cz>
To: Chris Mason <clm@fb.com>
Message-ID: <20160721154532.GC14146@quack2.suse.cz>
References: <578F36B9.802@huawei.com> <20160721100014.GB7901@quack2.suse.cz>
	<577236a8-2921-842a-2243-b8ecfe467381@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <577236a8-2921-842a-2243-b8ecfe467381@fb.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel tracing and end-to-end
 performance breakdown
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu 21-07-16 09:54:53, Chris Mason wrote:
> On 07/21/2016 06:00 AM, Jan Kara wrote:
> >
> >So I think improvements in performance analysis are always welcome but
> >current proposal seems to be somewhat handwavy so I'm not sure what outcome
> >you'd like to get from the discussion... If you have a more concrete
> >proposal how you'd like to achieve what you need, then it may be worth
> >discussion.
> >
> >As a side note I know that Google (and maybe Facebook, not sure here) have
> >out-of-tree patches which provide really neat performance analysis
> >capabilities. I have heard they are not really upstreamable because they
> >are horrible hacks but maybe they can be a good inspiration for this work.
> >If we could get someone from these companies to explain what capabilities
> >they have and how they achieve this (regardless how hacky the
> >implementation may be), that may be an interesting topic.
> 
> At least for facebook, we're moving most things to bpf.  The most
> interesting part of our analysis isn't so much from the tool used to record
> it, it's from being able to aggregate over the fleet and making comparisons
> at scale.
> 
> For example, Josef setup the off-cpu flame graphs such that we can record
> stack traces for a latency higher than N, and then sum up the most expensive
> stack traces over a large number of machines.  It makes it much easier to
> find those happens-once-a-day problems.

By latency higher than N, do you mean that e.g. a syscall took more than N,
or just that a process is sleeping for more than N in some place?

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
