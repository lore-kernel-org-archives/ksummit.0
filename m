Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1EF04BCD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 19:51:48 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0176.hostedemail.com
	[216.40.44.176])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id A808F1DCA5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 19:51:47 +0000 (UTC)
Date: Fri, 10 Jul 2015 15:51:44 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Darren Hart <dvhart@infradead.org>
Message-ID: <20150710155144.34dde697@gandalf.local.home>
In-Reply-To: <20150710020706.GH111846@vmdeb7>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk>
	<20150710020706.GH111846@vmdeb7>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 9 Jul 2015 19:07:06 -0700
Darren Hart <dvhart@infradead.org> wrote:

 
> As far as recruitment goes, I think we're talking about barriers to first-timers
> and such - and git-send-email is one of those things. Eventually, a developer

+1000

I still don't use git-send-email, as I afraid that I'll blow it and end
up sending a thousand patches to every developer that ever touched the
kernel ;-)

I still use quilt to send my patch series. Just because I know how it
works and I trust it. And I get to see exactly what it is about to send
(the only thing it can send is what's in the patches/ directory,
nothing else).

I have a script that takes my git tree and creates the patches in a
format that quilt will send them nicely.

-- Steve


> spends enough time to make setting that all up worthwhile, but honestly, there
> are A LOT of ways to embarass yourself with git-send-email. So much so that I've
> written wrappers to it to protect people from it for the yocto project - and
> even myself for my kernel work.
> 
