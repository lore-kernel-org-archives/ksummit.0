Return-Path: <adobriyan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8ED06A87
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Jan 2017 10:38:31 +0000 (UTC)
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F2F71AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Jan 2017 10:38:30 +0000 (UTC)
Received: by mail-wm0-f67.google.com with SMTP id r126so33640347wmr.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Jan 2017 02:38:30 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CALCETrWOedzSo02GWr6KoGDg6FeyymGH=B-0JLOG9QZuoFap_Q@mail.gmail.com>
References: <CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
	<CALCETrWOedzSo02GWr6KoGDg6FeyymGH=B-0JLOG9QZuoFap_Q@mail.gmail.com>
From: Alexey Dobriyan <adobriyan@gmail.com>
Date: Tue, 24 Jan 2017 13:38:28 +0300
Message-ID: <CACVxJT8jQFr9w+s6DS2LA0_ia6qg7UyHyb8vK0BsYLKhVwzbzA@mail.gmail.com>
To: Andy Lutomirski <luto@amacapital.net>
Content-Type: text/plain; charset=UTF-8
Cc: Josh Armour <jarmour@google.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Linux Kernel <linux-kernel@vger.kernel.org>,
	Djalal Harouni <tixxdz@gmail.com>
Subject: Re: [Ksummit-discuss] security-related TODO items?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

        [add linux-kernel]

On Tue, Jan 24, 2017 at 5:38 AM, Andy Lutomirski <luto@amacapital.net> wrote:
> Here's another one: split up and modernize /proc.
>
> I'm imagining a whole series of changes:
>
>  - Make a sysctlfs.  You could mount it and get all the sysctls if you
> have global privilege.  If you only have privilege relative to some
> namespace, you could pass a mount option like -o scope=net to get just
> sysctls that belong to the mounting process' netns.  If done
> carefully, this should be safe for unprivileged mounting without the
> fs_fully_visible() checks.
>
>  - Teach procfs to understand mount options for real (per-superblock).
> Shouldn't be that hard.
>
>  - Make it possible to control hidepid per mount.  systemd and such
> could use this to tighten up daemons.
>
>  - Make it possible to make /proc/PID/cmdline only show argv[0] via
> per-mount option or perhaps sysctl.
>
>  - Make it possible to mount a mini-proc that doesn't have all the
> non-PID stuff.  Presumably it would still have an empty directory
> called sys and maybe some other minimal contents for compatibility

Yes, please!

mount -t sysctl ...
mount -t proc-pid ...
mount -t proc-kitchen-sink ...
