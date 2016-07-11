Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 498369C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 04:29:14 +0000 (UTC)
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C8BB118B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 04:29:13 +0000 (UTC)
Received: by mail-vk0-f48.google.com with SMTP id v6so123242263vkb.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 10 Jul 2016 21:29:13 -0700 (PDT)
MIME-Version: 1.0
From: Andy Lutomirski <luto@amacapital.net>
Date: Sun, 10 Jul 2016 21:28:53 -0700
Message-ID: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>, Jann Horn <jann@thejh.net>
Content-Type: text/plain; charset=UTF-8
Subject: [Ksummit-discuss] [TOPIC] kernel hardening / self-protection /
	whatever
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Are there useful things to discuss in person about hardening?  (I
don't want to bikeshed about the name at the kernel summit if we can
possibly avoid it.)

Plausible sub-topics include:

 - "USERCOPY" hardening

 - Virtually mapped stacks (I'm hoping to have that in for x86 before
kernel summit...)

 - Refcount

I don't how much of this really needs an in-person meeting, but maybe
some if it would benefit.
