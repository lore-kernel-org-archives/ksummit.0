Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C434A1105
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 14:08:49 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 50E66E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 14:08:49 +0000 (UTC)
Date: Fri, 14 Jun 2019 17:08:31 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20190614140831.GC4797@pendragon.ideasonboard.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838275.3144.6.camel@HansenPartnership.com>
	<20190613105916.66d03adf@coco.lan>
	<20190614101222.GA4797@pendragon.ideasonboard.com>
	<20190614102424.3fc40f04@coco.lan>
	<20190614133132.GB4797@pendragon.ideasonboard.com>
	<20190614105413.480251cb@coco.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190614105413.480251cb@coco.lan>
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

On Fri, Jun 14, 2019 at 10:54:13AM -0300, Mauro Carvalho Chehab wrote:
> Em Fri, 14 Jun 2019 16:31:32 +0300 Laurent Pinchart escreveu:
> 
> >> There are other forums for discussing internal media maintainership,
> >> like the weekly meetings we have and our own mailing lists.  
> > 
> > Is this really an internal matter ?
> 
> Yes.
> 
> Right now, each subsystem have their own criteria and procedures for
> handling patches in a way that it fits better for the subsystem's need.
> 
> Also, discussing internal subsystem-specific aspects on a forum where
> the affected developers don't participate is not nice.

I realise that my first reply was badly worded and could be interpreted
as an internal matter. While I have my preferences between the multiple
available solutions, what I'm after here is discussing how to best
handle increased pull network depths in general (assuming we conclude,
in a reply to James' initial question, that increased depth are
desired). In particular, as Linus will ultimately pull subsystems in his
tree, we need to ensure best practice rules that won't affect this
aspect of his work negatively.

Another point beside pull vs. cherry picking is whether all pull
requests should use signed tags, or if that requirements only apply to
the top level.

-- 
Regards,

Laurent Pinchart
