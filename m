Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0F3E4E2B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 13:59:27 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6F82476D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 13:59:25 +0000 (UTC)
Date: Thu, 13 Jun 2019 10:59:16 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20190613105916.66d03adf@coco.lan>
In-Reply-To: <1559838275.3144.6.camel@HansenPartnership.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838275.3144.6.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Thu, 06 Jun 2019 19:24:35 +0300
James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:

> [splitting issues to shorten replies]
> On Thu, 2019-06-06 at 17:58 +0200, Greg KH wrote:
> > On Thu, Jun 06, 2019 at 06:48:36PM +0300, James Bottomley wrote:  
> > > This is probably best done as two separate topics
> > > 
> > > 1) Pull network: The pull depth is effectively how many pulls your
> > > tree does before it goes to Linus, so pull depth 0 is sent straight
> > > to Linus, pull depth 1 is sent to a maintainer who sends to Linus
> > > and so on.  We've previously spent time discussing how increasing
> > > the pull depth of the network would reduce the amount of time Linus
> > > spends handling pull requests.  However, in the areas I play, like
> > > security, we seem to be moving in the opposite direction
> > > (encouraging people to go from pull depth 1 to pull depth 0).  If
> > > we're deciding to move to a flat tree model, where everything is
> > > depth 0, that's fine, I just think we could do with making a formal
> > > decision on it so we don't waste energy encouraging greater tree
> > > depth.  
> > 
> > That depth "change" was due to the perceived problems that having a
> > deeper pull depth was causing.  To sort that out, Linus asked for
> > things to go directly to him.  
> 
> This seems to go beyond problems with one tree and is becoming a trend.
> 
> > It seems like the real issue is the problem with that subsystem
> > collection point, and the fact that the depth changed is a sign that
> > our model works well (i.e. everyone can be routed around.)  
> 
> I'm not really interested in calling out "problem" maintainers, or
> indeed having another "my patch collection method is better than yours"
> type discussion.  What I was fishing for is whether the general
> impression that greater tree depth is worth striving for is actually
> correct, or we should all give up now and simply accept that the
> current flat tree is the best we can do, and, indeed is the model that
> works best for Linus.  I get the impression this may be the case, but I
> think making sure by having an actual discussion among the interested
> parties who will be at the kernel summit, would be useful.

On media, we came from a "depth 1" model, moving toward a "depth 2" level: 

patch author -> media/driver maintainer -> subsystem maintainer -> Linus

In other words, I'm trying hard to apply patches directly. Still,
due to the huge number of patches we receive on media [1], I tend to
apply patches directly too (specially trivial ones), in order to avoid
having a patch waiting for a long time to be applied.

This model seems to be working fine for us, as it gives at least two
levels of review to each patch.

[1] Over the last 2 years, we're receiving about 400 to 1000 patches/month:
    https://linuxtv.org/patchwork_stats.php

> > So, maybe some work on fixing up subsystems that have problems
> > aggregating things?  Seems like some areas of the kernel do this just
> > fine, perhaps some workflow for the developers involved needs to be
> > adjusted?  
> 
> As I said, I'm not really that interested in upbraiding the problem
> cases, I'm more interested in discussing the generalities, and what we
> as maintainers should be encouraging.
> 
> James
> 
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss



Thanks,
Mauro
