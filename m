Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CBDD1B13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 20:03:21 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[37.139.156.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 70E45F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 20:03:20 +0000 (UTC)
Message-ID: <55A02504.6040003@sonymobile.com>
Date: Fri, 10 Jul 2015 13:03:16 -0700
From: Tim Bird <tim.bird@sonymobile.com>
MIME-Version: 1.0
To: <ksummit-discuss@lists.linuxfoundation.org>
References: <201507080121.41463.PeterHuewe@gmx.de>	<559C73DF.2030008@roeck-us.net>
	<20150708114011.3a1f1861@noble>	<2879113.fraeuJIr2M@avalon>
	<20150709193718.GD9169@vmdeb7>	<1436481109.3324.219.camel@infradead.org>	<20150710003559.GT11162@sirena.org.uk>	<20150710020706.GH111846@vmdeb7>
	<20150710155144.34dde697@gandalf.local.home>
In-Reply-To: <20150710155144.34dde697@gandalf.local.home>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit
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

On 07/10/2015 12:51 PM, Steven Rostedt wrote:
> On Thu, 9 Jul 2015 19:07:06 -0700
> Darren Hart <dvhart@infradead.org> wrote:
> 
>  
>> As far as recruitment goes, I think we're talking about barriers to first-timers
>> and such - and git-send-email is one of those things. Eventually, a developer
> 
> +1000
> 
> I still don't use git-send-email, as I afraid that I'll blow it and end
> up sending a thousand patches to every developer that ever touched the
> kernel ;-)

I'm in exactly the same boat.  I don't submit patches frequently enough
that I trust a git-send-email workflow.  It's too automated for me.
I'd rather take the extra time to manually format my patch e-mails and my
CC: lists, than be embarrassed.  Of course then I make manual mistakes
and end up getting embarrassed sometimes anyway, but I can usually
avoid a patch embarrassment armageddon.

But my manual steps and self-verification are a lot of work each time, so
some automation would be very much appreciated.
 
> I still use quilt to send my patch series. Just because I know how it
> works and I trust it. And I get to see exactly what it is about to send
> (the only thing it can send is what's in the patches/ directory,
> nothing else).
> 
> I have a script that takes my git tree and creates the patches in a
> format that quilt will send them nicely.

Maybe it would be good for a patch submission tool be able to single-step
through the submission preparation, both so that developers can learn
from it and not just use it as a crutch, and also to allow
developers to intervene if it's about to do something stupid.
 -- Tim
