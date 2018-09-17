Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D4FAECA0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 22:48:21 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0165.hostedemail.com
	[216.40.44.165])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E89807F6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 22:48:19 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 48A441803D0D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 16:50:40 +0000 (UTC)
Message-ID: <d72dd6cfd74cae177b645d7f709c4635f3c359b9.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Christoph Hellwig
	<hch@infradead.org>
Date: Mon, 17 Sep 2018 09:50:33 -0700
In-Reply-To: <20180917105805.0ccf0064@coco.lan>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon> <20180910211128.GH16557@thunk.org>
	<1939259.kNhvOyGpTJ@avalon> <20180917084335.007012ec@coco.lan>
	<CAMuHMdVj28tZKep+DPA4W3vz28hPRZTWAb7BtuQBBTSWT3Brnw@mail.gmail.com>
	<20180917100413.22eac00d@coco.lan>
	<alpine.DEB.2.20.1809171508120.3417@hadrien>
	<20180917132908.GA15424@infradead.org>
	<20180917105805.0ccf0064@coco.lan>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
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

On Mon, 2018-09-17 at 10:58 -0300, Mauro Carvalho Chehab wrote:
> Em Mon, 17 Sep 2018 06:29:08 -0700
> Christoph Hellwig <hch@infradead.org> escreveu:
> 
> > On Mon, Sep 17, 2018 at 03:10:50PM +0200, Julia Lawall wrote:
> > > > Btw, on a quick look, it seems that github has/had an email
> > > > interface already:
> > > > 	https://blog.github.com/2011-03-10-reply-to-comments-from-email/  
> > > 
> > > I only interact with issues posted to github via email (alpine
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

moderation doesn't mean rejection by non-subscribers and
it's nowhere near that number.

$ git grep -i moderated MAINTAINERS | sort | uniq -c | wc -l
32

Most all of those have public archives too.
