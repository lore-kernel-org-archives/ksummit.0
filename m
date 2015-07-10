Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 61380982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 21:04:53 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A7F92184
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 21:04:52 +0000 (UTC)
Date: Fri, 10 Jul 2015 14:04:48 -0700
From: josh@joshtriplett.org
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150710210448.GE10533@cloud>
References: <559D8336.3040802@roeck-us.net>
	<1436414798.23558.3.camel@ellerman.id.au>
	<559EBD4C.6030502@gmail.com> <20150709190640.GC788@roeck-us.net>
	<20150709194734.GG9169@vmdeb7> <20150709201315.GF9417@thunk.org>
	<20150709205049.GB5154@roeck-us.net>
	<20150709214718.GG9417@thunk.org> <20150709231352.GB4516@cloud>
	<20150710164938.72da8ef1@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150710164938.72da8ef1@gandalf.local.home>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	jic23@jic23.retrosnub.co.uk, Jason Cooper <jason@lakedaemon.net>,
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

On Fri, Jul 10, 2015 at 04:49:38PM -0400, Steven Rostedt wrote:
> On Thu, 9 Jul 2015 16:13:52 -0700 josh@joshtriplett.org wrote:
> > That assumes the patch actually has issues.  To use the reviews I do on
> > RCU patches as an example, in a patch series, I might reply to a few
> > patches with "here are some issues; with those fixed, Reviewed-by...",
> > and then reply to the remaining unproblematic patches (individually or
> > in aggregate) with just the Reviewed-by.
> 
> Josh, I read your reviews. Yes, you have a bunch of single "Reviewed-by"
> tags, but you also have a lot of emails with substantially significant
> comments. What Ted is saying, is to see how many significant replies one
> has. In fact, I would say if we were to automate this, each significant
> reply (one with actual comments), would increase the weight that a
> single "Reviewed-by" email would carry. That way people like yourself
> would have more weight attached to emails with single "Reviewed-by"
> than others that don't have many emails with actual comments attached.

Ah, I see what you're getting at now.  I thought you were trying to
figure out the value of a "Reviewed-by" on an individual patch.  But
you're right, a review doesn't carry much weight if your reviews *never*
find issues; that would imply you're either chery-picking easy patches
to review or rubber-stamping bad patches.

(And conversely, a Reviewed-by on a patch that turns out to be wrong
shouldn't carry any more stigma than submitting such a patch yourself.
Everybody has submitted a brown-paper-bag at some point; as long as
there's not a pattern of it, that's not a critical issue with
reviewing.)

- Josh Triplett
