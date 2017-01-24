Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2E233B65
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Jan 2017 20:58:23 +0000 (UTC)
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 555961BD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Jan 2017 20:58:22 +0000 (UTC)
Received: by mail-vk0-f54.google.com with SMTP id r136so121022144vke.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Jan 2017 12:58:22 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <c1822e5b-9352-c1ab-ee98-e492ef6e156a@I-love.SAKURA.ne.jp>
References: <CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
	<CALCETrVKDAzcS62wTjDOGuRUNec_a-=8iEa7QQ62V83Ce2nk=A@mail.gmail.com>
	<31033.1485168526@warthog.procyon.org.uk>
	<CALCETrV5b4Z3MF51pQOPtp-BgMM4TYPLrXPHL+EfsWfm+CczkA@mail.gmail.com>
	<c1822e5b-9352-c1ab-ee98-e492ef6e156a@I-love.SAKURA.ne.jp>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 24 Jan 2017 12:58:00 -0800
Message-ID: <CALCETrWj8_D_YL4PKZGbxx4HSZHyoctdvfriUVhE=x+NpQYLtw@mail.gmail.com>
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Content-Type: text/plain; charset=UTF-8
Cc: Josh Armour <jarmour@google.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"linux-mm@kvack.org" <linux-mm@kvack.org>
Subject: Re: [Ksummit-discuss] security-related TODO items?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jan 24, 2017 at 2:32 AM, Tetsuo Handa
<penguin-kernel@i-love.sakura.ne.jp> wrote:
> Hello.
>
> Can I read archive of the discussion of this topic from the beginning?
> I felt that this topic might be an opportunity of proposing my execute handler
> approach.

It should be in the linux-mm archives.

>
> In TOMOYO LSM (out of tree version), administrator can specify a program
> called execute handler which should be executed on behalf of a program
> requested by execve(). The specified program performs validation (e.g. whether
> argv[]/envp[] are appropriate) and setup (e.g. redirect file handles) before
> executing the program requested by execve().
>
> Conceptually execute handler is something like
>
>   #!/bin/sh
>   test ... || exit 1
>   test ... || exit 1
>   test ... || exit 1
>   exec ...
>
> which would in practice be implemented using C like
> https://osdn.net/projects/tomoyo/scm/svn/blobs/head/tags/ccs-tools/1.8.5p1/usr_lib_ccs/audit-exec-param.c .
> It is not difficult to implement the kernel side as well.
>

The difference is that that last exec means that the kernel is still
exposed to any bugs in its ELF parser.  Moving that to user mode would
reduce the attack surface.
