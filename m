Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 036759FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 16:24:41 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 57B2524A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 16:24:40 +0000 (UTC)
Message-ID: <1437063875.18768.59.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jonathan Corbet <corbet@lwn.net>
Date: Thu, 16 Jul 2015 19:24:35 +0300
In-Reply-To: <20150716094125.16cdda73@lwn.net>
References: <20150708114011.3a1f1861@noble> <2879113.fraeuJIr2M@avalon>
	<20150709193718.GD9169@vmdeb7> <20150710143641.GW4341@mwanda>
	<20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Thu, 2015-07-16 at 09:41 -0600, Jonathan Corbet wrote:
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
> 
> Seriously, this area is a minefield for new developers; it can be
> discouraging to put together your first patch, carefully follow
> everything found in SubmittingPatches, CodingStyle, SubmitChecklist, and
> HOWTO, appease the checkpatch.pl beast, carefully run get_maintainer.pl
> with the correct command-line options, and follow all the suggestions
> provided by reddit, Phoronix and 4chan, only to be told that the patch
> came in during the wrong phase of the moon and they really should have
> known better.

If I play Devil's advocate to the existing Devil's advocate, does that
make me one of the good guys ...?

Before we all beat ourselves up for being a complete cesspool of process
and timing obsessed freaks, perhaps people would like to reflect on
this:

http://www.alexconrad.org/2014/04/the-painful-process-of-submitting-your.html

Sometimes adding layers of carefully documented process and automated
abstractions actually ends up giving you precisely what you were trying
to avoid.

Seriously, what is the actual problem?  Who bites the heads off newbies
for sport?  I ask because the first patch submission is usually treated
with helpfulness and tolerance, at least where I've been on the cc list.
The wrong phase of the merge cycle can be a bugger, particularly when
most people's attention is elsewhere, but it's not like it's a huge
deterrent.  We all have developers who'd rather spit rats than submit a
patch to $opensourceprojecttheyfoundabugin but then, it's sometimes
because the reply might contradict their own mythology (or question
their reputation).  Before we embark on a huge does of hair shirt and a
lavish process dump, what is the problem we're trying to solve?

James
