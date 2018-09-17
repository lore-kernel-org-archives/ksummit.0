Return-Path: <BATV+6bb343d60c34e84c961e+5503+infradead.org+hch@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0CAD6E1A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 14:18:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B162B76C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 14:18:02 +0000 (UTC)
Date: Mon, 17 Sep 2018 07:18:01 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20180917141801.GA8759@infradead.org>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon> <20180910211128.GH16557@thunk.org>
	<1939259.kNhvOyGpTJ@avalon> <20180917084335.007012ec@coco.lan>
	<CAMuHMdVj28tZKep+DPA4W3vz28hPRZTWAb7BtuQBBTSWT3Brnw@mail.gmail.com>
	<20180917100413.22eac00d@coco.lan>
	<alpine.DEB.2.20.1809171508120.3417@hadrien>
	<20180917132908.GA15424@infradead.org>
	<20180917105805.0ccf0064@coco.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180917105805.0ccf0064@coco.lan>
Cc: Christoph Hellwig <hch@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Mon, Sep 17, 2018 at 10:58:05AM -0300, Mauro Carvalho Chehab wrote:
> > > specifically).  The only problem is that people tend to omit context,
> > > because they assume that you see the code or previous messages that they
> > > see in the web interface, which you do not.  
> > 
> > The major problem with github is that as far as I can tell there is no
> > way to interact with it without creating an account.
> 
> Well, the same happens with moderated mailing lists. There are a
> lot of them:
> 	$ git grep moderated MAINTAINERS|wc -l
> 	221

Note that moderated doesn't mean that it always rejects non-subscribers.
For example I post to linux-arm-kernel frequently, and my mails always
seem to make it through with a delay.  Other lists seems to reject
non-subcribers, but the personal email addresses of the maintainers
still allow to submit patches without any signup.
