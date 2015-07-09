Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 94A27BBF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 23:56:53 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 116B69C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 23:56:53 +0000 (UTC)
Date: Thu, 9 Jul 2015 19:56:45 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: josh@joshtriplett.org
Message-ID: <20150709235645.GH9417@thunk.org>
References: <20150708145315.29030a75@gandalf.local.home>
	<559D8336.3040802@roeck-us.net>
	<1436414798.23558.3.camel@ellerman.id.au>
	<559EBD4C.6030502@gmail.com> <20150709190640.GC788@roeck-us.net>
	<20150709194734.GG9169@vmdeb7> <20150709201315.GF9417@thunk.org>
	<20150709205049.GB5154@roeck-us.net>
	<20150709214718.GG9417@thunk.org> <20150709231352.GB4516@cloud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150709231352.GB4516@cloud>
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

On Thu, Jul 09, 2015 at 04:13:52PM -0700, josh@joshtriplett.org wrote:
> 
> That assumes the patch actually has issues.  To use the reviews I do on
> RCU patches as an example, in a patch series, I might reply to a few
> patches with "here are some issues; with those fixed, Reviewed-by...",
> and then reply to the remaining unproblematic patches (individually or
> in aggregate) with just the Reviewed-by.

Right, that's why I talked about doing this on a holistic way.  It's
true that individual patches, and maybe even all of the patches in a
patch series, might be *perfect*.  But presumably that won't be true
for **all** of the patches you review.

This is why creating a system to do patch reviewer ranking is so
complicated.  You need to do this by looking at the entire corpus of
patches reviewed by the reviewer, so (for example) you can find out
which patch reviewers are allowing bad patches to get through to Linus
by giving a thumbs up to a patch that needed to be reverted.

(At $WORK, if someone creates a CL that causes a massive failure, it's
not just the engineer who submitted the CL who is at fault, but also
the reviewers who gave the CL a positive review --- and that's as it
should be.  Of course we also ask if there is something about the
development and regression test environment that might be a systematic
cause of problems, but if someone is consistently giving LGTM's
without doing enough due diligence, that's a issue that ultimately
need to be addressed by the engineer's manager.  The question is how to
deal with this kind of failure mode in an open source, volunteer
world.)

          	     	     	     	- Ted
