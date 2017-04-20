Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CAE44B6B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 15:34:42 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E311F1A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 15:34:41 +0000 (UTC)
Message-ID: <1492702478.790.15.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jonathan Corbet <corbet@lwn.net>
Date: Thu, 20 Apr 2017 08:34:38 -0700
In-Reply-To: <20170420084735.7ef1c3ef@lwn.net>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<20170418181506.30de0470@vento.lan> <20170419163636.6747a232@lwn.net>
	<alpine.LSU.2.20.1704200037430.12121@cbobk.fhfr.pm>
	<20170420052316.GA24503@infradead.org>
	<1492695238.27758.19.camel@HansenPartnership.com>
	<20170420084735.7ef1c3ef@lwn.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Miller <davem@davemloft.net>, Christoph Hellwig <hch@infradead.org>,
	Doug Ledford <dledford@redhat.com>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2017-04-20 at 08:47 -0600, Jonathan Corbet wrote:
> On Thu, 20 Apr 2017 06:33:58 -0700
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> 
> > I think it's worth discussing this.  We accept a lot of patches 
> > because we can and because the change looks innocuous enough, but 
> > which don't actually have a tangible user visible benefit.  Should 
> > we actually have a net benefit threshold test we apply?
> 
> With regard to the documentation patches, the intended tangible
> user-visible benefit is to turn a jumbled mess of a documentation
> directory into a set of coherent manuals that are aimed at and 
> readily accessible to our different audiences (kernel developers, 
> system administrators, application developers, etc. as appropriate).

I'm not saying don't do it, I'm staying understand the cost vs benefit
before doing it.

> If we had always tossed the SCSI subsystem source into a single
> directory along with SCTP, user-mode Linux, perf, half of the TTY
> drivers, and all filesystems written before the second Bush
> administration, it would certainly make for easier muscle-memory
> access for those of us who think back nostalgically to installing
> from floppies.  But for some strange reason we don't do that.

I'm also not saying do a flat tree.  I am saying putting things in the
right place ab initio and then having a reasonably high barrier for
moving it has value.

> When code needs refactoring, we do so - when, as you said, there is a
> tangible benefit.

Right, I think we've been quite good at the refactor net benefit tests
... mostly, I think, because refactoring is a lot of work and a lot of
argument to get it accepted so people think very carefully before they
do it.  It is self supplying on the net benefit test ... I think we
have certain actions which aren't so self supplying in this regard.

Ideally, everything would be like this: the level of difficulty in
doing something would be directly proportional to the amount of thought
you should put into it.  However, the world is not mostly structured
like this hence the question about a net benefit test which would raise
the barrier.

>   The same applies to directory organization.  Though that may not
> apply to Documentation/ since we never really got around
> to an original factoring to refactor.
> 
> Anyway, you can see why I raised the issue.  I think that this 
> process is improving the documentation, making it more accessible, 
> and making more people interested in improving it.  But I have my 
> hands plenty full of other things and, if this work is really 
> swimming against the current, it would be good to know.

I'd prefer it if the summit didn't become a star chamber where we re
-run past decisions.  However, I think the process question of how (or
whether) we should add process barriers for certain actions is a useful
one.

James
