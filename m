Return-Path: <mhiramat@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8474226C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 23:17:40 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E7AE2CB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 23:17:39 +0000 (UTC)
Date: Thu, 8 Sep 2016 08:17:32 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Al Viro <viro@ZenIV.linux.org.uk>
Message-Id: <20160908081732.588163bdf95b1bed5d0b1562@kernel.org>
In-Reply-To: <20160906185143.GF2356@ZenIV.linux.org.uk>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [topic proposal] tracepoints and ABI
 stability warranties
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 6 Sep 2016 19:51:43 +0100
Al Viro <viro@ZenIV.linux.org.uk> wrote:

> 	Right now there is no mechanism for saying "if this tracepoints
> breaks, it's Not Our Problem(tm)".  All of them are parts of userland
> ABI, potentially casting in stone all kinds of kernel internals.  E.g.
> just today a patch series adding tracepoints to kobject primitives
> had been posted; if _that_ becomes a part of stable ABI, we get the
> lifetime rules for anything with an embedded kobject exposed to userland
> and potentially impossible to change - all it takes is a single piece of
> software making non-trivial use of those.

I have heard that the tracepoints(event) interface should not be considered
as stable API, since it strongly depended on kernel internal.
Actually, we already export the "format" of event for each tracepoint, and
provide libtraceevent for user-space programs. Of course there is no 
"semantics" information, but it depends on kernel implementation. 
So IMHO, if someone wants to make a tool for using tracepoint/traceevent,
he should update out-of-tree, or contribute it to linux kernel as a tool
under tools/.


> 	Exposing kernel internals to debugging scripts et.al. is fine,
> but only as long as we are promising to keep those scripts working.

For in-tree script, yes, but we can't promiss it for out-of-tree scripts.

> Otherwise we end up promising that arseloads of code we can't even see,
> sticking its fingers very deep into the kernel internals, will be kept
> functional through the kernel changes.  This is absolutely insane, of
> course, and I doubt that anybody would be willing to make such promises,
> no matter how much value would that add.
> 
> 	The tracepoints are undiffirentiated mass, with no way for userland
> to tell whether it's using something stable or an equivalent of someone's
> debugging printks with no promise of stability.  And folks, there *are*
> people out there with commit priveleges on assorted userland projects who'd
> made it perfectly clear that _any_ kernel interface they find is fair game -
> as in "if you didn't want it used, why did you put it in the kernel?".
> No matter how much I dislike that bunch for other things, I can't blame them
> for being less than upfront regarding that policy.  It had been expressed
> very clearly and we'd better take the warning seriously.

Hmm, at least we have to state that the tracepoint/event interface is not
stable in Documentation/trace/tracepoints.txt or somewhere else in kernel
tree.

Thank you,

> 
> 	I think this is something that needs to be discussed at KS; IMO we
> need at least some way to express the degree of stability promises made
> wrt individual tracepoints and some mechanisms for preventing silent creep
> towards full stability; something along the lines of "unstable tracepoint $FOO
> used by $PROGRAM, kernel tainted", at least.
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss


-- 
Masami Hiramatsu <mhiramat@kernel.org>
