Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 45BE3B1D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 00:08:56 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0176.hostedemail.com
	[216.40.44.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D854C103
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 00:08:55 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 06CC2B34DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 21:41:25 +0000 (UTC)
Date: Thu, 9 Jul 2015 17:41:21 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Message-ID: <20150709174121.58aca106@gandalf.local.home>
In-Reply-To: <20150709202152.GE1237@dtor-ws>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<20150709193951.GE9169@vmdeb7> <20150709202152.GE1237@dtor-ws>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org, jic23@jic23.retrosnub.co.uk
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

On Thu, 9 Jul 2015 13:21:52 -0700
Dmitry Torokhov <dmitry.torokhov@gmail.com> wrote:
 
> > Agreed. Unless there is commentary accompanying the review, it doesn't add a
> > lot.
> 
> No, that is not always true. If I see a naked "reviewed-by" from a
> person who's been working on the subsystem quite a bit and shown a good
> judgement it is enough for me. I do not need them to find something to
> nitpick over so that there is "meat" to the review.


And this is where the problem lies. Every review by tag is different,
and it really matters from who it's from. I've had people send me a
"Reviewed-by" tag that I had no idea who it is from, and with no
commentary. That to me is worthless.

But I've sent patches out and have asked people like Masami Hiramatsu
to review it, and if he returns just a "Reviewed-by" with no
commentary, I take that as a positive, and that he didn't find anything
wrong with what I wrote. And I gladly add that tag as it has meaning to
me.

It really does come down to the maintainer. They should only add a
Reviewed-by tag from someone they trust, or from someone that has given
them constructive criticisms for the patch. I really don't know how
strict maintainers of other subsystems are with regard to adding those
tags.

I personally don't add that tag unless I have done an extensive review
of the patch. I don't want some stupid bug come back to a patch that
has my Reviewed-by tag on it. But I have reviewed lots of patches where
I haven't put enough effort into adding a RB tag. Perhaps I should just
add "Looks-fine-to-me-by:" tag, stating I did a light review but not a
thorough one. ;-)

-- Steve
