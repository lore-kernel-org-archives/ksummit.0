Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 17C15978
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Apr 2017 00:30:29 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2548BFF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Apr 2017 00:30:26 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Date: Fri, 28 Apr 2017 02:24:10 +0200
Message-ID: <13586793.7K2MbsFvOL@aspire.rjw.lan>
In-Reply-To: <1493302678.2810.18.camel@HansenPartnership.com>
References: <CA+55aFxFyX-6y0MH2QivC+GAVThEFNHVKc3DBZJzDBc9JU_nCQ@mail.gmail.com>
	<3caeb185-c30f-5069-8b8c-c7ccb3954175@suse.com>
	<1493302678.2810.18.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thursday, April 27, 2017 10:17:58 AM James Bottomley wrote:
> On Thu, 2017-04-27 at 13:02 +0200, Hannes Reinecke wrote:
> > On 04/27/2017 12:41 PM, Lee Jones wrote:
> > > On Thu, 27 Apr 2017, Jani Nikula wrote:
> > > > On Wed, 26 Apr 2017, James Bottomley <
> > > > James.Bottomley@HansenPartnership.com> wrote:
> > > > > Agreed, but I think you'll find most maintainers have a "trust 
> > > > > factor" for reviewers.  Perhaps we should discuss how we arrive 
> > > > > at this and how we should make it more public.  The way I often 
> > > > > deal with less trusted reviewers is to redo their review and 
> > > > > point out all the things they missed and ask them not to come 
> > > > > back until they can be more thorough.
> > > > 
> > > > I think that's also a bit harsh, because I think the only way to 
> > > > become a better reviewer is to... review. I know it's hard to 
> > > > balance being welcoming to new reviewers and ensuring the patches 
> > > > do get proper review in the end.
> > > 
> > > I'm inclined to agree, this is a harsh approach.  My personal 
> > > method is to allow anyone to review, regardless of their 
> > > credibility/trust status.  I make a point not to hamper or 
> > > criticise anyone that's genuinely tying to help, unless of f course 
> > > they are dishing out bogus review comments, then those will need 
> > > addressing, but only picking up even say 10% of the issues really 
> > > isn't a problem.  It doesn't matter how many points are picked-up 
> > > or missed, we as Maintainers can always conduct an additional
> > > review or one in parallel.
> 
> OK, so I should clarify that where I'm coming from is that I want not
> to have to review something if someone else has already done so.  I
> suppose I should add that you mostly get these type of comments from me
> if I expected I could rely on your review but a random inspection found
> significant issues.

Right, but this is not a black-and-white situation IMO.

Reviewers may overlook things even though they do their best and I guess that
happens to everyone occasionally.

One way to look at code review is as advice in a decision making process.
Of course, you are more likely to listen to people who tend to give you good
advice, but then they may not be right this time around and the decision
is for you to make anyway.

> > > I find additional reviewers particularly helpful if I'm overloaded,
> > > since I can then insist that the contributor fixes all outstanding
> > > review comments before I conduct my, hopefully thorough, review. 
> > > 
> > Indeed. From my POV the biggest problem is a shortage of reviewers, 
> > and we should be working on getting that resolved.
> 
> So wouldn't making review a precondition for patch acceptance be a
> strategy for at least helping with this?

I would be very careful about setting rules like that unless you absoultely
believe that you'll never need to break them, whatever the reason.

OTOH if people realize that doing review generally helps their patches to be
accepted, that may actually work. :-)

> > In fact, most developers I'm working with simply are too scared to do
> > any reviews, feeling as they do not being qualified enough.
> > If we take the abovementioned route that's a sure way of putting them
> > off reviewing for good.
> 
> I actually don't really believe people are afraid to review code.  I
> think mostly (particularly in SCSI) they've got their hands full with
> constructing submissions and don't want to expend the additional
> bandwidth.

Right.

There needs to be a clear benefit for the reviewer and ideally such that can
be presented to their management as a good deal.  Today, the perceived value
of code changes going in is much higher and people allocate their time
accordingly.

Thanks,
Rafael
