Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 371DED1C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 13:48:18 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9907CF8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 13:48:17 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 17 Sep 2018 16:48:30 +0300
Message-ID: <16895797.V5yegQzuKR@avalon>
In-Reply-To: <20180917132908.GA15424@infradead.org>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<alpine.DEB.2.20.1809171508120.3417@hadrien>
	<20180917132908.GA15424@infradead.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Christoph Hellwig <hch@infradead.org>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
	management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Monday, 17 September 2018 16:29:08 EEST Christoph Hellwig wrote:
> On Mon, Sep 17, 2018 at 03:10:50PM +0200, Julia Lawall wrote:
> > > Btw, on a quick look, it seems that github has/had an email
> > > 
> > > interface already:
> > > 	https://blog.github.com/2011-03-10-reply-to-comments-from-email/
> > 
> > I only interact with issues posted to github via email (alpine
> > specifically).  The only problem is that people tend to omit context,
> > because they assume that you see the code or previous messages that they
> > see in the web interface, which you do not.
> 
> The major problem with github is that as far as I can tell there is no
> way to interact with it without creating an account.

That's what bothers me as well. I'm not opposed to a subsystem replacing git 
request-pull + email with git-push, provided that an e-mail gateway forwards 
the pull request to the appropriate mailing lists. I'm also no opposed to a 
subsystem offering git-push as an optional alternative to git-send-email to 
submit patches, provided the above e-mail gateway. What I don't want is having 
to create accounts and authenticate the git-push, as that would make drive-by 
contributions more difficult. For the replacement of pull requests I could 
live with having to submit my ssh public key (but not individually to all 
subsystems), but for the alternative to patch submission by e-mail we would 
need to support unauthenticated git-push.

-- 
Regards,

Laurent Pinchart
