Return-Path: <jikos@kernel.org>
Date: Sat, 9 Jul 2016 10:43:05 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1468024946.2390.21.camel@HansenPartnership.com>
Message-ID: <alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linux-foundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 8 Jul 2016, James Bottomley wrote:

> In theory the maintainers are best placed to understand what they are, 
> so a maintainer to stable flow might be the best way of controlling 
> regressions in stable.  

That exactly has been my reasoning, yes.

> On the other hand, running stable trees is something Greg was supposed 
> to be offloading from Maintainers, so I suspect a lot of them don't want 
> the added burden of having to care.

I do understand that, but let's face it; our ultimate and primary goal 
here should be 'making -stable reliably stable', not so much offloading 
work from maintainers.

If maintainers are overwhelmed by extra work needed for stable, 
"offloading to Greg" doesn't sound like a proper solution to me at all. 
"Fixing a maintainer workflow for that particular subsystem" (such as 
extending the group of maintainers) does.

> I'm not saying there's a right answer.  I am saying I think it's worth
> the discussion.

Thanks,

-- 
Jiri Kosina
SUSE Labs
