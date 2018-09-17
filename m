Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1182EDC9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 13:58:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A800C102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 13:58:09 +0000 (UTC)
Date: Mon, 17 Sep 2018 10:58:05 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <20180917105805.0ccf0064@coco.lan>
In-Reply-To: <20180917132908.GA15424@infradead.org>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon> <20180910211128.GH16557@thunk.org>
	<1939259.kNhvOyGpTJ@avalon> <20180917084335.007012ec@coco.lan>
	<CAMuHMdVj28tZKep+DPA4W3vz28hPRZTWAb7BtuQBBTSWT3Brnw@mail.gmail.com>
	<20180917100413.22eac00d@coco.lan>
	<alpine.DEB.2.20.1809171508120.3417@hadrien>
	<20180917132908.GA15424@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
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

Em Mon, 17 Sep 2018 06:29:08 -0700
Christoph Hellwig <hch@infradead.org> escreveu:

> On Mon, Sep 17, 2018 at 03:10:50PM +0200, Julia Lawall wrote:
> > > Btw, on a quick look, it seems that github has/had an email
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

Well, the same happens with moderated mailing lists. There are a
lot of them:
	$ git grep moderated MAINTAINERS|wc -l
	221

Except when it is something that I really want to be merged
(e. g. something that affects my own machines or I have a demand
from my employer), when a perfectly fine patch I sent is ignored 
by such lists, I just ignore whatever e-mail I receive from their
mailman interface, and I assume that, if I don't receive any reply
from a human, either the maintainers of such subsystem(s) accepted
it or they just don't care enough. So, if it is patch affecting
media, I just apply after a reasonable reviewing time.

In the case of github-like interfaces, I would do the same: I
would copy the maintainer(s) and just ignore any "non-subscriber's 
warning" kind of e-mail.

That's actually one difference in this case: while on moderated
ML you need to be added to each individual ML in order to send
e-mails, on a web-based interface, just one subscription is
enough for all projects hosted there, and there are a lot less
git hosting servers than email mailing lists. So, in the specific
case of github, I wouldn't have any issues, as I had to create
an account there due to other purposes. Yet, I don't have any
need right now to have an account on gitlab or Pagure. I very
likely wouldn't create an account there just to forward patches
to a random kernel subsystem/driver eventually hosted there.

Thanks,
Mauro
