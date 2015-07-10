Return-Path: <BATV+3f500ee181daa7706361+4338+infradead.org+dwmw2@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E21C9AE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 20:00:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 94D9C12D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 20:00:16 +0000 (UTC)
Message-ID: <1436558412.24408.35.camel@infradead.org>
From: David Woodhouse <dwmw2@infradead.org>
To: Steven Rostedt <rostedt@goodmis.org>, Darren Hart <dvhart@infradead.org>
Date: Fri, 10 Jul 2015 21:00:12 +0100
In-Reply-To: <20150710155144.34dde697@gandalf.local.home>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk> <20150710020706.GH111846@vmdeb7>
	<20150710155144.34dde697@gandalf.local.home>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On Fri, 2015-07-10 at 15:51 -0400, Steven Rostedt wrote:
> On Thu, 9 Jul 2015 19:07:06 -0700
> Darren Hart <dvhart@infradead.org> wrote:
> 
>  
> > As far as recruitment goes, I think we're talking about barriers to first-timers
> > and such - and git-send-email is one of those things. Eventually, a developer
> 
> +1000
> 
> I still don't use git-send-email, as I afraid that I'll blow it and end
> up sending a thousand patches to every developer that ever touched the
> kernel ;-)

Rather than sending messages, it's actually better to put them as
*drafts*, ready to be sent by the user's normal mailer. It's not hard
to do this — I usually dump the mails into
~/.local/share/evolution/mail/local/.Drafts/new/ for example.

And then I can *read* them before sending them, which is good practice
anyway. Am I the only person who often finds a final minor nit with
their own patch, in that final read-through just before hitting 'send'
on an email?

Perhaps we should provide tools which make it trivial to do the same
for various different mail clients, without users having to know where,
and in what form, their drafts folders are?

-- 
dwmw2
