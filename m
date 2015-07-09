Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 160BC8B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 23:13:57 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7840A12C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 23:13:56 +0000 (UTC)
Date: Thu, 9 Jul 2015 16:13:52 -0700
From: josh@joshtriplett.org
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20150709231352.GB4516@cloud>
References: <20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<559D8336.3040802@roeck-us.net>
	<1436414798.23558.3.camel@ellerman.id.au>
	<559EBD4C.6030502@gmail.com> <20150709190640.GC788@roeck-us.net>
	<20150709194734.GG9169@vmdeb7> <20150709201315.GF9417@thunk.org>
	<20150709205049.GB5154@roeck-us.net>
	<20150709214718.GG9417@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150709214718.GG9417@thunk.org>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>, jic23@jic23.retrosnub.co.uk
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

On Thu, Jul 09, 2015 at 05:47:18PM -0400, Theodore Ts'o wrote:
> On Thu, Jul 09, 2015 at 01:50:49PM -0700, Guenter Roeck wrote:
> > 
> > Earlier it was discussed how to improve the recognition of reviewers.
> > Your comments seems to suggest the opposite, and may actually discourage
> > reviewers. Why should I review Linux kernel code if that is seen
> > by some as me trying to "game" the system ?
> 
> So I were designing an initial system that automatically scored
> reviewers, I'd be looking to see, from a holistic point of view, how
> many reviews were zero-length:
> 
> Reviewed-by: John Q. Random <seventeen@random.org>
> 
> ... and nothing else,
> 
> .... versus how many reviews had specific comments on various
> different portions of the patch.  If possible, the automated system
> would try to distinguish between comments that were just pointing out
> whitespace issues (which would be a slight positive) with comments
> that point out genuine design issues (this will be really hard to do
> in an automated fashion, but a very sophisticated nueral network[1]
> mgiht be able to hack it).

That assumes the patch actually has issues.  To use the reviews I do on
RCU patches as an example, in a patch series, I might reply to a few
patches with "here are some issues; with those fixed, Reviewed-by...",
and then reply to the remaining unproblematic patches (individually or
in aggregate) with just the Reviewed-by.

- Josh Triplett
