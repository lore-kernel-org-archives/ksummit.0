Return-Path: <BATV+598c32ccc3a9ece13a58+4371+infradead.org+hch@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3719574
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 18:21:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 03E241E8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 18:21:03 +0000 (UTC)
Date: Wed, 12 Aug 2015 11:21:03 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Stephen Hemminger <stephen@networkplumber.org>
Message-ID: <20150812182103.GA20106@infradead.org>
References: <20150812111552.0f7e5fe7@urahara>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150812111552.0f7e5fe7@urahara>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] userspace infrastructure services
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 12, 2015 at 11:15:52AM -0700, Stephen Hemminger wrote:
> I expected someone else to bring this topic up...
> 
> One thing that is happening is that there is lots of activity in moving core features
> of the kernel into userspace (networking, storage, security). I don't want to get into
> an argument over whether that is good or bad;

Which I think is the most important question of them all.  From all
the pain caused and the little gains I'm a believer it's mostly bad,
especially for cases like:

> The area I am most familiar with is the DPDK which has to have its own UIO drivers
> to work in all environments (get device into userspace). And then has to have its
> own drivers to simulate network device (put device back into kernel).  This leads
> to unmanageable ABI and development technical debt.

Which interacts on both sides.  In that case "let them suffer for their
stupidity" is the only valid answer.

For a case where it's more reasonable there might be a different answer.
