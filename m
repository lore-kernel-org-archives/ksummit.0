Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BE321BC9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 17:17:06 +0000 (UTC)
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2FD7AA7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 17:17:06 +0000 (UTC)
Received: by iodb91 with SMTP id b91so156048592iod.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 10:17:05 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <alpine.LRH.2.20.1508242150310.27693@namei.org>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<alpine.LNX.2.00.1508241343430.25821@pobox.suse.cz>
	<alpine.LRH.2.20.1508242150310.27693@namei.org>
Date: Mon, 24 Aug 2015 10:17:05 -0700
Message-ID: <CAGXu5jLxzAtNPc_M+kPTZw6YqD1Op6Mvb-NHnJTewFanuVsqLQ@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: James Morris <jmorris@namei.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Jiri Kosina <jkosina@suse.cz>, ksummit-discuss@lists.linuxfoundation.org,
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

On Mon, Aug 24, 2015 at 4:56 AM, James Morris <jmorris@namei.org> wrote:
> On Mon, 24 Aug 2015, Jiri Kosina wrote:
>
>> On Mon, 24 Aug 2015, James Morris wrote:
>>
>> > I'd recommend Kees Cook be involved, due to his existing efforts in
>> > kernel hardening.  I think it would be good to invite one or two exper=
t
>> > security researchers in this area -- Kees would know who.  In terms of

Many of the folks that are good at kernel exploitation don't want to
help us fix the situation. :)

I'd recommend Lee Campbell, he's got a solid bit of experience from
the offense side. I think we should extend an invite to spender and
pageexec as well. They've been on the cutting edge of this for
decades, and it would be silly not to invite them.

>> > core kernel folk, I'd suggest Ingo and akpm, as a starting point.

Perhaps also Linus and rmk? Some of the protections are very central
to the kernel (e.g. constification, "read-mostly", segmentation
through page table swaps or domains, etc). I'd also want Andy
Lutomirski around, as he's got a lot of deep chipset knowledge. :)

>>
>> I am pretty sure spender will also have a lot to tell us :p
>
> He actually presented at the 2010 security summit:
> https://grsecurity.net/spender_summit.pdf

This was his bullet list of things that grsecurity/PaX already does
and that should be in mainline (with my notes in parens). He suggested
it would take us 10 years to catch up. We're 5 years into that, with
only a few things partially off this list:

=EF=82=98 Remove infoleaks
 o Symbol information (partial improvement via kptr_restrict)
 o Slabinfo (partial improvement with 0400 root perms)
 o PAX_USERCOPY (even if gcc fixed their sizeof bug, we'd be no where
near this plugin's level of protection)
=EF=82=98 Remove RWX from kernel (in good shape on x86, started on arm)
=EF=82=98 Protect sensitive data
 o Constify function pointers! (no where close to this plugin)
 o IDT/GDT/syscall table/etc (this is partially done, aliases are
writable still)
 o Vsyscall shadow table, see sgrakkyu's remote
SELinux-disabling exploit
(http://sgrakkyu.antifork.org/sctp_houdini.c, luto fixed this via
vsyscall emulation)
=EF=82=98Protect against invalid userland memory
accesses in general (SMEP and SMAP on x86 get us this, but it can be
emulated or done differently e.g. ARM domains)
=EF=82=98Make refcount overflows unexploitable (nothing done on this front)
 o Currently equivalent to use-after-free
=EF=82=98kmalloc(sizeof(somestruct) * attacker_len) (some partial improveme=
nts
here to replace this anti-pattern manually)
 o See recent ethtool get_rxnfc() vulnerability
=EF=82=98Basically, secure the kernel! Your super finegrained
security systems will thank you

This is far from a comprehensive list, though. The biggest value, I
think, would be in using KERNEXEC, UDEREF, USERCOPY, and the plugins
for constification and integer overflow.

> I'm not sure he'd be interested in working with us on this, though.

As I understand him, he's quite binary about his methods: either it's
done totally right, or it's not worth doing at all. With that in mind,
I think his position is clear, even if he's rather prickly. :)

-Kees

--=20
Kees Cook
Chrome OS Security
