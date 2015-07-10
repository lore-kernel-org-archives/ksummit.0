Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 36663AB2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 23:09:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BECA0AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 23:09:26 +0000 (UTC)
Date: Fri, 10 Jul 2015 16:09:21 -0700
From: Darren Hart <dvhart@infradead.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20150710230921.GR111846@vmdeb7>
References: <20150708114011.3a1f1861@noble> <2879113.fraeuJIr2M@avalon>
	<20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk>
	<20150710020706.GH111846@vmdeb7>
	<20150710155144.34dde697@gandalf.local.home>
	<1436558412.24408.35.camel@infradead.org>
	<20150710163141.490def2a@gandalf.local.home>
	<1436560838.24408.52.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1436560838.24408.52.camel@infradead.org>
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

On Fri, Jul 10, 2015 at 09:40:38PM +0100, David Woodhouse wrote:
> On Fri, 2015-07-10 at 16:31 -0400, Steven Rostedt wrote:
> > 
> > > And then I can *read* them before sending them, which is good practice
> > > anyway. Am I the only person who often finds a final minor nit with
> > > their own patch, in that final read-through just before hitting 'send'
> > > on an email?
> > 
> > This is exactly what I do before sending. But I just do:
> > 
> >  vim patches/*.patch
> 
> That works too. Perhaps that would be the easier option for people who
> aren't sure of their normal mailer.
> 
> It's mostly the *client* that screws formatting up, rather than the
> transport. So maybe the best thing to advise new people to do is put
> the messages into files, vet them as you describe above (except using
> emacs instead of vim, of course), and then provide a simple tool which
> will *send* the messages from those files, via whatever transport the
> user needs.
> 
> I think we can cope with the SMTP case already but I'm not sure if we
> can do it from pre-vetted files, or only directly from git-send-email?
> It's not hard to add support for also sending via ActiveSync and EWS,
> for the Exchange-afflicted.
> 
> Can one still send "from" GMail via SMTP these days? How does the 2
> -factor authentication work? Do we cope with that?

This simple tool should not run on the client IMO. Or should be *required* to
run on the client. The kernel.org patch submission web form would be usable by
anyone with a browser ... OK, go ahead... "anyone with a browser" is too low a
bar for a kernel developer.... :-)

But seriously, we're talking about recruitment, and this is the kind of tooling
I routinely here non-Linux developers shake their heads at when considering our
development process. So while you and I are fine using vi (*jab*) and mutt
(*evolution) and arcane bash (*posix shell*) scripts and local MTAs... others
would very much like to focus on the code they are changing, and let the
computers handle schlepping the changesets around. Especially when they only
have a couple of patches to send, the setup is significant barrier.

-- 
Darren Hart
Intel Open Source Technology Center
