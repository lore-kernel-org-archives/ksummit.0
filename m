Return-Path: <James.Bottomley@HansenPartnership.com>
Message-ID: <1468024946.2390.21.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jason Cooper <jason@lakedaemon.net>, Jiri Kosina <jikos@kernel.org>
Date: Fri, 08 Jul 2016 17:42:26 -0700
In-Reply-To: <20160709000631.GB8989@io.lakedaemon.net>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Sat, 2016-07-09 at 00:06 +0000, Jason Cooper wrote:
> Hi Jiri,
> 
> On Sat, Jul 09, 2016 at 12:35:09AM +0200, Jiri Kosina wrote:
> > I'd like to see an attempt to make the stable workflow more 
> > oriented towards "maintainers sending pull requests" rather than 
> > "random people pointing to patches that should go to stable".
> 
> How does that differ from "Cc: stable.." ?  In my experience, it's
> mostly the maintainers adding that tag after looking at the commit it
> "Fixes", if the commit id was provided.  Admittedly, my exposure is
> limited to ARM mvebu and irqchip for the most part.

Actually, we do have maintainers who curate their own stable tree. 
 David Miller for networking is an example.  Perhaps we should ask him
and others who do this to describe the advantages they see in their
trees over the "tag it for stable and forget about it" mentality that
the rest of us have.  Perhaps Maintainers should be running their own
stable trees ... perhaps what theyre doing is OK.  Debating it will at
least flush out the issues.

> Do you want pull requests in order to limit patches to only from
> maintainers?  Or to include a series of patches that have had more
> testing against specific kernel versions?

The former is how the net stable tree works.

> Do you have a sense of the specific regressions that cause people to
> give up on -stable?

Every added patch has potential consequences.  In theory the
maintainers are best placed to understand what they are, so a
maintainer to stable flow might be the best way of controlling
regressions in stable.  On the other hand, running stable trees is
something Greg was supposed to be offloading from Maintainers, so I
suspect a lot of them don't want the added burden of having to care.

I'm not saying there's a right answer.  I am saying I think it's worth
the discussion.

James


> thx,
> 
> Jason.
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
