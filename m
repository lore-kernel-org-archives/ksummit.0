Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 34425B3D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 16:35:52 +0000 (UTC)
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9CCE6E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 16:35:51 +0000 (UTC)
Received: by iodt126 with SMTP id t126so155572574iod.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 09:35:51 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
Date: Mon, 24 Aug 2015 09:35:50 -0700
Message-ID: <CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Emily Ratliff <eratliff@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 24, 2015 at 5:29 AM, Linus Walleij <linus.walleij@linaro.org> wrote:
> On Mon, Aug 24, 2015 at 6:20 AM, James Morris <jmorris@namei.org> wrote:
>
>> There are also potentially promising approaches to mitigation with other
>> technologies such as KASan and gcc plugins, as well as evolving hardware
>> features.
>
> What I've discovered when running KASan the last few weeks is that
> this points back to the question of tests ... I've been using Trinity
> to find bugs, but it is more likely to kill itself or cause OOM than
> trigger any boundary overrun bugs.
>
> Kselftest may be helpful, but basically any loads that heavily
> exercise the kernel internals are helpful to harden the kernel.
> Some of these are custom test suites I suspect. Any good hints
> for a simple embedded developer like me?

I agree with the sentiment here, but not with the language. Finding
flaws (which is what selftests, KASan, Trinity, etc do) isn't
hardening. Hardening is stopping the exploitation of flaws. The
hardening the kernel needs is about taking away exploitation tools,
not killing bugs. (Though killing bugs is still great.)

As an example, making the kernel code memory read-only means an
attacker cannot just directly change the kernel's execution path when
they use an arbitrary memory-writing flaw. (This feature is mostly
enabled via CONFIG_DEBUG_RODATA, and was very recently added to ARM,
though isn't at 100% coverage for all the physical memory aliases.)

-Kees

-- 
Kees Cook
Chrome OS Security
