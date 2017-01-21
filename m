Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E4512C89
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 21 Jan 2017 00:14:47 +0000 (UTC)
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DFB161FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 21 Jan 2017 00:14:46 +0000 (UTC)
Received: by mail-vk0-f52.google.com with SMTP id t8so60202553vke.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Jan 2017 16:14:46 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
References: <CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Fri, 20 Jan 2017 16:14:25 -0800
Message-ID: <CALCETrVKDAzcS62wTjDOGuRUNec_a-=8iEa7QQ62V83Ce2nk=A@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
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

This is not easy at all, but: how about rewriting execve() so that the
actual binary format parsers run in user mode?

A minor one for x86: give binaries a way to opt out of the x86_64
vsyscall page.  I already did the hard part (in a branch), so all
that's really left is figuring out the ABI.

On Fri, Jan 20, 2017 at 2:38 PM, Kees Cook <keescook@chromium.org> wrote:
> Hi,
>
> I've already got various Kernel Self-Protection Project TODO items
> collected[1] (of varying size and complexity), but recently Google's
> Patch Reward Program[2] is trying to expand by helping create a bounty
> program for security-related TODOs. KSPP is just one corner of
> interest in the kernel, and I'd love to know if any other maintainers
> have TODO items that they'd like to see get done (and Google would
> potentially provide bounty money for).
>
> Let me know your security wish-lists, and I'll collect them all into a
> single place. And if there is a better place than ksummit-discuss to
> reach maintainers, I'm all ears. LKML tends to mostly just serve as a
> public archive. :)
>
> Thanks!
>
> -Kees
>
> [1] http://kernsec.org/wiki/index.php/Kernel_Self_Protection_Project#Specific_TODO_Items
> [2] https://www.google.com/about/appsecurity/patch-rewards/
>
> --
> Kees Cook
> Nexus Security
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss



-- 
Andy Lutomirski
AMA Capital Management, LLC
