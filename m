Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 258BD13C5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 15:23:09 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A137C174
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 15:23:08 +0000 (UTC)
Message-ID: <1560525785.27102.16.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Greg KH
	<greg@kroah.com>
Date: Fri, 14 Jun 2019 08:23:05 -0700
In-Reply-To: <20190614121137.02b8a6dc@coco.lan>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838275.3144.6.camel@HansenPartnership.com>
	<20190613105916.66d03adf@coco.lan>
	<20190614101222.GA4797@pendragon.ideasonboard.com>
	<20190614102424.3fc40f04@coco.lan> <20190614135807.GA6573@kroah.com>
	<20190614121137.02b8a6dc@coco.lan>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
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

On Fri, 2019-06-14 at 12:11 -0300, Mauro Carvalho Chehab wrote:
[...]
> If you think this is relevant to a broader audience, let me reply
> with a long answer about that. I prepared it and intended to reply to
> our internal media maintainer's ML (added as c/c). 
> 
> Yet, I still think that this is media maintainer's dirty laundry
> and should be discussed elsewhere ;-)
> 
> ---

So trying not to get into huge email thread, I think this is the key
point:

[...]
> Currently, I review all accepted patches.

This means you effectively have a fully flat tree.  Even if you use
git, you're using it like an email transmission path.  One of the
points I was making about deepening the tree is that the maintainer in
the middle should trust the submaintainer they pull from, so there
should be no need to review all the patches because of that trust. 
This is how deepening the tree helps to offload maintainers because
review is one of the biggest burdens we have and deepening the tree is
a way to share it.  Without trust, we achieve no offloading and
therefore no utility from deepening the tree.

So, to get back to the original question, which was *should* we deepen
the tree: why don't you feel you can let branches with patches you
haven't reviewed into your tree?  I've characterised it as a trust
issue above, but perhaps it isn't. I think this is a key question which
would help us understand whether a deeper tree model is at all
possible.

James
