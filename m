Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B2339ABF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 16:47:52 +0000 (UTC)
Received: from mailx.hitachi.co.jp (mailx.hitachi.co.jp [133.145.228.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id E467B1BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 16:47:51 +0000 (UTC)
Received: from mail7.hitachi.co.jp (mail7.hitachi.co.jp [133.145.228.42])
	by mailx.hitachi.co.jp (Postfix) with ESMTP id 10D0D1770251
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 01:13:48 +0900 (JST)
Received: from mlsv5.hitachi.co.jp (unknown [133.144.234.166])
	by mail7.hitachi.co.jp (Postfix) with ESMTP id 710AEB1D382
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 01:13:46 +0900 (JST)
Received: from vshuts04.hitachi.co.jp (vshuts04.hitachi.co.jp [10.201.6.86])
	by mfilter04.hitachi.co.jp (Switch-3.3.4/Switch-3.3.4) with ESMTP id
	t68GDjAo004681 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 9 Jul 2015 01:13:46 +0900
Message-ID: <559D4C35.6070709@hitachi.com>
Date: Thu, 09 Jul 2015 01:13:41 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
References: <alpine.LNX.2.00.1507071253390.10183@pobox.suse.cz>
In-Reply-To: <alpine.LNX.2.00.1507071253390.10183@pobox.suse.cz>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] live patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 2015/07/08 5:42, Jiri Kosina wrote:
> [ I was wondering whether to tag this "CORE TOPIC" or "TECH TOPIC", as I 
>   really see it on the bordeline; let's see ]
> 
> As people are probably aware, the basic infrastructure for live patching 
> of the kernel has been merged and there are still quite some loose ends to 
> tie up.
> 
> On top of original agreement by the two teams working at live kernel 
> patching at Red Hat and SUSE, there has been quite some feedback raised 
> during upstream review by people not being directly involved in the 
> development itself [1].
> 
> Tangentially related topics have been spawned in the discussion, namely:
> 
> - stack unwinding has so far been deemed purely debugging facility, with 
>   no correctness guarantees whatsoever. One of the possible aproaches to
>   improving the coverage of live patching infrastructure would assume
>   100% reliability of in-kernel stack unwinding.
> 
>   Is this something that should be pursued further? Especially opinions 
>   and comments from various arch maintainers would be welcome

Yeah, at least the live patch would be better to depend on a frame-pointer
to improve correctness...

> 
> - it would be beneficial for live patching if kernel threads could be 
>   cleaned up; currently it's a mess, with freezer points, signal handling 
>   etc. spewed randomly all over the main loop. Generalizing the API (such
>   as improving kthread_worker and migrating kthreads to use that) would 
>   be beneficial if there are no major objections. See my related TECH 
>   TOPIC submission
> 
> - Ingo proposed a "checkpoint"-based way for live patching, i.e. forcing 
>   all the processess out of kernel to serliaze on a well-defined execution
>   point, perform the patching, and resume the execution.

IMO, this is not acceptable especially for most of real-time scheduled tasks
which usually the mission critical systems require. And such systems are
the main target of the live patching feature I think, since those are
sometimes controlling civil infrastructure systems, like trains, plants,
factories and so on.

> 
>   I see several issues with this aproach, but Ingo seems to be really 
>   insisting on this to be the way to go.
> 
> I could give a short introduction to how the current in-kernel live 
> patching facility looks like and what are the things that are currently 
> missing (either because they were considered too controversial by some 
> (such as the stack unwinding reliability or lazy-migration) or because 
> they just have not been implemented yet) and hopefully create a basis for 
> a discussion that would result in more defined opinions on how this 
> facility should work to be widely acceptable.

I'd like to discuss about how to make better(prefer to live patching)
patches, and what kind of patches can not be applied too. If we can
make it clear, it is possible to make a tool to clarify.

Thank you,

> 
> Suggested attendance: folks working on live patching and anyone else 
> who's not directly involved, but has strong opinions on how things should 
> be done.
> 
> [1] http://lkml.kernel.org/r/20150220104418.GD25076@gmail.com
> 
> Thanks,
> 


-- 
Masami HIRAMATSU
Linux Technology Research Center, System Productivity Research Dept.
Center for Technology Innovation - Systems Engineering
Hitachi, Ltd., Research & Development Group
E-mail: masami.hiramatsu.pt@hitachi.com
