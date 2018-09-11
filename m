Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0D792C7A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:29:01 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6439F716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:29:00 +0000 (UTC)
Date: Tue, 11 Sep 2018 20:28:56 +0200
From: Greg KH <greg@kroah.com>
To: Dave Hansen <dave@sr71.net>
Message-ID: <20180911182856.GC30656@kroah.com>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<20180906225531.GB2251@localhost.localdomain>
	<CAMuHMdVqhOq11fxOf7RUXEq+oT5A2gGKSVx=FadtiVz23AywHA@mail.gmail.com>
	<20180910232652.GC1764@localhost.localdomain>
	<20180911084536.GB23570@kroah.com>
	<d11c38ae-2ea7-7d26-befa-3973ae9e4353@sr71.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d11c38ae-2ea7-7d26-befa-3973ae9e4353@sr71.net>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 11, 2018 at 10:10:37AM -0700, Dave Hansen wrote:
> On 09/11/2018 01:45 AM, Greg KH wrote:
> > What do you feel we could have done "better" given the constraints
> > placed on us?
> 
> Hindsight is 20/20.  But, here are a few things I wish we would have had
> in place a year or two ago.  These are utterly _minor_ nits in the grand
> scheme of things.  Intel had the most room for improvement here, not the
> community.  But, here's what the community could have done better:
> 
> 1. Have a documented procedure for submitting issues that the submitter
>    perceives can not go to security@.  Folks are always going to think
>    they are a special snowflake.  This will get them talking to
>    *someone* at least.

We have Documentation/admin-guide/security-bugs.rst.  If you feel it is
lacking in some way that would help out here, please submit patches.

I know some people did submit patches for this after the Meltdown mess
happened to hopefully clear some things up.  Oh wait, it was you who did
that, why am I even saying this then? :)

Anyway, Willy posted a patch somewhere to also update it, but that patch
seems to have gotten dropped, we should poke him to resend it.

> 2. Document that stable updates require stable maintainers to be
>    involved.  If you want fixes in mainline, tell Linus.  If you want
>    stable fixes, tell the stable maintainers.  Also document the time
>    required to integrate a fix, even if it is a worst-case estimate.
>    (The distros who consume stable can help here, too)

Note, I don't always _have_ to be involved.  I usually don't want to be
involved.  But if you expect me to start taking random non-obvious
patches into a stable kernel, you had better get me involved, otherwise
you will start to get the "WTF" emails from me.  That's just common
sense, right?  If not, how/where do I have to document this?

Also, for some people like me, perhaps you might want to get us involved
because we happen to know a bit about security and bugfixing given we
have been doing it for many decades now (not just me, most of the
security@ people are included in that category, hence them being on that
team).  Why _wouldn't_ you want them helping to fix your problem?

> Why?  From what I've seen, the folks controlling the embargo respect
> *processes*.  A written-down document is a process that's hard to argue
> with and represents the weight of the community.  But if I tell them,
> it's just "one person's opinion".

Great, the security process page can always need help, like you
provided.  Hopefully that looks sufficient to you now?

> Giving timelines is also very important.  Folks spend a lot of time
> counting months and weeks back on the calendar from a disclosure date.
> The timeline gives them a discrete date to *do* something.

Giving timelines to whom?  Us getting a timeline or us giving a timeline
to others?  It's hard to "predict" how long some things will take to be
fixed (obviously, we once took 6 months to fix a nasty bug that some
people thought it was already resolved as they provided a proposed fix.)

thanks,

greg k-h
