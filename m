Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2E154AE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 23:01:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A7EF1112
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 23:01:24 +0000 (UTC)
Date: Fri, 10 Jul 2015 16:01:19 -0700
From: Darren Hart <dvhart@infradead.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20150710230119.GQ111846@vmdeb7>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk>
	<20150710020706.GH111846@vmdeb7>
	<20150710155144.34dde697@gandalf.local.home>
	<1436558412.24408.35.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1436558412.24408.35.camel@infradead.org>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
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

On Fri, Jul 10, 2015 at 09:00:12PM +0100, David Woodhouse wrote:
> On Fri, 2015-07-10 at 15:51 -0400, Steven Rostedt wrote:
> > On Thu, 9 Jul 2015 19:07:06 -0700
> > Darren Hart <dvhart@infradead.org> wrote:
> > 
> >  
> > > As far as recruitment goes, I think we're talking about barriers to first-timers
> > > and such - and git-send-email is one of those things. Eventually, a developer
> > 
> > +1000
> > 
> > I still don't use git-send-email, as I afraid that I'll blow it and end
> > up sending a thousand patches to every developer that ever touched the
> > kernel ;-)
> 
> Rather than sending messages, it's actually better to put them as
> *drafts*, ready to be sent by the user's normal mailer. It's not hard
> to do this — I usually dump the mails into
> ~/.local/share/evolution/mail/local/.Drafts/new/ for example.
> 
> And then I can *read* them before sending them, which is good practice
> anyway. Am I the only person who often finds a final minor nit with
> their own patch, in that final read-through just before hitting 'send'
> on an email?

I thought it was just me :)

I use git format-patch for this same purpose.

> 
> Perhaps we should provide tools which make it trivial to do the same
> for various different mail clients, without users having to know where,
> and in what form, their drafts folders are?
> 

An update to the documentation on mail clients would be welcome - although it's
looking pretty bleak out there for usable mail clients these days.

The fact that we're having this discussion among the folks that ostensibly know
what we're doing is very telling, in my opinion, of just how daunting a task
this can be for a new-comer.

-- 
Darren Hart
Intel Open Source Technology Center
