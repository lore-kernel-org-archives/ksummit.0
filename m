Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E7ECFB1B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 20:21:41 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0199.hostedemail.com
	[216.40.44.199])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id 1C2F51DCA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 20:21:41 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 5A315183E8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 15:35:57 +0000 (UTC)
Date: Sun, 12 Jul 2015 11:35:53 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Message-ID: <20150712113553.3abff36b@gandalf.local.home>
In-Reply-To: <20150712034824.GA4236@treble.hsd1.ky.comcast.net>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<20150710181409.GA30145@treble.redhat.com>
	<1436576450.27924.59.camel@stgolabs.net>
	<20150712034824.GA4236@treble.hsd1.ky.comcast.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Sat, 11 Jul 2015 22:48:24 -0500
Josh Poimboeuf <jpoimboe@redhat.com> wrote:

> Right, as I said, Signed-off-by doesn't necessarily imply Reviewed-by.
> 
> So any review done by a maintainer who only adds Signed-off-by goes
> uncredited.
> 

A Signed-off-by sure as well better mean a reviewed by! It holds a much
heavier meaning to the patch than a Reviewed-by does.

A Signed-off-by means that you are responsible for that patch. Even if
you don't necessarily understand the patch (like a high level
maintainer pulling in patches for low level hardware that the
maintainer doesn't fully understand), you should review it as much as
you can before adding an SoB to it. Otherwise you are not doing your
job.

And regardless, there's more weight for "credit" to Signed-off-by's
than for Reviewed-by's anyway. So much so, that my own scripts for
analysis ignores all other tags for anyone with a Signed-off-by
attached to a commit.

-- Steve
