Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0754994B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Mar 2017 16:26:02 +0000 (UTC)
Received: from mail-ua0-f176.google.com (mail-ua0-f176.google.com
	[209.85.217.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6114B1D1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Mar 2017 16:26:01 +0000 (UTC)
Received: by mail-ua0-f176.google.com with SMTP id 72so10486478uaf.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 07 Mar 2017 08:26:01 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAEiveUcTQK84qFNpYoET-cpSXJe0KYtnYQtp0uTPz=z0tc3W9A@mail.gmail.com>
References: <CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
	<CALCETrWOedzSo02GWr6KoGDg6FeyymGH=B-0JLOG9QZuoFap_Q@mail.gmail.com>
	<CAEiveUcTQK84qFNpYoET-cpSXJe0KYtnYQtp0uTPz=z0tc3W9A@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 7 Mar 2017 08:25:39 -0800
Message-ID: <CALCETrWwTjenAhu6NbhWz91M-UNKBgm-oLWsf1jU0HP8rA-0Vw@mail.gmail.com>
To: Djalal Harouni <tixxdz@gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: Josh Armour <jarmour@google.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Ksummit-discuss] security-related TODO items?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Mar 7, 2017 at 8:12 AM, Djalal Harouni <tixxdz@gmail.com> wrote:
>
>
> On Tue, Jan 24, 2017 at 3:38 AM, Andy Lutomirski <luto@amacapital.net>
> wrote:
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
>>
>>  - Teach procfs to understand mount options for real (per-superblock).
>> Shouldn't be that hard.
>
> I spent some time investigating this to advance in this option in order to
> improve procfs hidepid and replace that per task hidepid solution... the
> result: this proposition will break userspace in a real bad way...
>
> Since procfs is a virtual fs we always generate a new 'st_dev' device ID
> that's used to get the major and minor IDs for that device.

If necessary, we could change that for procfs and have the same st_dev
for mounts in the same pidns.
