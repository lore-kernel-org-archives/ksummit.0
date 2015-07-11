Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E96B5B8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 01:48:53 +0000 (UTC)
Received: from pmta2.delivery3.ore.mailhop.org
	(pmta2.delivery3.ore.mailhop.org [54.213.22.21])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 749E7B0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 01:48:53 +0000 (UTC)
Date: Sat, 11 Jul 2015 01:48:50 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20150711014850.GA23515@io.lakedaemon.net>
References: <20150710143832.GU23515@io.lakedaemon.net>
	<CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
	<20150710162328.GB12009@thunk.org>
	<CAGXu5j+NY8-5WPcP1kLZsKgzmbQ=L0Q18XZ6FYeVTcFGDLrRSw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGXu5j+NY8-5WPcP1kLZsKgzmbQ=L0Q18XZ6FYeVTcFGDLrRSw@mail.gmail.com>
Cc: Josh Boyer <jwboyer@fedoraproject.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] dev/maintainer workflow security
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 10, 2015 at 03:08:57PM -0700, Kees Cook wrote:
> On Fri, Jul 10, 2015 at 9:23 AM, Theodore Ts'o <tytso@mit.edu> wrote:
> > On Fri, Jul 10, 2015 at 11:50:30AM -0400, Josh Boyer wrote:
> >> > This is a topic of interest to me that I think would best benefit from a
> >> > conference room discussion.
> >> >
> >> > Items to discuss:
> >> >
> >> >  - Survey the room on workflows and security posture for kernel work
> >> >  - Discussion of threat models, attack vectors
> >> >  - Discuss mitigation methods, tools and techniques
> >> >  - Identify missing tools or features of tools
> >> >
> >> > The intent is to discuss end point security with regards to protecting
> >> > the kernel source tree.
> >>
> >> Interesting.  Though I think it needs a broader audience to be honest.
> >> It would be far easier to use distros as an attack vector than to try
> >> subverting the upstream source code.  This might be a good topic for
> >> something like Linux Plumbers.
> >
> > I agree that the issue of trusting distros and the possibility of
> > hiding malware in distro software is an important one, and one which
> > is best addressed at something like Plumbers.
> >
> > However, there are a number of Kernel-specific security issues which
> > are just as important --- how we maintain our own personal security,
> > and how we make sure a backdoor doesn't get slipped into the kernel
> > source tree.
> 
> I'm curious about the larger set of security topics.

I am as well, but most of those can be discussed openly.  I thought the
KS would be a good opportunity to sit down and compare notes about
things we may not be comfortable discussing in public.

> Jason's topic seems to surround "supply chain security", but I think
> we've got a lot of other areas. Is focusing on just that topic the
> right thing to do?

I'm open to these for sure, but it's time dependent.  This could easily
turn into the KSS, Kernel Security Summit.  *I* think that would fun,
but a lot of others might not.

> - supply chain security: I see two parts:
>   - intentionally malicious commits (as Ted describes below)
>   - personal security (keep commit credentials secure from theft)

> - reactive security: bug fix workflow
>   - getting fixes _to end users_ (not the same as publishing to stable)
>   - documenting impact when known (avoiding intentional obfuscation)

This one is a can of worms that no one has solved yet.  It's the
conflict between the 'open' in "open source" and the reality of patch
propagation.  Or complete lack there of when users don't update.  I
doubt we could add anything new to the discussion, let alone solve the
problem at KS.

> - proactive security: stop security flaws from happening in the first place
>   - scope analysis (defending both userspace and kernel from attack)
>   - threat analysis (how are attacks being made now and in future?)
>   - exposure analysis (syscall interface, device firmware, etc)
>   - static checkers (find and eliminate bug classes in the code)
>   - run-time mitigation features (endless list: memory protection, CFI,
>     ASLR, anti-bruteforcing, etc)

These are fun, but in the traditional security vein.  Not to say they
aren't worthy of discussion, but that they can and are discussed in
public.  If we choose to add this to the agenda, perhaps a summary of
the state of the art from the parties involved would suffice?

> My question would be: where do we need discussion? "Supply chain
> security" was discussed a fair bit after the kernel.org incident.

That was pre-Snowden.  Also prior to a bunch of game-changing hacks and
vulnerability disclosures.  I think it's safe to say everyone's security
awareness and imagined art-of-the-possible has opened up in the past
couple of years.  Particularly for non-security minded folks.

I think that merits revisiting the topic.  As Olof said, what are the
convenience-vs-security tradeoffs everyone is doing today?  Which of
them sound sane, which need tweaking?

thx,

Jason.
