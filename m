Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 84B1D7AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 01:32:30 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0011.hostedemail.com
	[216.40.44.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EED1B255
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 01:32:29 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave06.hostedemail.com (Postfix) with ESMTP id E436F17250F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 01:32:25 +0000 (UTC)
Date: Thu, 28 Jul 2016 21:32:19 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20160728213219.5f26a404@grimm.local.home>
In-Reply-To: <15569.1469184060@warthog.procyon.org.uk>
References: <15569.1469184060@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Compiler shopping list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 22 Jul 2016 11:41:00 +0100
David Howells <dhowells@redhat.com> wrote:

> Are there additional things we can get the compiler to do for us?  Some
> things I've seen brought up:
> 
>  (1) Additional __atomic_*() ops could be useful.  Suggestions I've heard
>      include direct LL/SC support - though the compiler people don't seem so
>      keen on that.
> 
>  (2) -mmodel=kernel flag so that the compiler can optimise better for the
>      kernel memory model.
> 

I'll bring this up, well, just because. It was something I wanted
before, but I'm not sure how much of a benefit it will be without it
being actually implemented where we can test it.

What about assigning blocks of code to a section?

	if (y) {
		some_code;
	} __attribute__((section("x")))

where the code "some_code" will be moved to that section. The use case
I'm thinking about is for trace points. The tracepoint code does inject
a bit of its own code at each tracepoint location (see
include/linux/tracepoint.h trace_##name()). It's under a
static_key_false() which is an unlikely, thus gcc does sometimes do
well to move it to the bottom of a function. But I'm wondering if it
would be better to get it into its own section all together? I'm just
worried about the icache hit where there are tracepoints in critical
sections.

-- Steve
