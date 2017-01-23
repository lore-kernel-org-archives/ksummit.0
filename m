Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BA7B7B2F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 21:53:40 +0000 (UTC)
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B61E114F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 21:53:39 +0000 (UTC)
Received: by mail-vk0-f51.google.com with SMTP id t8so100124214vke.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 13:53:39 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAFhKne8+cuH6vsu1JqRt5i=yMGH1Qv_RLJf07vQhkxUU-ajS1Q@mail.gmail.com>
References: <CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
	<CALCETrVKDAzcS62wTjDOGuRUNec_a-=8iEa7QQ62V83Ce2nk=A@mail.gmail.com>
	<31033.1485168526@warthog.procyon.org.uk>
	<CALCETrV5b4Z3MF51pQOPtp-BgMM4TYPLrXPHL+EfsWfm+CczkA@mail.gmail.com>
	<5024.1485203788@warthog.procyon.org.uk>
	<CAFhKne8+cuH6vsu1JqRt5i=yMGH1Qv_RLJf07vQhkxUU-ajS1Q@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 23 Jan 2017 13:53:18 -0800
Message-ID: <CALCETrW9oP7=77X1tN2OQhtiamyR94yT_=00ZxgbuGvzHK--9A@mail.gmail.com>
To: Matthew Wilcox <willy6545@gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Josh Armour <jarmour@google.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Mon, Jan 23, 2017 at 12:59 PM, Matthew Wilcox <willy6545@gmail.com> wrote:
> Why put it in the user address space? As I said earlier in this thread, we
> want the facility to run code from kernel addresses in user mode, limited to
> only being able to access its own stack and the user addresses. Of course it
> should also be able to make syscalls, like mmap.

Would you believe I've already started prototyping this (the
kernel-code-in-user-mode part, not the execve part)?

As a practical matter, though, I think the implementation would be
*much* simpler if code running in user mode sees user addresses.
Otherwise we'd end up with very messy and constrained code on
single-address-space arches like x86 and we might not be able to
implement it at all on split-address-space arches like s390.

That being said, writing a bit of PIC code that parses the ELF file,
finds some unused address space, and relocates itself out of the way
shouldn't be *that* hard.

--Andy
