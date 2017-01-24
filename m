Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A7A54B92
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Jan 2017 21:01:20 +0000 (UTC)
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D8B58214
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Jan 2017 21:01:19 +0000 (UTC)
Received: by mail-vk0-f54.google.com with SMTP id x75so120959839vke.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Jan 2017 13:01:19 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <87tw8oojv2.fsf@xmission.com>
References: <CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
	<CALCETrWOedzSo02GWr6KoGDg6FeyymGH=B-0JLOG9QZuoFap_Q@mail.gmail.com>
	<87tw8oojv2.fsf@xmission.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 24 Jan 2017 13:00:58 -0800
Message-ID: <CALCETrVtvGZ8gD=6fde-3xFVAwXxWabHxtGUb6TLNuPiO0Xnbw@mail.gmail.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset=UTF-8
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

On Tue, Jan 24, 2017 at 2:03 AM, Eric W. Biederman
<ebiederm@xmission.com> wrote:
> Andy Lutomirski <luto@amacapital.net> writes:
>
>> On Fri, Jan 20, 2017 at 2:38 PM, Kees Cook <keescook@chromium.org> wrote:
>>> Hi,
>>>
>>> I've already got various Kernel Self-Protection Project TODO items
>>> collected[1] (of varying size and complexity), but recently Google's
>>> Patch Reward Program[2] is trying to expand by helping create a bounty
>>> program for security-related TODOs. KSPP is just one corner of
>>> interest in the kernel, and I'd love to know if any other maintainers
>>> have TODO items that they'd like to see get done (and Google would
>>> potentially provide bounty money for).
>>>
>>> Let me know your security wish-lists, and I'll collect them all into a
>>> single place. And if there is a better place than ksummit-discuss to
>>> reach maintainers, I'm all ears. LKML tends to mostly just serve as a
>>> public archive. :)
>>>
>>
>> Here's another one: split up and modernize /proc.
>>
>> I'm imagining a whole series of changes:
>>
>>  - Make a sysctlfs.  You could mount it and get all the sysctls if you
>> have global privilege.  If you only have privilege relative to some
>> namespace, you could pass a mount option like -o scope=net to get just
>> sysctls that belong to the mounting process' netns.  If done
>> carefully, this should be safe for unprivileged mounting without the
>> fs_fully_visible() checks.
>
> Nope.  Because the fs_fully_visible checks are there to support a root
> policy of what can be used.  Any filesystem with content needs
> fs_fully_visible or another way for root to say no you can't access
> these files.
>
> cgroupfs gets a pass from me because we can set the number of cgroup
> namespaces to 0, and because changing it will break userspace.
>
> Besides bind if you split up proc into pieces bind mounts should be
> sufficient and you should not need to allow unprivileged users to mount
> any of the pieces of proc.
>

Let me clarify what I meant.

Currently, IIUC there are a large number of sysctls that are global to
the system and a smaller number that only affect a single namespace.
If you have global privilege, you could do:

# mount -t sysctlfs -o scope=global none /whatever

This would be disallowed entirely if you don't have global privilege.
You could also do:

# mount -t sysctlfs -o scope=net none /whatever

This would *not* require global privilege or fs_fully_visible, but it
would require ns_capable(current->nsproxy->net_ns, CAP_NET_ADMIN).
You would get a limited syctlfs that only shows sysctls that are local
to the network namespace of the mounter.

Does that make sense?

--Andy
