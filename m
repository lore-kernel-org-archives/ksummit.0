Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B22AA1141
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 10:22:28 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DB9E5E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 10:22:27 +0000 (UTC)
Date: Fri, 14 Jun 2019 13:12:22 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20190614101222.GA4797@pendragon.ideasonboard.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838275.3144.6.camel@HansenPartnership.com>
	<20190613105916.66d03adf@coco.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190613105916.66d03adf@coco.lan>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

Hi Mauro,

On Thu, Jun 13, 2019 at 10:59:16AM -0300, Mauro Carvalho Chehab wrote:
> Em Thu, 06 Jun 2019 19:24:35 +0300 James Bottomley escreveu:
> 
> > [splitting issues to shorten replies]
> > On Thu, 2019-06-06 at 17:58 +0200, Greg KH wrote:
> >> On Thu, Jun 06, 2019 at 06:48:36PM +0300, James Bottomley wrote:  
> >>> This is probably best done as two separate topics
> >>> 
> >>> 1) Pull network: The pull depth is effectively how many pulls your
> >>> tree does before it goes to Linus, so pull depth 0 is sent straight
> >>> to Linus, pull depth 1 is sent to a maintainer who sends to Linus
> >>> and so on.  We've previously spent time discussing how increasing
> >>> the pull depth of the network would reduce the amount of time Linus
> >>> spends handling pull requests.  However, in the areas I play, like
> >>> security, we seem to be moving in the opposite direction
> >>> (encouraging people to go from pull depth 1 to pull depth 0).  If
> >>> we're deciding to move to a flat tree model, where everything is
> >>> depth 0, that's fine, I just think we could do with making a formal
> >>> decision on it so we don't waste energy encouraging greater tree
> >>> depth.  
> >> 
> >> That depth "change" was due to the perceived problems that having a
> >> deeper pull depth was causing.  To sort that out, Linus asked for
> >> things to go directly to him.  
> > 
> > This seems to go beyond problems with one tree and is becoming a trend.
> > 
> >> It seems like the real issue is the problem with that subsystem
> >> collection point, and the fact that the depth changed is a sign that
> >> our model works well (i.e. everyone can be routed around.)  
> > 
> > I'm not really interested in calling out "problem" maintainers, or
> > indeed having another "my patch collection method is better than yours"
> > type discussion.  What I was fishing for is whether the general
> > impression that greater tree depth is worth striving for is actually
> > correct, or we should all give up now and simply accept that the
> > current flat tree is the best we can do, and, indeed is the model that
> > works best for Linus.  I get the impression this may be the case, but I
> > think making sure by having an actual discussion among the interested
> > parties who will be at the kernel summit, would be useful.
> 
> On media, we came from a "depth 1" model, moving toward a "depth 2" level: 
> 
> patch author -> media/driver maintainer -> subsystem maintainer -> Linus

I'd like to use this opportunity to ask again for pull requests to be
pulled instead of cherry-picked.

> In other words, I'm trying hard to apply patches directly. Still,
> due to the huge number of patches we receive on media [1], I tend to
> apply patches directly too (specially trivial ones), in order to avoid
> having a patch waiting for a long time to be applied.
> 
> This model seems to be working fine for us, as it gives at least two
> levels of review to each patch.
> 
> [1] Over the last 2 years, we're receiving about 400 to 1000 patches/month:
>     https://linuxtv.org/patchwork_stats.php
> 
> >> So, maybe some work on fixing up subsystems that have problems
> >> aggregating things?  Seems like some areas of the kernel do this just
> >> fine, perhaps some workflow for the developers involved needs to be
> >> adjusted?  
> > 
> > As I said, I'm not really that interested in upbraiding the problem
> > cases, I'm more interested in discussing the generalities, and what we
> > as maintainers should be encouraging.

-- 
Regards,

Laurent Pinchart
