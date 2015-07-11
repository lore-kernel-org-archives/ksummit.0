Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DC1EEBC3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 16:02:05 +0000 (UTC)
Received: from pmta2.delivery3.ore.mailhop.org
	(pmta2.delivery3.ore.mailhop.org [54.213.22.21])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 40F91215
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 16:02:05 +0000 (UTC)
Date: Sat, 11 Jul 2015 16:02:02 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150711160202.GC23515@io.lakedaemon.net>
References: <20150710143832.GU23515@io.lakedaemon.net>
	<CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
	<20150710162328.GB12009@thunk.org>
	<CAGXu5j+NY8-5WPcP1kLZsKgzmbQ=L0Q18XZ6FYeVTcFGDLrRSw@mail.gmail.com>
	<1436599873.2243.10.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1436599873.2243.10.camel@HansenPartnership.com>
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

On Sat, Jul 11, 2015 at 08:31:13AM +0100, James Bottomley wrote:
> On Fri, 2015-07-10 at 15:08 -0700, Kees Cook wrote:
> > On Fri, Jul 10, 2015 at 9:23 AM, Theodore Ts'o <tytso@mit.edu> wrote:
> > > On Fri, Jul 10, 2015 at 11:50:30AM -0400, Josh Boyer wrote:
> > >> > This is a topic of interest to me that I think would best benefit from a
> > >> > conference room discussion.
> > >> >
> > >> > Items to discuss:
> > >> >
> > >> >  - Survey the room on workflows and security posture for kernel work
> > >> >  - Discussion of threat models, attack vectors
> > >> >  - Discuss mitigation methods, tools and techniques
> > >> >  - Identify missing tools or features of tools
> > >> >
> > >> > The intent is to discuss end point security with regards to protecting
> > >> > the kernel source tree.
> > >>
> > >> Interesting.  Though I think it needs a broader audience to be honest.
> > >> It would be far easier to use distros as an attack vector than to try
> > >> subverting the upstream source code.  This might be a good topic for
> > >> something like Linux Plumbers.
> > >
> > > I agree that the issue of trusting distros and the possibility of
> > > hiding malware in distro software is an important one, and one which
> > > is best addressed at something like Plumbers.
> > >
> > > However, there are a number of Kernel-specific security issues which
> > > are just as important --- how we maintain our own personal security,
> > > and how we make sure a backdoor doesn't get slipped into the kernel
> > > source tree.
> > 
> > I'm curious about the larger set of security topics. Jason's topic
> > seems to surround "supply chain security", but I think we've got a lot
> > of other areas. Is focusing on just that topic the right thing to do?
> > 
> > - supply chain security: I see two parts:
> >   - intentionally malicious commits (as Ted describes below)
> 
> You're missing a huge one and the usual way we get security breaches:
> accidental commits that weren't reviewed properly (or which the
> reviewers didn't spot the potential security problem).  All of the
> recent spate of serious vulnerabilities (heartbleed, shellshock, etc)
> have been accidental.
> 
> If we can concentrate on this one, and find a way of fixing it, the
> malicious but obfuscated commit will be covered under that.

Good point.  Addressing maintainer / reviewer burnout with co- roles and
lead rotation will help significantly.  With that addressed, people
still need to know *what* to look for.

Could we have some sort of post-vuln/CVE conversation dissecting the
vulnerability and how it got there?  Or, perhaps select a few for
process-dissection to be presented at the summit?

No matter how we do it, I think the best mitigation is education for
reviewers.  And there's no better examples than actual events.  How we
get there and how public it can be needs to be discussed though.

> Security is not an absolute, it's a tradeoff.  The point of the tradeoff
> is to make sure you address the significant threats while not impeding
> the workflow too much.  If we start worrying about and addressing
> insignificant threats, eventually you won't get on to kernel.org without
> going through airport theatre style security.

Ack.  My main goal was to give everyone an opportunity to say exactly
what tradeoffs they're making and tools being used.  Then see if there
are some common weaknesses that can be addressed.

The example that runs through my mind was after the Core Initiative was
stood up, the bash exploit was announced (shellshock).  Bash wasn't on
the CI list at the time.  It's certainly relied on by everybody, and was
simply a failure of imagination.

thx,

Jason.
