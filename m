Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 329B6AF1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:19:59 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BA59120359
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:19:58 +0000 (UTC)
Date: Fri, 9 May 2014 10:19:54 -0700
From: josh@joshtriplett.org
To: Dave Jones <davej@redhat.com>
Message-ID: <20140509171954.GC8289@cloud>
References: <20140509170709.GA9747@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140509170709.GA9747@redhat.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 09, 2014 at 01:07:09PM -0400, Dave Jones wrote:
> I gave a lightning talk on this last year. This year I have a bit more data
> so could probably fill a whole session.
> 
> Last year I had been doing the coverity scans on an almost daily basis
> for 2-3 months.  Now that we're a year in, I'd like to share some
> results, and show some of the more common trends and bug patterns that
> seem to pop up.
> 
> [ spoiler: For the most part, it's all pretty positive, but we still suck ]
> 
> It would also be good to have some more discussion about other tools
> we could be making more use of.  (Nomination: Dan Carpenter for smatch).

I'd like to see this topic as well.  I think we could do a lot better
here than we do.  And don't forget that GCC is one of our top static
analysis tools, if only because it's the only one *everyone* runs; that
includes both warnings and the possibility of shipping and building our
own GCC plugin.

I'd also like to nominate Christopher Li, for Sparse.

- Josh Triplett
