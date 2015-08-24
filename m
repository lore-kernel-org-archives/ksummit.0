Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 241E7B37
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 18:01:10 +0000 (UTC)
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4DEC2153
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 18:01:09 +0000 (UTC)
Received: by iodb91 with SMTP id b91so157549676iod.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 11:01:08 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <CALCETrViOGGjkzgNBLAc-XW7UkjQraa6t=4QQW094tfhB6Jf7Q@mail.gmail.com>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<alpine.LNX.2.00.1508241343430.25821@pobox.suse.cz>
	<alpine.LRH.2.20.1508242150310.27693@namei.org>
	<CAGXu5jLxzAtNPc_M+kPTZw6YqD1Op6Mvb-NHnJTewFanuVsqLQ@mail.gmail.com>
	<CALCETrViOGGjkzgNBLAc-XW7UkjQraa6t=4QQW094tfhB6Jf7Q@mail.gmail.com>
Date: Mon, 24 Aug 2015 11:01:08 -0700
Message-ID: <CAGXu5jJ29HgHbQqk-+3N3ddvw2YG3ORbcFb24y8ijzX9v61V5Q@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: Andy Lutomirski <luto@amacapital.net>
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

On Mon, Aug 24, 2015 at 10:28 AM, Andy Lutomirski <luto@amacapital.net> wro=
te:
> On Mon, Aug 24, 2015 at 10:17 AM, Kees Cook <keescook@chromium.org> wrote=
:
>> On Mon, Aug 24, 2015 at 4:56 AM, James Morris <jmorris@namei.org> wrote:
>>> On Mon, 24 Aug 2015, Jiri Kosina wrote:
>>>
>>>> On Mon, 24 Aug 2015, James Morris wrote:
>>>>
>>>> > I'd recommend Kees Cook be involved, due to his existing efforts in
>>>> > kernel hardening.  I think it would be good to invite one or two exp=
ert
>>>> > security researchers in this area -- Kees would know who.  In terms =
of
>>
>> Many of the folks that are good at kernel exploitation don't want to
>> help us fix the situation. :)
>>
>> I'd recommend Lee Campbell, he's got a solid bit of experience from
>> the offense side. I think we should extend an invite to spender and
>> pageexec as well. They've been on the cutting edge of this for
>> decades, and it would be silly not to invite them.
>>
>>>> > core kernel folk, I'd suggest Ingo and akpm, as a starting point.
>>
>> Perhaps also Linus and rmk? Some of the protections are very central
>> to the kernel (e.g. constification, "read-mostly", segmentation
>> through page table swaps or domains, etc). I'd also want Andy
>> Lutomirski around, as he's got a lot of deep chipset knowledge. :)
>>
>
> What is this chipset knowledge you speak of? :)

You appear to enjoy fixing deep x86 madness. :)

> One thing that grsecurity addresses (partially or fully?  I haven't
> looked that closely): we have tons of static, non-const data structure
> that contain function pointers, and we can't make them const because
> they get filled in when things are initialized.  Grsecurity mitigates
> this with some combination of compiler plugins and pax_open_kernel,

Right. That's the constification and KERNEXEC pieces.

> but we could probably come up with a more straightforward solution.
> We could add an ro_after_init section, or we could even have a section
> for things that are const but are writable through a special function.

I don't think it would be that clean: there are many targets that
legitimately need updating at runtime, but should be otherwise
read-only. The idea with solving that is to use inline
open/close_kernel calls to make them writable briefly and in a way
that is ROP-defensive.

>>>>
>>>> I am pretty sure spender will also have a lot to tell us :p
>>>
>>> He actually presented at the 2010 security summit:
>>> https://grsecurity.net/spender_summit.pdf
>>
>> This was his bullet list of things that grsecurity/PaX already does
>> and that should be in mainline (with my notes in parens). He suggested
>> it would take us 10 years to catch up. We're 5 years into that, with
>> only a few things partially off this list:
>>
>> =EF=82=98 Remove infoleaks
>>  o Symbol information (partial improvement via kptr_restrict)
>>  o Slabinfo (partial improvement with 0400 root perms)
>>  o PAX_USERCOPY (even if gcc fixed their sizeof bug, we'd be no where
>> near this plugin's level of protection)
>> =EF=82=98 Remove RWX from kernel (in good shape on x86, started on arm)
>
> We still need to do something about the direct map, IIRC.  Or did we
> already fix that?

We have a lot of targets still, but we're headed (slowly) in the right
direction.

>> =EF=82=98 Protect sensitive data
>>  o Constify function pointers! (no where close to this plugin)
>
> As above, this would be nice.  If we did this upstream, we could do
> even better if we outright disallowed non-const function pointers (as
> opposed to fixing them up semi-transparently as the plugin does).

I would love this. :)

>>  o IDT/GDT/syscall table/etc (this is partially done, aliases are
>> writable still)
>
> I don't think the RO GDT patches ever happened.
>
> FWIW, we can't really eliminate a writable GDT alias without killing
> compat performance: set_thread_area rather critically depends on
> writing to the GDT at context switch time.

If that's what's needed, I am fine killing compat performance. (We
could attempt to make this a CONFIG for those that expect to run
compat loads for their kernels.)

>>  o Vsyscall shadow table, see sgrakkyu's remote
>> SELinux-disabling exploit
>> (http://sgrakkyu.antifork.org/sctp_houdini.c, luto fixed this via
>> vsyscall emulation)
>
> Not done yet, because even modern binaries still have the thing
> mapped.  We could devote two or three minutes of a KS session to
> figuring out how to kill it off for real for modern binaries.

What uses it? I can run with vsyscall=3Dnone without problems...

>> This is far from a comprehensive list, though. The biggest value, I
>> think, would be in using KERNEXEC, UDEREF, USERCOPY, and the plugins
>> for constification and integer overflow.
>
> At the risk of poking a big elephant, I think we should do something
> about perf, too.  Perf is really useful, but it's also a *huge* attack
> surface.

No disagreement from me.

-Kees

--=20
Kees Cook
Chrome OS Security
