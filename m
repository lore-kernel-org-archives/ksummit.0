Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 43380B3D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 23:09:01 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 25995216
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 23:08:59 +0000 (UTC)
Date: Thu, 9 Jul 2015 19:08:47 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
To: David Woodhouse <dwmw2@infradead.org>
In-Reply-To: <1436481109.3324.219.camel@infradead.org>
Message-ID: <alpine.DEB.2.10.1507091907200.2532@hadrien>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-700312854-1436483336=:2532"
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-700312854-1436483336=:2532
Content-Type: TEXT/PLAIN; charset=utf-8
Content-Transfer-Encoding: 8BIT



On Thu, 9 Jul 2015, David Woodhouse wrote:

> On Thu, 2015-07-09 at 12:37 -0700, Darren Hart wrote:
> > I spend a highly disproportionate amount of my time, relative to measurable
> > quality impact to the kernel, going over the nuances of submitting patches.
> >
> > 1) Must have a complete commit message
> > 2) DCO goes above the ---
> > 3) Include a patch changelog, do so below ---
> > 4) Cc maintainers :-)
> > 5) Checkpatch... checkpatch... checkpatch...
> > 6) Compiler warnings
> > 7) CodingStyle :-)
> > 8) Use ascii or utf8 character encodings
> >
> > All of these are distractions from reviewing the code. I'm often on
> > version 3 of a series before I'm actually reviewing content.
>
> I don't think it's entirely appropriate to call all of those
> 'distractions'.
>
> The "content" in question is a proposed change to the code base. Such a
> change requires a coherent commit message which will make sense when we
> look back at this commit in the future. We will need to understand what
> was happening and why, in order to fix it or tweak it for new
> circumstances.
>
> Doing that is *not* a peculiarity of the Linux 'process'. It is basic
> engineering discipline, and it is *part* of the work. Just like the
> task of breaking a change down into incremental, bisectable commits —
> which I'm surprised wasn't in your list.
>
> Yes, there are a lot of people who *lack* that basic engineering
> discipline, to the point where it *can* start to look like it's a Linux
> -only requirement. But it's not. And there's not a lot we can do if an
> "engineer" lacks it, short of educating them. That part isn't a process
> issue.
>
> Likewise, compiler warnings. If your developers are actually
> *submitting* code with unresolved compiler warnings, again there's not
> a lot we can do to help them or you. Apart from confiscating their
> keyboard.
>
> Coding style, again, isn't a Linux-specific thing. All large code bases
> attempt to have some kind of consistency to make the code readable, and
> anyone attempting to work on *any* code base should expect to become
> familiar with the idioms and conventions (and charset choice) of the
> code they're working on.
>
> These *aren't* process issues, in my view. What you're saying with some
> of these is that you're having to do *basic* (non-Linux-specific)
> education of people who want to contribute code, and that *that*
> doesn't scale. Which is true, but it's hard to know how to address
> that, except with programs like GSoC etc.
>
> Josh suggests that we should provide a service that people could push
> code to and 'get automated feedback on what needs fixing'... but isn't
> that what checkpatch was for? OK, a local tool can't cross-compile it
> for you on every platform we support, but it can do a lot of stuff
> short of that.
>
> I do like the idea of a 'test' mailing list which receives patches and
> checks them for corruption though.

Experience with interns suggests that most people can get it right, but
that most people reequire a few tries to figure it out (mailer problems,
proper subject line, meaning of ---, etc).  So a test mailing list could
be helpful.

julia
--8323329-700312854-1436483336=:2532--
