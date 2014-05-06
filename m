Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4AC30988
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 01:33:41 +0000 (UTC)
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8E9791F968
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 01:33:40 +0000 (UTC)
Received: by mail-ob0-f178.google.com with SMTP id va2so6092687obc.23
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 05 May 2014 18:33:39 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
References: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
Date: Mon, 5 May 2014 18:33:39 -0700
Message-ID: <CAGXu5j+oo0iga2AwyeH0OiW=LLWMyeDUDry7HpNrfv=O+bZd_Q@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: Jiri Kosina <jkosina@suse.cz>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] live kernel patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 2, 2014 at 12:42 PM, Jiri Kosina <jkosina@suse.cz> wrote:
> Runtime/live kernel patching is becoming a topic these days. There are
> several parallel implementations currently evolving in parallel (kpatch,
> kgraft, criu-based solution, ksplice to some extent), all of them having
> their pros and cons.
>
> It's clear that what is going to get merged at the end of the day would
> have to be some super-position of the currently existing solutions.
>
> Finding a reasonable compromise might be challenging. Having discussion
> between the groups working on those solutions (tech topic) and with
> "general maintainer audience" to face the flame^W^W^Wobtain feedback
> (core topic) would be very valuable step in converging to unified
> solution.
>
> Suggested participants: see the list of "competing" projects above

I'm very interested in this, especially as it may relate to security
exploit mitigation work, both in the sense of being able to
arbitrarily patch the kernel against flaws, and to defend against
attackers being able to ... er ... arbitrarily patch the kernel... :)

-Kees

-- 
Kees Cook
Chrome OS Security
