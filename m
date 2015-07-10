Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 29502BCC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 20:11:42 +0000 (UTC)
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A6E32F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 20:11:41 +0000 (UTC)
Received: by pacgz10 with SMTP id gz10so99893411pac.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 13:11:41 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Fri, 10 Jul 2015 13:11:38 -0700
From: Guenter <linux@roeck-us.net>
To: Tim Bird <tim.bird@sonymobile.com>
Message-ID: <20150710201138.GB9469@groeck-UX31A>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk>
	<20150710020706.GH111846@vmdeb7>
	<20150710155144.34dde697@gandalf.local.home>
	<55A02504.6040003@sonymobile.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55A02504.6040003@sonymobile.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Fri, Jul 10, 2015 at 01:03:16PM -0700, Tim Bird wrote:
> On 07/10/2015 12:51 PM, Steven Rostedt wrote:
> > On Thu, 9 Jul 2015 19:07:06 -0700
> > Darren Hart <dvhart@infradead.org> wrote:
> > 
> >  
> >> As far as recruitment goes, I think we're talking about barriers to first-timers
> >> and such - and git-send-email is one of those things. Eventually, a developer
> > 
> > +1000
> > 
> > I still don't use git-send-email, as I afraid that I'll blow it and end
> > up sending a thousand patches to every developer that ever touched the
> > kernel ;-)
> 
> I'm in exactly the same boat.  I don't submit patches frequently enough
> that I trust a git-send-email workflow.  It's too automated for me.
> I'd rather take the extra time to manually format my patch e-mails and my
> CC: lists, than be embarrassed.  Of course then I make manual mistakes
> and end up getting embarrassed sometimes anyway, but I can usually
> avoid a patch embarrassment armageddon.
> 
I use git send-email, but I don't use it blindly. If I use it directly,
I give it a trial first with --dry-run. For patch series I use a directory
to collect the patches and then use a script to actually send them.
Sometimes I also use --cc-cmd with a script I have written to automatically
add Cc's, but never without dry-run.

Guenter
