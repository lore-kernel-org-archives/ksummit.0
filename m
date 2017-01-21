Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 25DD5B6C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 21 Jan 2017 00:26:24 +0000 (UTC)
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C879517A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 21 Jan 2017 00:26:23 +0000 (UTC)
Received: by mail-it0-f46.google.com with SMTP id r185so32273476ita.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Jan 2017 16:26:23 -0800 (PST)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <CALCETrVKDAzcS62wTjDOGuRUNec_a-=8iEa7QQ62V83Ce2nk=A@mail.gmail.com>
References: <CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
	<CALCETrVKDAzcS62wTjDOGuRUNec_a-=8iEa7QQ62V83Ce2nk=A@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
Date: Fri, 20 Jan 2017 16:26:22 -0800
Message-ID: <CAGXu5jJqtA43RkCRnGvyR_h22CK+Q38fP937Xpo6+w=m5h4noA@mail.gmail.com>
To: Andy Lutomirski <luto@amacapital.net>
Content-Type: text/plain; charset=UTF-8
Cc: Josh Armour <jarmour@google.com>, Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] security-related TODO items?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jan 20, 2017 at 4:14 PM, Andy Lutomirski <luto@amacapital.net> wrote:
> This is not easy at all, but: how about rewriting execve() so that the
> actual binary format parsers run in user mode?

Fun! :)

> A minor one for x86: give binaries a way to opt out of the x86_64
> vsyscall page.  I already did the hard part (in a branch), so all
> that's really left is figuring out the ABI.

Oh right, we'd talked about this one too. ELF note? Something else?

You got time to do the PCID stuff? :) Please please? :)

-Kees

-- 
Kees Cook
Nexus Security
