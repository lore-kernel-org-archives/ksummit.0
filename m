Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2D68B8B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 15:57:38 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 87D4A176
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 15:57:37 +0000 (UTC)
Date: Thu, 16 Jul 2015 08:57:32 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20150716155732.GB2304@jtriplet-mobl1>
References: <20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150716094125.16cdda73@lwn.net>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
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

On Thu, Jul 16, 2015 at 09:41:25AM -0600, Jonathan Corbet wrote:
> On Thu, 16 Jul 2015 08:04:30 -0700
> Tim Bird <tim.bird@sonymobile.com> wrote:
> 
> > On 07/16/2015 06:47 AM, Steven Rostedt wrote:
> > > One of the issues with newcomers coming to development of the Linux
> > > kernel, is that every maintainer is different. We should be trying
> > > harder to let people know what we prefer. Every maintainer expects
> > > something different, but it's up to the maintainer to explicitly let
> > > others know what they want. You can't expect everyone to read your mind.  
> > 
> > I agree with this completely.  When you switch systems (which I've done
> > something like 5 times in the last 2 years), you are essentially a newbie
> > in that new system.
> > 
> > How about putting some notes in the MAINTAINER file for things like
> > this, that some get_maintainer.pl option could show? 
> > We could use a I: prefix, for "Instructions:"  (only because 'N:'
> > is already used.)
> 
> So somebody has to play the devil's advocate and ask this question...
> Are we really better off documenting the fact that what looks like a
> single project is actually a collection of a hundred or so idiosyncratic
> fiefdoms with their own contact protocols, coding styles, beer
> preferences, and more? Or perhaps we might think about gravitating toward
> a more uniform set of conventions?  Preferably the ones I use? :)

Agreed completely.  We already maintain a uniform set of coding style
conventions (with only one notable exception in net/) and one uniform
set of patch guidelines ("the perfect patch", as implemented by git
format-patch).  It's not unreasonable to maintain a uniform set of
maintenance procedures as well.

- Josh Triplett
