Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4F44ABD8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 21:25:55 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0116.hostedemail.com
	[216.40.44.116])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C9695121
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 21:25:54 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave08.hostedemail.com (Postfix) with ESMTP id 65673212B98
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 20:49:41 +0000 (UTC)
Date: Fri, 10 Jul 2015 16:49:38 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: josh@joshtriplett.org
Message-ID: <20150710164938.72da8ef1@gandalf.local.home>
In-Reply-To: <20150709231352.GB4516@cloud>
References: <20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<559D8336.3040802@roeck-us.net>
	<1436414798.23558.3.camel@ellerman.id.au>
	<559EBD4C.6030502@gmail.com> <20150709190640.GC788@roeck-us.net>
	<20150709194734.GG9169@vmdeb7> <20150709201315.GF9417@thunk.org>
	<20150709205049.GB5154@roeck-us.net>
	<20150709214718.GG9417@thunk.org> <20150709231352.GB4516@cloud>
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

On Thu, 9 Jul 2015 16:13:52 -0700
josh@joshtriplett.org wrote:


> That assumes the patch actually has issues.  To use the reviews I do on
> RCU patches as an example, in a patch series, I might reply to a few
> patches with "here are some issues; with those fixed, Reviewed-by...",
> and then reply to the remaining unproblematic patches (individually or
> in aggregate) with just the Reviewed-by.
> 


Josh, I read your reviews. Yes, you have a bunch of single "Reviewed-by"
tags, but you also have a lot of emails with substantially significant
comments. What Ted is saying, is to see how many significant replies one
has. In fact, I would say if we were to automate this, each significant
reply (one with actual comments), would increase the weight that a
single "Reviewed-by" email would carry. That way people like yourself
would have more weight attached to emails with single "Reviewed-by"
than others that don't have many emails with actual comments attached.

Anyway, for consideration to KS, the top reviewers that an automated
system would produce, would only get the program committee's eyes
looking at it. It by no way guarantees an invite. No matter what
automated system is in place, at least for KS, there will always be
humans involved in analyzing that data.

-- Steve
