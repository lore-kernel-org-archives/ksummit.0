Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CADF7A58
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Jan 2017 10:07:49 +0000 (UTC)
Received: from out03.mta.xmission.com (out03.mta.xmission.com [166.70.13.233])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3F06FF3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Jan 2017 10:07:49 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: Andy Lutomirski <luto@amacapital.net>
References: <CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
	<CALCETrWOedzSo02GWr6KoGDg6FeyymGH=B-0JLOG9QZuoFap_Q@mail.gmail.com>
Date: Tue, 24 Jan 2017 23:03:29 +1300
In-Reply-To: <CALCETrWOedzSo02GWr6KoGDg6FeyymGH=B-0JLOG9QZuoFap_Q@mail.gmail.com>
	(Andy Lutomirski's message of "Mon, 23 Jan 2017 18:38:04 -0800")
Message-ID: <87tw8oojv2.fsf@xmission.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Josh Armour <jarmour@google.com>, Greg KH <gregkh@linuxfoundation.org>,
	Djalal Harouni <tixxdz@gmail.com>,
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

Andy Lutomirski <luto@amacapital.net> writes:

> On Fri, Jan 20, 2017 at 2:38 PM, Kees Cook <keescook@chromium.org> wrote:
>> Hi,
>>
>> I've already got various Kernel Self-Protection Project TODO items
>> collected[1] (of varying size and complexity), but recently Google's
>> Patch Reward Program[2] is trying to expand by helping create a bounty
>> program for security-related TODOs. KSPP is just one corner of
>> interest in the kernel, and I'd love to know if any other maintainers
>> have TODO items that they'd like to see get done (and Google would
>> potentially provide bounty money for).
>>
>> Let me know your security wish-lists, and I'll collect them all into a
>> single place. And if there is a better place than ksummit-discuss to
>> reach maintainers, I'm all ears. LKML tends to mostly just serve as a
>> public archive. :)
>>
>
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

Nope.  Because the fs_fully_visible checks are there to support a root
policy of what can be used.  Any filesystem with content needs
fs_fully_visible or another way for root to say no you can't access
these files.

cgroupfs gets a pass from me because we can set the number of cgroup
namespaces to 0, and because changing it will break userspace.

Besides bind if you split up proc into pieces bind mounts should be
sufficient and you should not need to allow unprivileged users to mount
any of the pieces of proc.

>  - Teach procfs to understand mount options for real (per-superblock).
> Shouldn't be that hard.
>
>  - Make it possible to control hidepid per mount.  systemd and such
> could use this to tighten up daemons.

How about we come up with a better answer than hidepid and kill the
hidepid option?

>  - Make it possible to make /proc/PID/cmdline only show argv[0] via
> per-mount option or perhaps sysctl.
>
>  - Make it possible to mount a mini-proc that doesn't have all the
> non-PID stuff.  Presumably it would still have an empty directory
> called sys and maybe some other minimal contents for compatibility

That would certainly be something if done carefully that could be
mounted without fs_fully_visible checks.

Eric
