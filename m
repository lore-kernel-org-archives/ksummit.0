Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 90B74E1C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 19:47:33 +0000 (UTC)
Received: from outbound1.eu.mailhop.org (outbound1.eu.mailhop.org
	[52.28.251.132])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EA51F775
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 19:47:32 +0000 (UTC)
Date: Mon, 24 Sep 2018 19:31:07 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Shuah Khan <shuah@kernel.org>
Message-ID: <20180924193107.GM570@io.lakedaemon.net>
References: <cf7638b9-c25d-d47e-f539-192a43268122@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cf7638b9-c25d-d47e-f539-192a43268122@kernel.org>
Cc: ksummit-discuss@lists.linuxfoundation.org, olof@lxom.net,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH-TOPIC] Review - Code of Conduct: Let's
 revamp it.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

All,

On Mon, Sep 24, 2018 at 08:24:07AM -0600, Shuah Khan wrote:
> I have been trying to follow various threads on this topic and none of them address
> the review of this patch that went in. There is no mistake in the title of this topic.
> I do consider this topic to be more general than limited to Maintainer Summit. Hence,
> the choice of a wider Technical designation.

fwiw, I agree with the insufficient scope, and the lack of public
mailinglist discussion.

I'd like to make a drive-by observation (or two), if I may.  The kernel
community is *huge* and *active* in comparison to most other projects.
It also has a lot more history than most others.  That history isn't
stored in a database, only to be accessed through a web page, accepting
the single database as canonical.  Rather, the history is stored in many
places, accessible by many different methods, and verifiable against
other remote copies of the history.

This difference is an understated advantage of the kernel development
process.  Once you say "it", you can never refute that you said it.  The
history itself provides a conscious check.  As a result, I don't think a
CoC in any form is going to cause any sort of material change in anyones
behavior.  Rather, it'll just push away valuable and scarce talent.

The second observation is that trying to adopt a single CoC for the
_entire_ Linux development community is an exercise in futility.  As
Daniel Vetter has mentioned many times in these recent discussions, dri
has been happily living under their own CoC for quite some time.  So we
can gather a) it works for them, and b) it doesn't bother any other
subsystems.

So why are we trying to apply a single CoC to everyone?  Why not let
each subsystem / sub-community adopt their own and see how it goes?  A/B
test it.  It could either be a footer link for the respective
mailinglist, or a link in MAINTAINERS.  Any community not specifying one
defaults to the Code of Conflict.

I'd like to assume the backdoor method the CoC was introduced was purely
to avoid a never-ending bikeshed.  And the subsequent threads are
evidence that it didn't take a prognosticator to predict the mess.

Perhaps that's an indicator that it shouldn't be done that way.  Maybe
approaching the problem on a per-sub-community will work better.  I
dunno.

Just my 2 cents.


Thanks,

Jason.
