Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 01A80BF9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 17:28:44 +0000 (UTC)
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 441DC152
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 17:28:43 +0000 (UTC)
Received: by obkg7 with SMTP id g7so119518067obk.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 10:28:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAGXu5jLxzAtNPc_M+kPTZw6YqD1Op6Mvb-NHnJTewFanuVsqLQ@mail.gmail.com>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<alpine.LNX.2.00.1508241343430.25821@pobox.suse.cz>
	<alpine.LRH.2.20.1508242150310.27693@namei.org>
	<CAGXu5jLxzAtNPc_M+kPTZw6YqD1Op6Mvb-NHnJTewFanuVsqLQ@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 24 Aug 2015 10:28:23 -0700
Message-ID: <CALCETrViOGGjkzgNBLAc-XW7UkjQraa6t=4QQW094tfhB6Jf7Q@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Jiri Kosina <jkosina@suse.cz>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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
>>> > kernel hardening.  I think it would be good to invite one or two expe=
rt
>>> > security researchers in this area -- Kees would know who.  In terms o=
f
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
>

What is this chipset knowledge you speak of? :)

One thing that grsecurity addresses (partially or fully?  I haven't
looked that closely): we have tons of static, non-const data structure
that contain function pointers, and we can't make them const because
they get filled in when things are initialized.  Grsecurity mitigates
this with some combination of compiler plugins and pax_open_kernel,
but we could probably come up with a more straightforward solution.
We could add an ro_after_init section, or we could even have a section
for things that are const but are writable through a special function.

>>>
>>> I am pretty sure spender will also have a lot to tell us :p
>>
>> He actually presented at the 2010 security summit:
>> https://grsecurity.net/spender_summit.pdf
>
> This was his bullet list of things that grsecurity/PaX already does
> and that should be in mainline (with my notes in parens). He suggested
> it would take us 10 years to catch up. We're 5 years into that, with
> only a few things partially off this list:
>
> =EF=82=98 Remove infoleaks
>  o Symbol information (partial improvement via kptr_restrict)
>  o Slabinfo (partial improvement with 0400 root perms)
>  o PAX_USERCOPY (even if gcc fixed their sizeof bug, we'd be no where
> near this plugin's level of protection)
> =EF=82=98 Remove RWX from kernel (in good shape on x86, started on arm)

We still need to do something about the direct map, IIRC.  Or did we
already fix that?

> =EF=82=98 Protect sensitive data
>  o Constify function pointers! (no where close to this plugin)

As above, this would be nice.  If we did this upstream, we could do
even better if we outright disallowed non-const function pointers (as
opposed to fixing them up semi-transparently as the plugin does).

>  o IDT/GDT/syscall table/etc (this is partially done, aliases are
> writable still)

I don't think the RO GDT patches ever happened.

FWIW, we can't really eliminate a writable GDT alias without killing
compat performance: set_thread_area rather critically depends on
writing to the GDT at context switch time.

>  o Vsyscall shadow table, see sgrakkyu's remote
> SELinux-disabling exploit
> (http://sgrakkyu.antifork.org/sctp_houdini.c, luto fixed this via
> vsyscall emulation)

Not done yet, because even modern binaries still have the thing
mapped.  We could devote two or three minutes of a KS session to
figuring out how to kill it off for real for modern binaries.

>
> This is far from a comprehensive list, though. The biggest value, I
> think, would be in using KERNEXEC, UDEREF, USERCOPY, and the plugins
> for constification and integer overflow.

At the risk of poking a big elephant, I think we should do something
about perf, too.  Perf is really useful, but it's also a *huge* attack
surface.

--Andy
