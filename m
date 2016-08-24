Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 233C7308
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Aug 2016 17:37:56 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9F7D623C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Aug 2016 17:37:55 +0000 (UTC)
Date: Wed, 24 Aug 2016 13:38:03 -0400
From: Greg KH <greg@kroah.com>
To: Karen Sandler <karen@sfconservancy.org>
Message-ID: <20160824173803.GC30853@kroah.com>
References: <e315013e77cc851b040b5b5f4fe9f0bf@motives.com>
	<20160824130832.GA28564@kroah.com>
	<1472048738.7013.8.camel@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1472048738.7013.8.camel@localhost.localdomain>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 24, 2016 at 10:25:38AM -0400, Karen Sandler wrote:
> On Wed, 2016-08-24 at 09:08 -0400, Greg KH wrote:
> > On Wed, Aug 24, 2016 at 01:30:00AM -0400, Karen Sandler wrote:
> > > 
> > > There have been so many discussions about these topics by industry lawyers
> > > and executives behind closed doors, but developers have been generally
> > > kept out of the loop.
> > 
> > That's a very unfair comparison, "lawyers and executives" always are
> > "behind closed doors" as that's the way business works (and has to for
> > legal reasons as you know).  One can say the same thing about any type
> > of company meeting where anything is discussed.
> > 
> > And "developers" are not being kept out of any "loop" here, please, lots
> > of us know exactly what is going on here.
> 
> I'm of course not talking about internal company meetings, but rather
> invite-only backchannels where lawyers and executives are invited but
> developers are typically not.  I know, Greg, that you and a few other
> developers do cross between these worlds, but most Linux developers I've
> spoken to do not.  This session is an opportunity for those developers
> to hear about what's been going on in the last year.

But how are you going to present this if those were "closed meetings"?
Honestly, I'm curious?

> > > From what I see, the timing on this discussion has become critical.
> > 
> > Why is things "critical" now vs. the situation we had 5, 10, or 15 years
> > ago?
> 
> 5, 10, or 15 years ago we didn't have Patrick McHardy engaging in
> enforcement without coordinating with the rest of the netfilter team.
> Also, the recent VMware court ruling and its implications are new this
> year; the community of copyright holders should examine it and discuss
> it. 

15 years ago we had tons of closed source kernel drivers being created
and shipped by companies like IBM and Intel.  Without having to "enforce
the license" we converted and changed them such that they are now our
most ardent supporters.

10 years ago we had companies try to use the "GPL condom" defense to
ship closed source kernel modules.  We got that taken care of in ways
that had nothing to do with legal methods.

Yes, Patrick is not a good thing to have happen, but as numerous of us
have said to the companies involved, "let us know if we can help out"
and so far they have refused to do so.  So unless that happens, there's
not much we can do as a community.

thanks,

greg k-h
