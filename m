Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BDEDA40C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 18:59:40 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2C7682A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 18:59:40 +0000 (UTC)
Date: Fri, 17 Jul 2015 11:59:35 -0700
From: josh@joshtriplett.org
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150717185935.GA1499@cloud>
References: <20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
	<1437063875.18768.59.camel@HansenPartnership.com>
	<20150717101151.5d5bc86d@lwn.net> <20150717165925.GA1424@x>
	<20150717130604.04c25272@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150717130604.04c25272@gandalf.local.home>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
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

On Fri, Jul 17, 2015 at 01:06:04PM -0400, Steven Rostedt wrote:
> On Fri, 17 Jul 2015 09:59:26 -0700
> Josh Triplett <josh@joshtriplett.org> wrote:
> 
> 
> > That's the kind of thing that ought to be raised, politely, in response
> > to such a mail, pointing out that the kernel's coding style should be
> > universal to avoid making people deal with maintainer-specific
> > idiosyncrasies.  A few reminders of that from other kernel maintainers
> > couldn't hurt.
> 
> Well, sometimes its maintainers that are telling other maintainers what
> to do. It's not just newbies that get this treatment.
> 
> 
> > 
> > Such additional requirements don't seem onerous to the maintainer making
> > them, but add them up across all maintainers and you have a horrendous
> > mess.
> > 
> 
> Perhaps if someone is sending you a one time patch, and you have your
> own idiosyncrasy outside of CodingStyle, then it should be the
> maintainer that makes the clean up. If someone starts sending you patch
> series and may become a new player in your subsystem, then you can have
> them start submitting such stylized formatting. But those types of
> comments really shouldn't be made to the fly by patcher.

Alternatively, if you have idiosyncrasies outside of CodingStyle (or
SubmittingPatches) that are useful, you could propose them for inclusion
in the kernel-wide style.  And if they're not useful enough to go there,
perhaps they shouldn't be enforced *anywhere*.

I'm not talking about things like how functions should be used in
various subsystems (e.g. "the function assigned to this ops field must
satisfy these invariants"); I'm talking about things like "in *this*
subsystem, your variable declarations should be sorted in descending
order of how mellifluous the letters in its name sound when mapped to a
two-octave chromatical musical scale and played through a flugelhorn".

- Josh Triplett
