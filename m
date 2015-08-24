Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 99F7994A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 12:29:42 +0000 (UTC)
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 41E1910E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 12:29:42 +0000 (UTC)
Received: by obbfr1 with SMTP id fr1so111203981obb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 05:29:41 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.LRH.2.20.1508241335370.1294@namei.org>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
Date: Mon, 24 Aug 2015 14:29:41 +0200
Message-ID: <CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: James Morris <jmorris@namei.org>
Content-Type: text/plain; charset=UTF-8
Cc: Emily Ratliff <eratliff@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 24, 2015 at 6:20 AM, James Morris <jmorris@namei.org> wrote:

> There are also potentially promising approaches to mitigation with other
> technologies such as KASan and gcc plugins, as well as evolving hardware
> features.

What I've discovered when running KASan the last few weeks is that
this points back to the question of tests ... I've been using Trinity
to find bugs, but it is more likely to kill itself or cause OOM than
trigger any boundary overrun bugs.

Kselftest may be helpful, but basically any loads that heavily
exercise the kernel internals are helpful to harden the kernel.
Some of these are custom test suites I suspect. Any good hints
for a simple embedded developer like me?

Linus Walleij
