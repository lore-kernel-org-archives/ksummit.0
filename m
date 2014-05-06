Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 403CE8AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 17:45:28 +0000 (UTC)
Received: from mail-ve0-f173.google.com (mail-ve0-f173.google.com
	[209.85.128.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1E7861FC59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 17:45:27 +0000 (UTC)
Received: by mail-ve0-f173.google.com with SMTP id pa12so9835658veb.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 06 May 2014 10:45:26 -0700 (PDT)
MIME-Version: 1.0
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 6 May 2014 10:45:05 -0700
Message-ID: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Michael Kerrisk-manpages <mtk.manpages@gmail.com>
Content-Type: text/plain; charset=UTF-8
Subject: [Ksummit-discuss] [CORE TOPIC] Reviewing new API/ABI
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

There doesn't currently seem to be any real process for reviewing new
core APIs for sanity of design, appropriateness to solve the problem
they're targetting, or correctness of implementation.  Some examples
that come to mind recently:

 - A lot of people seem to think that O_TMPFILE is a terrible
interface, despite the fact that the functionality it provides is very
useful.  It was also rather badly broken until -rc8 or so.

 - The x86 32-bit vdso clock functions almost made it in with a
questionable symbol version.

 - 3.15 is currently slated to include an unfortunate ABI glitch in
the MIPS seccomp filter interface.  There's a patch.

 - There are some aspects of the keyring API that seem to me to be quite bad.

 - An impressive number of new APIs are missing -EINVAL returns if
reserved parameters are set.

(I'm not trying to point a finger at anyone with these examples;
they're just things that I was involved in to some extent.)

The current process is confused.   For example, I currently plan on
trying to remember to ask Linus to revert the MIPS seccomp stuff or
fix it sometime around -rc6 if the patch hasn't landed, but this
sucks.

I think that the process could be improved.  I think that there are
people who are willing to spend time to read API docs and thinking
about these kinds of issues.  (I am, and Michael Kerrisk seems to do a
fair amount of it.)

I would like to discuss what we could change to make this work better
in the future.  In an ideal world, I would like to see every core API
change come with documentation, tests (possibly simple ones), and a
post, with acks, to a list that covers just API changes.  This might
be tough, but it could add a lot of value.

I've occasionally thought that API docs should live in the kernel tree
in some reasonably well organized place so that patch sets can include
doc patches.  I realize that this is contentious.

I'm sure that other people have other suggestions here.

--Andy

P.S.  I'm not on the invitation nominee list, so if people like this
topic, I'd appreciate a nomination :)
