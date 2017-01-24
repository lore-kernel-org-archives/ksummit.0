Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A985D2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Jan 2017 02:38:26 +0000 (UTC)
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EDE8016E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Jan 2017 02:38:25 +0000 (UTC)
Received: by mail-ua0-f169.google.com with SMTP id 35so124552327uak.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 18:38:25 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
References: <CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 23 Jan 2017 18:38:04 -0800
Message-ID: <CALCETrWOedzSo02GWr6KoGDg6FeyymGH=B-0JLOG9QZuoFap_Q@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>, Djalal Harouni <tixxdz@gmail.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>
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

Here's another one: split up and modernize /proc.

I'm imagining a whole series of changes:

 - Make a sysctlfs.  You could mount it and get all the sysctls if you
have global privilege.  If you only have privilege relative to some
namespace, you could pass a mount option like -o scope=net to get just
sysctls that belong to the mounting process' netns.  If done
carefully, this should be safe for unprivileged mounting without the
fs_fully_visible() checks.

 - Teach procfs to understand mount options for real (per-superblock).
Shouldn't be that hard.

 - Make it possible to control hidepid per mount.  systemd and such
could use this to tighten up daemons.

 - Make it possible to make /proc/PID/cmdline only show argv[0] via
per-mount option or perhaps sysctl.

 - Make it possible to mount a mini-proc that doesn't have all the
non-PID stuff.  Presumably it would still have an empty directory
called sys and maybe some other minimal contents for compatibility
