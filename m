Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6F4C9BD8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 21:11:11 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0210.hostedemail.com
	[216.40.44.210])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id D927B1DC79
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 21:11:10 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 269444452
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 21:01:25 +0000 (UTC)
Date: Fri, 10 Jul 2015 17:01:21 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Darren Hart <dvhart@infradead.org>
Message-ID: <20150710170121.79290e8c@gandalf.local.home>
In-Reply-To: <20150709194456.GF9169@vmdeb7>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<559D8336.3040802@roeck-us.net>
	<1436414798.23558.3.camel@ellerman.id.au>
	<20150709194456.GF9169@vmdeb7>
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

On Thu, 9 Jul 2015 12:44:56 -0700
Darren Hart <dvhart@infradead.org> wrote:

> Agreed. I have this same conversation about commit messages. I don't care if
> it's a whitespace fix, if it is worth patching, building, testing, and
> submitting, it is worth writing a sentence about why you did it and what it's
> for. The same applies to a review. What did you confirm? Did you build it? Run
> checkpatch or some other static analysis? I think I'm also guilty of a one-line
> review now and then, but I'll be sure to include detail in the future.
> 

Very good point.

Again, not talking about regular people that a maintainer knows well.
But a Reviewed-by tag could at least also add what the reviewer did to
add it. "I examined the entire patch, and found nothing wrong with it",
is an acceptable comment. So is, "I looked at the patch and even built
and booted it. Looks good".

Again, I have a few people I ask to review patches, and just them
replying with "Reviewed-by" is good enough for me. Because I know them
well and know what they usually do when they do a review. I don't need
them to be constantly telling me what they did.

-- Steve
