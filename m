Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C8E1BEEA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 15:21:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C95667F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 15:21:15 +0000 (UTC)
Date: Mon, 17 Sep 2018 12:21:10 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20180917122110.2e85fc36@coco.lan>
In-Reply-To: <CAMuHMdWQi5NzzS4GA5Am3sKyWdh2p7on6yo9FcJC6HWwdVAW=A@mail.gmail.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon> <20180910211128.GH16557@thunk.org>
	<1939259.kNhvOyGpTJ@avalon> <20180917084335.007012ec@coco.lan>
	<CAMuHMdVj28tZKep+DPA4W3vz28hPRZTWAb7BtuQBBTSWT3Brnw@mail.gmail.com>
	<20180917100413.22eac00d@coco.lan>
	<alpine.DEB.2.20.1809171508120.3417@hadrien>
	<20180917132908.GA15424@infradead.org>
	<20180917105805.0ccf0064@coco.lan>
	<20180917141801.GA8759@infradead.org>
	<CAMuHMdWQi5NzzS4GA5Am3sKyWdh2p7on6yo9FcJC6HWwdVAW=A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

Em Mon, 17 Sep 2018 16:50:23 +0200
Geert Uytterhoeven <geert@linux-m68k.org> escreveu:

> Hi Christoph,
> 
> On Mon, Sep 17, 2018 at 4:18 PM Christoph Hellwig <hch@infradead.org> wrote:
> > On Mon, Sep 17, 2018 at 10:58:05AM -0300, Mauro Carvalho Chehab wrote:  
> > > > > specifically).  The only problem is that people tend to omit context,
> > > > > because they assume that you see the code or previous messages that they
> > > > > see in the web interface, which you do not.  
> > > >
> > > > The major problem with github is that as far as I can tell there is no
> > > > way to interact with it without creating an account.  
> > >
> > > Well, the same happens with moderated mailing lists. There are a
> > > lot of them:
> > >       $ git grep moderated MAINTAINERS|wc -l
> > >       221  
> >
> > Note that moderated doesn't mean that it always rejects non-subscribers.
> > For example I post to linux-arm-kernel frequently, and my mails always
> > seem to make it through with a delay.  

Yeah, same happens to me. I stopped receiving emails from several such
lists. Not sure if I ended by subscribing to it (in order to actively
participate on some discussions) or if my email was simply whitelisted.

> linux-arm-kernel is a gateway to many maintainers, most of them will take
> your patches fine.
> 
> But if it is for core ARM, it still has to be submitted to the ARM patch system
> separately.

Provided that get_maintainers.pl gets it, and someone will manually
whitelist either my e-mail or my patch on an eventual patch
submission, no issues with that.

Thanks,
Mauro
