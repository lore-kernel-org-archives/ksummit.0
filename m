Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 28FCFD3E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 13:24:36 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DF964E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 13:24:34 +0000 (UTC)
Date: Fri, 14 Jun 2019 10:24:24 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20190614102424.3fc40f04@coco.lan>
In-Reply-To: <20190614101222.GA4797@pendragon.ideasonboard.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838275.3144.6.camel@HansenPartnership.com>
	<20190613105916.66d03adf@coco.lan>
	<20190614101222.GA4797@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

Em Fri, 14 Jun 2019 13:12:22 +0300
Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:

> Hi Mauro,
> 
> On Thu, Jun 13, 2019 at 10:59:16AM -0300, Mauro Carvalho Chehab wrote:
> > Em Thu, 06 Jun 2019 19:24:35 +0300 James Bottomley escreveu:
> >   
> > > [splitting issues to shorten replies]
> > > On Thu, 2019-06-06 at 17:58 +0200, Greg KH wrote:  
> > >> On Thu, Jun 06, 2019 at 06:48:36PM +0300, James Bottomley wrote:    
> > >>> This is probably best done as two separate topics
> > >>> 
> > >>> 1) Pull network: The pull depth is effectively how many pulls your
> > >>> tree does before it goes to Linus, so pull depth 0 is sent straight
> > >>> to Linus, pull depth 1 is sent to a maintainer who sends to Linus
> > >>> and so on.  We've previously spent time discussing how increasing
> > >>> the pull depth of the network would reduce the amount of time Linus
> > >>> spends handling pull requests.  However, in the areas I play, like
> > >>> security, we seem to be moving in the opposite direction
> > >>> (encouraging people to go from pull depth 1 to pull depth 0).  If
> > >>> we're deciding to move to a flat tree model, where everything is
> > >>> depth 0, that's fine, I just think we could do with making a formal
> > >>> decision on it so we don't waste energy encouraging greater tree
> > >>> depth.    
> > >> 
> > >> That depth "change" was due to the perceived problems that having a
> > >> deeper pull depth was causing.  To sort that out, Linus asked for
> > >> things to go directly to him.    
> > > 
> > > This seems to go beyond problems with one tree and is becoming a trend.
> > >   
> > >> It seems like the real issue is the problem with that subsystem
> > >> collection point, and the fact that the depth changed is a sign that
> > >> our model works well (i.e. everyone can be routed around.)    
> > > 
> > > I'm not really interested in calling out "problem" maintainers, or
> > > indeed having another "my patch collection method is better than yours"
> > > type discussion.  What I was fishing for is whether the general
> > > impression that greater tree depth is worth striving for is actually
> > > correct, or we should all give up now and simply accept that the
> > > current flat tree is the best we can do, and, indeed is the model that
> > > works best for Linus.  I get the impression this may be the case, but I
> > > think making sure by having an actual discussion among the interested
> > > parties who will be at the kernel summit, would be useful.  
> > 
> > On media, we came from a "depth 1" model, moving toward a "depth 2" level: 
> > 
> > patch author -> media/driver maintainer -> subsystem maintainer -> Linus  
> 
> I'd like to use this opportunity to ask again for pull requests to be
> pulled instead of cherry-picked.

There are other forums for discussing internal media maintainership,
like the weekly meetings we have and our own mailing lists.

Thanks,
Mauro
