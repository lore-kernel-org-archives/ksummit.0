Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 050BD305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 17:53:47 +0000 (UTC)
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6463B291
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 17:53:45 +0000 (UTC)
Received: by mail-wm0-f42.google.com with SMTP id o80so62132189wme.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 10:53:45 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
Date: Mon, 11 Jul 2016 13:53:42 -0400
Message-ID: <CAGXu5j+M06pdOB7Phqg==xg4p7=9ggmZciQuGZaNTXaW=-BCbg@mail.gmail.com>
To: Andy Lutomirski <luto@amacapital.net>
Content-Type: text/plain; charset=UTF-8
Cc: Jann Horn <jann@thejh.net>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] kernel hardening / self-protection /
	whatever
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 11, 2016 at 12:28 AM, Andy Lutomirski <luto@amacapital.net> wrote:
> Are there useful things to discuss in person about hardening?  (I
> don't want to bikeshed about the name at the kernel summit if we can
> possibly avoid it.)
>
> Plausible sub-topics include:
>
>  - "USERCOPY" hardening

The whitelisting stuff might be interesting, but I think it's mostly
about standardizing how architectures define their *copy_*_user()
implementations so that things like KASan and now the hardening
infrastructure can hook it reliably.

>  - Virtually mapped stacks (I'm hoping to have that in for x86 before
> kernel summit...)

Yeah, this should just go in. :) Perhaps a discussion for other
architectures, and the specific requirements (which are mostly well
documented, excepting some notes on stuff like the guard page at
either end, etc).

>  - Refcount

This one needs a solid technical step first; I'd like to avoid
bikeshedding without real code to work from.

> I don't how much of this really needs an in-person meeting, but maybe
> some if it would benefit.

Perhaps some discussion on new/interesting/better gcc plugins, as the
infrastructure and several good examples should have landed by then?

-Kees

-- 
Kees Cook
Chrome OS & Brillo Security
