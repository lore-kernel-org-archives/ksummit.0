Return-Path: <jason@lakedaemon.net>
Date: Sat, 9 Jul 2016 14:57:48 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160709145748.GC8989@io.lakedaemon.net>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1468024946.2390.21.camel@HansenPartnership.com>
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi James,

On Fri, Jul 08, 2016 at 05:42:26PM -0700, James Bottomley wrote:
> On Sat, 2016-07-09 at 00:06 +0000, Jason Cooper wrote:
> > On Sat, Jul 09, 2016 at 12:35:09AM +0200, Jiri Kosina wrote:
> > > I'd like to see an attempt to make the stable workflow more 
> > > oriented towards "maintainers sending pull requests" rather than 
> > > "random people pointing to patches that should go to stable".
> > 
> > How does that differ from "Cc: stable.." ?  In my experience, it's
> > mostly the maintainers adding that tag after looking at the commit it
> > "Fixes", if the commit id was provided.  Admittedly, my exposure is
> > limited to ARM mvebu and irqchip for the most part.
> 
> Actually, we do have maintainers who curate their own stable tree. 
>  David Miller for networking is an example.  Perhaps we should ask him
> and others who do this to describe the advantages they see in their
> trees over the "tag it for stable and forget about it" mentality that
> the rest of us have.  Perhaps Maintainers should be running their own
> stable trees ... perhaps what theyre doing is OK.  Debating it will at
> least flush out the issues.

It would be helpful if we could get a set of examples of regressions
which have occurred in the past.  It may be that we need to point
testing infra at the pending stable releases.  Or, change policy to
allow reverts in the stable tree while waiting for the proper fix from
mainline.  Without hard data, we're just guessing.

> > Do you want pull requests in order to limit patches to only from
> > maintainers?  Or to include a series of patches that have had more
> > testing against specific kernel versions?
> 
> The former is how the net stable tree works.

fwiw, I'm branch-happy any way.  Creating a few extra branches and
pushing them up for a stable-next merging and testing process
doesn't seem to be that much more effort than what we do now (Cc:
stable... # v3.8+, Fixes:, for-next)

I am concerned with how /many/ of those branches there would be.  If
maintainers only had to make one branch against the oldest relevant
version, that would be manageable.  We probably just need to indicate
the mainline commit in the stable commit.  Automation could handle
rebasing, merging, compile-testing, etc.

> > Do you have a sense of the specific regressions that cause people to
> > give up on -stable?
> 
> Every added patch has potential consequences.  In theory the
> maintainers are best placed to understand what they are, so a
> maintainer to stable flow might be the best way of controlling
> regressions in stable.  On the other hand, running stable trees is
> something Greg was supposed to be offloading from Maintainers, so I
> suspect a lot of them don't want the added burden of having to care.

Well, we've had this discussion in the past, and iirc, Greg was adamant
about not increasing the burden on maintainers.  I get that, but I think
if we make stable branches an optional path to -stable, it's a win for
everybody.  A maintainer either keeps doing Cc: stable, *or* posts a
branch based on the oldest applicable version.

> I'm not saying there's a right answer.  I am saying I think it's worth
> the discussion.

Agreed, but I'd love to hear from distro's and possibly target companies
who have experience with -stable.  Some which are still using -stable,
and some who have stopped.  And why for both. :)

I think it would also be good to hear from Stephen Rothwell and Mark
Brown wrt daily merging of hundreds of branches.

For myself, I've been happily using stable branches on most of my
embedded boxes that run my home network for years.  But that's a
completely different animal from delivering a product to a consumer.
Well, except when Netflix goes away :-P

thx,

Jason.
