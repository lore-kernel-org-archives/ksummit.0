Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7BA2E25A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 07:46:58 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 50E2F87
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 07:46:57 +0000 (UTC)
Date: Sun, 28 Aug 2016 09:47:06 +0200
From: Greg KH <greg@kroah.com>
To: Wolfram Sang <wsa@the-dreams.de>
Message-ID: <20160828074706.GB1370@kroah.com>
References: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
	<20160827183550.GB1601@katana>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160827183550.GB1601@katana>
Cc: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Aug 27, 2016 at 08:35:50PM +0200, Wolfram Sang wrote:
> Greg, Linus,
> 
> Putting all the enforcement issues aside, there is one sentence that
> struck me:
> 
> > > And corporations are a _huge_ part of our community, and frankly,
> > > the only reason we are where we are today.
> 
> I don't question the first part of the sentence, but I disagree to
> 'the only reason' in the second part.
> 
> The reason where we are today is the result of _all people_ contributing
> to Linux. I think our community is a lively mixture of particitpants
> hacking because of commercial, technical, enthusiastic, ideological and
> what not reasons. The beauty (and the challenge) is all of us working
> together. IMO this is one very important part which attracts some of the
> special talent which makes our community awesome. For me, it surely did.
> And that talent usually can't be attracted by, say, large investments or
> similar (which admittedly attracts other special talent and is OK, too).
> 
> So, I don't think it is fair to give credits "where we are today" _only_
> to the commercial side. And I have a hard time believing this view is
> fundamentally different from yours?

Ok, yes, that was worded a bit poorly, but we are developers, not
lawyers, and obviously no one is proof-reading our emails :)

The fact that we have made Linux a very friendly place to work with has
helped corporations help us out.  Almost everyone contributes to Linux
in a selfish manner, as I always say, and as Linus just said so again.

And that's great, as we want people to be selfish this way, because it
turns out that the solution for one company is almost always good for
everyone else as well.  And, the work that companies do in being selfish
are almost always things that any one of us working "on our own" would
have never done.

Some specific examples:
  - huge SMP support.  Yes, Alan got basic SMP support working in Linux,
    but in order to scale much larger we had to do different things.  As
    SMP hardware was rare, it took companies that had that hardware to
    do the work in the kernel to get things to work better.  Because of
    that we got access to RCU, which without that, we would have never
    been able to work as well as we have.  Look at the BSDs for an
    example of this, they don't have access to RCU, and they can't
    scale.
  - New hardware support, without access to specs, or hardware to test
    on, it takes a long time to get a kernel working.  USB 2 and USB 3
    support was sponsored by companies who had access to the specs
    early, and wanted to sell their hardware.  Linux was the better for
    this as we ended up getting it first.  Again, the BSDs are just now
    getting the basics of USB 3 support, as it's having to be done by
    people on their "own time".
  - LSM support.  My "day job" at the time was working on security
    things for Linux, and when the topic of a LSM came up at the kernel
    summit, I saw a way that I could get my employer to "sponsor" that
    work.  Without that, I certainly wouldn't have done it, as really,
    who wants to mess with that type of thing unless they have to?  :)
  - "Enterprise" features.  IBM pumped a lot of money into Linux to
    advance a lot of functionality that we didn't have, but it was
    perceived[1] that other operating systems did have at the time.
    These are things that on our own, we would have never done as we
    wouldn't have cared, nor would we have ever had access to hardware
    that "large".

And then there's the basic issue of the fact that when Linux kernel
developers get hired to work on the kernel full time, we get the chance
to both help our employer out (by letting them sell hardware) and we get
the chance to notice where other things need to be done.  I'm sure that
you have seen this when you are working for a client and notice that
"hey, we should really fix up all of those USB error messages some time
in the future" :)

So I strongly believe that without the help of companies contributing to
Linux, we wouldn't be here where we are today.  It's taken everyone to
get here, we can't do it alone.  So let's never try to cut ourselves off
of people we perceive as "the enemy", and instead, treat them as merely
"oh, they don't quite get it yet", and work to educate them and bring
them into our community[2].

thanks,

greg k-h

[1] When Solaris released their code many years ago, I poked around in
    it to see how they had solved many of the problems that we had had
    to implement in Linux based on "It's in Solaris so we have to have
    it in Linux as well!".  Turns out that Solaris never really did
    implement a lot of those things that they were talking about on
    their pretty marketing brochures.  We were working against a
    marketing department that was desperate for sales, so they were
    making stuff up based on what they thought the customer wanted.  If
    they would have gotten the sales, then maybe Solaris would have
    gotten the features.  So in a way, Solaris's marketing department
    was a driving force in how well Linux succeeded in those markets.

[2] Again, look at Intel as an example of how well this works.  They
    used to be a horrid example of a company abusing the GPL.  Also now
    look at Microsoft's support for Linux as another way that us being
    nice actually helps us.
