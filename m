Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 11AFFD8D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 20:51:07 +0000 (UTC)
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5A11D14C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 20:51:06 +0000 (UTC)
Received: by igfj19 with SMTP id j19so21846424igf.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 13:51:05 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <CAGXu5jLxzAtNPc_M+kPTZw6YqD1Op6Mvb-NHnJTewFanuVsqLQ@mail.gmail.com>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<alpine.LNX.2.00.1508241343430.25821@pobox.suse.cz>
	<alpine.LRH.2.20.1508242150310.27693@namei.org>
	<CAGXu5jLxzAtNPc_M+kPTZw6YqD1Op6Mvb-NHnJTewFanuVsqLQ@mail.gmail.com>
Date: Wed, 26 Aug 2015 13:51:04 -0700
Message-ID: <CAGXu5jKLd=9y2=r21fKrN9tK6=TCPBqzZgBiqWqOqYnw5uj2tA@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: James Morris <jmorris@namei.org>
Content-Type: text/plain; charset=UTF-8
Cc: Jiri Kosina <jkosina@suse.cz>, Matthew Garrett <mjg59@coreos.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Emily Ratliff <eratliff@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 24, 2015 at 10:17 AM, Kees Cook <keescook@chromium.org> wrote:
> On Mon, Aug 24, 2015 at 4:56 AM, James Morris <jmorris@namei.org> wrote:
>> On Mon, 24 Aug 2015, Jiri Kosina wrote:
>>
>>> On Mon, 24 Aug 2015, James Morris wrote:
>>>
>>> > I'd recommend Kees Cook be involved, due to his existing efforts in
>>> > kernel hardening.  I think it would be good to invite one or two expert
>>> > security researchers in this area -- Kees would know who.  In terms of
>
> Many of the folks that are good at kernel exploitation don't want to
> help us fix the situation. :)
>
> I'd recommend Lee Campbell, he's got a solid bit of experience from
> the offense side. I think we should extend an invite to spender and
> pageexec as well. They've been on the cutting edge of this for
> decades, and it would be silly not to invite them.
>
>>> > core kernel folk, I'd suggest Ingo and akpm, as a starting point.
>
> Perhaps also Linus and rmk? Some of the protections are very central
> to the kernel (e.g. constification, "read-mostly", segmentation
> through page table swaps or domains, etc). I'd also want Andy
> Lutomirski around, as he's got a lot of deep chipset knowledge. :)

I think another valuable developer to invite would be Matthew Garrett.
He's been looking at hardening the line between root and kernel for a
while now.

-Kees

-- 
Kees Cook
Chrome OS Security
