Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 59B35FD3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 15:43:16 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BF7D5E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 15:43:15 +0000 (UTC)
Date: Fri, 14 Jun 2019 12:43:05 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20190614124305.65eb8dbd@coco.lan>
In-Reply-To: <1560525785.27102.16.camel@HansenPartnership.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838275.3144.6.camel@HansenPartnership.com>
	<20190613105916.66d03adf@coco.lan>
	<20190614101222.GA4797@pendragon.ideasonboard.com>
	<20190614102424.3fc40f04@coco.lan>
	<20190614135807.GA6573@kroah.com>
	<20190614121137.02b8a6dc@coco.lan>
	<1560525785.27102.16.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: media-submaintainers@linuxtv.org, ksummit-discuss@lists.linuxfoundation.org
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

Em Fri, 14 Jun 2019 08:23:05 -0700
James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:

> On Fri, 2019-06-14 at 12:11 -0300, Mauro Carvalho Chehab wrote:
> [...]
> > If you think this is relevant to a broader audience, let me reply
> > with a long answer about that. I prepared it and intended to reply to
> > our internal media maintainer's ML (added as c/c). 
> > 
> > Yet, I still think that this is media maintainer's dirty laundry
> > and should be discussed elsewhere ;-)
> > 
> > ---  
> 
> So trying not to get into huge email thread, I think this is the key
> point:
> 
> [...]
> > Currently, I review all accepted patches.  
> 
> This means you effectively have a fully flat tree.

Yes.

> Even if you use
> git, you're using it like an email transmission path.  One of the
> points I was making about deepening the tree is that the maintainer in
> the middle should trust the submaintainer they pull from, so there
> should be no need to review all the patches because of that trust. 

It is not a matter of trust. It is just that the media subsystem is
a complex puzzle. Just the V4L2 API has more than 80 ioctls.

So, the goal here is to do my best to ensure that patches will get
at least two reviews.

> This is how deepening the tree helps to offload maintainers because
> review is one of the biggest burdens we have and deepening the tree is
> a way to share it.  Without trust, we achieve no offloading and
> therefore no utility from deepening the tree.

Yeah, I know one day this won't scale. The day it happens, I'll
just start picking pull requests. As we already use git, a change 
like that would be trivial.

> So, to get back to the original question, which was *should* we deepen
> the tree: why don't you feel you can let branches with patches you
> haven't reviewed into your tree?  I've characterised it as a trust
> issue above, but perhaps it isn't. I think this is a key question which
> would help us understand whether a deeper tree model is at all
> possible.

One of the aspects is that developers nowadays are specialists on a
subset of the media devices. Most of them are working on complex 
camera support, with envolves a subset of the APIs we have. They
never worked on a driver that would use other parts of the API, like
DVB, Remote Controllers, TV, V4L2 streaming devices, etc.

So, having someone with a more generalist view at the end of the
review process helps to identify potential problems that might
affect other devices, specially when there are API changes involved[1].

[1] Since when I started maintaining the subsystem, back on 2005,
on almost every single Kernel review there are API changes in
order to support new types of hardware.

Thanks,
Mauro
