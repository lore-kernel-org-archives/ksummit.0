Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 73FD9B68
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 22:08:58 +0000 (UTC)
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CCBA2176
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 22:08:57 +0000 (UTC)
Received: by iecuq6 with SMTP id uq6so204847696iec.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 15:08:57 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <20150710162328.GB12009@thunk.org>
References: <20150710143832.GU23515@io.lakedaemon.net>
	<CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
	<20150710162328.GB12009@thunk.org>
Date: Fri, 10 Jul 2015 15:08:57 -0700
Message-ID: <CAGXu5j+NY8-5WPcP1kLZsKgzmbQ=L0Q18XZ6FYeVTcFGDLrRSw@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset=UTF-8
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Jason Cooper <jason@lakedaemon.net>,
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

On Fri, Jul 10, 2015 at 9:23 AM, Theodore Ts'o <tytso@mit.edu> wrote:
> On Fri, Jul 10, 2015 at 11:50:30AM -0400, Josh Boyer wrote:
>> > This is a topic of interest to me that I think would best benefit from a
>> > conference room discussion.
>> >
>> > Items to discuss:
>> >
>> >  - Survey the room on workflows and security posture for kernel work
>> >  - Discussion of threat models, attack vectors
>> >  - Discuss mitigation methods, tools and techniques
>> >  - Identify missing tools or features of tools
>> >
>> > The intent is to discuss end point security with regards to protecting
>> > the kernel source tree.
>>
>> Interesting.  Though I think it needs a broader audience to be honest.
>> It would be far easier to use distros as an attack vector than to try
>> subverting the upstream source code.  This might be a good topic for
>> something like Linux Plumbers.
>
> I agree that the issue of trusting distros and the possibility of
> hiding malware in distro software is an important one, and one which
> is best addressed at something like Plumbers.
>
> However, there are a number of Kernel-specific security issues which
> are just as important --- how we maintain our own personal security,
> and how we make sure a backdoor doesn't get slipped into the kernel
> source tree.

I'm curious about the larger set of security topics. Jason's topic
seems to surround "supply chain security", but I think we've got a lot
of other areas. Is focusing on just that topic the right thing to do?

- supply chain security: I see two parts:
  - intentionally malicious commits (as Ted describes below)
  - personal security (keep commit credentials secure from theft)
- reactive security: bug fix workflow
  - getting fixes _to end users_ (not the same as publishing to stable)
  - documenting impact when known (avoiding intentional obfuscation)
- proactive security: stop security flaws from happening in the first place
  - scope analysis (defending both userspace and kernel from attack)
  - threat analysis (how are attacks being made now and in future?)
  - exposure analysis (syscall interface, device firmware, etc)
  - static checkers (find and eliminate bug classes in the code)
  - run-time mitigation features (endless list: memory protection, CFI,
    ASLR, anti-bruteforcing, etc)

My question would be: where do we need discussion? "Supply chain
security" was discussed a fair bit after the kernel.org incident.
"Reactive security" has seen endless discussion, and there are a
number of stale-mate topics. "Proactive security" is what I'm most
interested in, but tends to lack enough engineering resources to
really make strong headway. There are a number of dedicated folks, but
we need more people on that topic, not really more discussion.

I'm not saying we shouldn't have a discussion: I'm more curious to
hear where people think we should focus for a single session's time.

> This ends up relating to the code reviewer problem, and I've always
> been convinced that if I had a a few dozen students to coach in a
> computer security class, tasked as part of a semester-long class
> project to attempt to sneak an obfuscated security bug as part of some
> code cleanup or refactoring patch, at least one of them would end up
> getting into Linus's tree.  The only reason why I haven't done this is
> no one would have forgiven me afterwards, and the resulting bad
> publicity wouldn't be good for Linux.

My paranoid brain thinks this has likely already happened. :)

> I wonder if this might be better done as a panel session during the
> wider technical session day?

As mentioned in other replies, I think this would be best served as a
panel session to keep the audience tighter. It's a large field of
discussion and we might have problems staying on track even in the
smaller group.

-Kees

-- 
Kees Cook
Chrome OS Security
