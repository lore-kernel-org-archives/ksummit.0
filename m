Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4A011B1D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 15:44:12 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0029.hostedemail.com
	[216.40.44.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B749F108
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 15:44:11 +0000 (UTC)
Date: Fri, 10 Jul 2015 11:44:09 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Darren Hart <dvhart@infradead.org>
Message-ID: <20150710114409.638582c0@gandalf.local.home>
In-Reply-To: <20150709193718.GD9169@vmdeb7>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
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

On Thu, 9 Jul 2015 12:37:18 -0700
Darren Hart <dvhart@infradead.org> wrote:

> I've come to believe that this is one of many side effects of our dependency on
> a completely free form mechanism for the management of our patches, a mechanism
> which is becoming harder and harder to setup "correctly" with modern tooling
> (since the industry is killing "real email").
> 
> I spend a highly disproportionate amount of my time, relative to measurable
> quality impact to the kernel, going over the nuances of submitting patches.
> 
> 1) Must have a complete commit message
> 2) DCO goes above the ---
> 3) Include a patch changelog, do so below ---
> 4) Cc maintainers :-)
> 5) Checkpatch... checkpatch... checkpatch...

Ug, don't emphasize checkpatch. I see people making patches uglier due
to it. I have an old version of checkpatch that I sometimes run, but
the new version, IMHO, has more noise than signal.

> 6) Compiler warnings
> 7) CodingStyle :-)
> 8) Use ascii or utf8 character encodings
> 


> Looking forward a bit, I would love to see some tooling in place for people to
> submit patches either via a web form (which eliminates all the email tooling for
> submitting patches - which is where the formatting is especially critical) or
> through one of the more managed git systems, like gerrit, etc.

You mean like a web page that has a bunch of entries (like submitting a
paper to a LF conference), and you need to fill out.

Subject:  

 Fill out a one line top of this patch

Problem or enhancement :

 Why did you write this patch? Was there a problem you discovered, or
 is this a new feature you want to add.

Why this patch is needed:

 Why is this patch needed. If you fixed the problem, describe what you
 did and why you did it this way. If it is a feature, explain why this
 feature is needed, use cases for this feature, and how to use this new
 feature. If this adds a new user space interface, make sure you
 provide a man page (separate)

Patch file to upload:


Captcha:  We don't want bots doing this


Then this web server could run get_maintainers.pl and email the
appropriate people with a generated formatted patch. It could also
allow versioning. Today, people seem to be use to filling out web
forms. Obviously, this isn't a requirement to use, but could be used by
people that don't already know the Linux process.

It could be a bit smarter than get maintainers, as it could possibly
detect typo and whitespace patches and then send it off to the trivial
maintainer only.


-- Steve
