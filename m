Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 19D23B88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 16:23:35 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0FBD314F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 16:23:32 +0000 (UTC)
Date: Fri, 10 Jul 2015 12:23:28 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Josh Boyer <jwboyer@fedoraproject.org>
Message-ID: <20150710162328.GB12009@thunk.org>
References: <20150710143832.GU23515@io.lakedaemon.net>
	<CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
Cc: Jason Cooper <jason@lakedaemon.net>,
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

On Fri, Jul 10, 2015 at 11:50:30AM -0400, Josh Boyer wrote:
> > This is a topic of interest to me that I think would best benefit from a
> > conference room discussion.
> >
> > Items to discuss:
> >
> >  - Survey the room on workflows and security posture for kernel work
> >  - Discussion of threat models, attack vectors
> >  - Discuss mitigation methods, tools and techniques
> >  - Identify missing tools or features of tools
> >
> > The intent is to discuss end point security with regards to protecting
> > the kernel source tree.
> 
> Interesting.  Though I think it needs a broader audience to be honest.
> It would be far easier to use distros as an attack vector than to try
> subverting the upstream source code.  This might be a good topic for
> something like Linux Plumbers.

I agree that the issue of trusting distros and the possibility of
hiding malware in distro software is an important one, and one which
is best addressed at something like Plumbers.

However, there are a number of Kernel-specific security issues which
are just as important --- how we maintain our own personal security,
and how we make sure a backdoor doesn't get slipped into the kernel
source tree.

This ends up relating to the code reviewer problem, and I've always
been convinced that if I had a a few dozen students to coach in a
computer security class, tasked as part of a semester-long class
project to attempt to sneak an obfuscated security bug as part of some
code cleanup or refactoring patch, at least one of them would end up
getting into Linus's tree.  The only reason why I haven't done this is
no one would have forgiven me afterwards, and the resulting bad
publicity wouldn't be good for Linux.

I wonder if this might be better done as a panel session during the
wider technical session day?

						- Ted
