Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6AA11E7B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:05:06 +0000 (UTC)
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1C2E56D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:05:06 +0000 (UTC)
Received: by mail-io0-f193.google.com with SMTP id l14-v6so8351634iob.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 03:05:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
In-Reply-To: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 6 Sep 2018 12:04:53 +0200
Message-ID: <CACRpkdaVs8sY2OjLWOZNhBEHt+uAVct+8oF23wrsj2Lnt+UKfw@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] API
	replacement/deprecation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Sep 6, 2018 at 12:57 AM Kees Cook <keescook@chromium.org> wrote:

> Slow:
> Introduce new API in release N. Trickle patches in over N+M releases,
> removing old API when no more uses are present.
> Pros:
> - patches are written and handed to maintainers at a regular rate
> - testing happens normally
> Cons:
> - new users of the old API continue to enter the kernel, causing an
> endless cycle of needing more work
> - API may never get deprecated
> Example: strscpy(), VLA removal

GPIO descriptors trying to remove the global GPIO numbers, in
turn inspired by the IRQ number removal trying to remove
global IRQ numbers.

I am moving forward with the GPIO work, sometimes I even get
help.

As the process involves building manu esoteric architectures
I have been most helped by Arnd deleting cruft archs such as
blackfin and the 0day kbuild hitting me on the head for all
stupid mistakes I make, this has added some momentum to
the trickliness so it is more like a brook these days. It's still
not quick.

Yours,
Linus Walleij
