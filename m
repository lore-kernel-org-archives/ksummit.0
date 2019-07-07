Return-Path: <frowand.list@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 05BCD1F5B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Jul 2019 21:56:14 +0000 (UTC)
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 866D47D2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Jul 2019 21:56:13 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id i18so6619532pgl.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 07 Jul 2019 14:56:13 -0700 (PDT)
To: Theodore Ts'o <tytso@mit.edu>, Linus Walleij <linus.walleij@linaro.org>
References: <37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<20190703085620.GA5007@pendragon.ideasonboard.com>
	<20190703135012.GC2041@mit.edu>
	<CACRpkdbqxwwKxjELS8WXtFHbq3L5b49XoEJjCdUOgRTNLTR_NQ@mail.gmail.com>
	<20190706044238.GE11665@mit.edu>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <c621c13f-fcb8-4ee0-eeeb-9e061888db17@gmail.com>
Date: Sun, 7 Jul 2019 14:56:02 -0700
MIME-Version: 1.0
In-Reply-To: <20190706044238.GE11665@mit.edu>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 7/5/19 9:42 PM, Theodore Ts'o wrote:
> On Fri, Jul 05, 2019 at 11:26:22AM +0200, Linus Walleij wrote:
>> I would have to dig them all out of lore one by one to get
>> the picture (and I guess I will). The story of CMA is a really
>> interesting one, and now it is part of the MM core.
>> Documentation/cma is pretty empty.
>>
>> Asking Michal, Marek and Joonsoo who all worked hard on
>> this to summarize the development and make the design
>> and evolution of this feature understandable would be a
>> pretty big development task in itself so I'm not gonna.
> 
> I assume you want something more detailed than this article on LWN?
> 
> 	https://lwn.net/Articles/486301/
> 
> I vaguely remember there was a presentation at Plumbers, but of course
> that was a long time ago, before we were regularly recording
> presentations at LPC.
> 
> It may be that best sort of thing will be conference presentations
> and/or refereed papers.  For example, there will be a 2019 Usenix ATC
> about EROFS.
> 
> 	https://www.usenix.org/conference/atc19/presentation/gao
> 
> Of course, asking developers to write refereed papers for submission
> to Usenix, FAST, etc., or even giving a presentation at Plumbers is
> also an awful lot to ask.  :-)

Then the next step is to have a way to find those papers.

Search engines are sometimes helpful.

For the Embedded Linux Conference (ELC) and Embedded Linux Conference
Europe (ELCE), there is an easy to scan table of presentations and
their slides and videos for each year of the conference.  It is a
two step search, the top level is a link to each year of the
conference:

   https://elinux.org/ELC_Presentations

then following the link from there gets you to the table of
presentations, for example ELCE 2018 is at:

   https://elinux.org/ELC_Europe_2018_Presentations

An example of a more organized list of conference presentations for
one subsystem is a reference to devicetree conference presentations
at:

   https://elinux.org/Device_Tree_presentations_papers_articles

Each presentation is listed twice, once by topic area(s) and once
by date.

-Frank

> 
> 					- Ted
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
