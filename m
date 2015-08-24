Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4D0EBBE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 18:19:35 +0000 (UTC)
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 816D11B7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 18:19:34 +0000 (UTC)
Received: by obkg7 with SMTP id g7so120809266obk.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 11:19:33 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAGXu5jJ29HgHbQqk-+3N3ddvw2YG3ORbcFb24y8ijzX9v61V5Q@mail.gmail.com>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<alpine.LNX.2.00.1508241343430.25821@pobox.suse.cz>
	<alpine.LRH.2.20.1508242150310.27693@namei.org>
	<CAGXu5jLxzAtNPc_M+kPTZw6YqD1Op6Mvb-NHnJTewFanuVsqLQ@mail.gmail.com>
	<CALCETrViOGGjkzgNBLAc-XW7UkjQraa6t=4QQW094tfhB6Jf7Q@mail.gmail.com>
	<CAGXu5jJ29HgHbQqk-+3N3ddvw2YG3ORbcFb24y8ijzX9v61V5Q@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 24 Aug 2015 11:19:14 -0700
Message-ID: <CALCETrXG9AOWocGBWYuwCzjvKU+PQ_jWSWszdF_rk-=mWS5BJg@mail.gmail.com>
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

On Mon, Aug 24, 2015 at 11:01 AM, Kees Cook <keescook@chromium.org> wrote:
> On Mon, Aug 24, 2015 at 10:28 AM, Andy Lutomirski <luto@amacapital.net> w=
rote:
>> On Mon, Aug 24, 2015 at 10:17 AM, Kees Cook <keescook@chromium.org> wrot=
e:
>>> On Mon, Aug 24, 2015 at 4:56 AM, James Morris <jmorris@namei.org> wrote=
:
>>>> On Mon, 24 Aug 2015, Jiri Kosina wrote:
>>>>
>>>>> On Mon, 24 Aug 2015, James Morris wrote:
>>>>>
>>>>> > I'd recommend Kees Cook be involved, due to his existing efforts in
>>>>> > kernel hardening.  I think it would be good to invite one or two ex=
pert
>>>>> > security researchers in this area -- Kees would know who.  In terms=
 of
>>>
>>> Many of the folks that are good at kernel exploitation don't want to
>>> help us fix the situation. :)
>>>
>>> I'd recommend Lee Campbell, he's got a solid bit of experience from
>>> the offense side. I think we should extend an invite to spender and
>>> pageexec as well. They've been on the cutting edge of this for
>>> decades, and it would be silly not to invite them.
>>>
>>>>> > core kernel folk, I'd suggest Ingo and akpm, as a starting point.
>>>
>>> Perhaps also Linus and rmk? Some of the protections are very central
>>> to the kernel (e.g. constification, "read-mostly", segmentation
>>> through page table swaps or domains, etc). I'd also want Andy
>>> Lutomirski around, as he's got a lot of deep chipset knowledge. :)
>>>
>>
>> What is this chipset knowledge you speak of? :)
>
> You appear to enjoy fixing deep x86 madness. :)
>
>> One thing that grsecurity addresses (partially or fully?  I haven't
>> looked that closely): we have tons of static, non-const data structure
>> that contain function pointers, and we can't make them const because
>> they get filled in when things are initialized.  Grsecurity mitigates
>> this with some combination of compiler plugins and pax_open_kernel,
>
> Right. That's the constification and KERNEXEC pieces.
>
>> but we could probably come up with a more straightforward solution.
>> We could add an ro_after_init section, or we could even have a section
>> for things that are const but are writable through a special function.
>
> I don't think it would be that clean: there are many targets that
> legitimately need updating at runtime, but should be otherwise
> read-only. The idea with solving that is to use inline
> open/close_kernel calls to make them writable briefly and in a way
> that is ROP-defensive.

I really dislike open_kernel.  It's basically "turn off RO completely
-- please ROP me".  If we had a nice, conservative "poke this value
into this place that is hopefully actually a compile-time constant
address", I'd be much happier with it.

>
>>> =EF=82=98 Protect sensitive data
>>>  o Constify function pointers! (no where close to this plugin)
>>
>> As above, this would be nice.  If we did this upstream, we could do
>> even better if we outright disallowed non-const function pointers (as
>> opposed to fixing them up semi-transparently as the plugin does).
>
> I would love this. :)
>
>>>  o IDT/GDT/syscall table/etc (this is partially done, aliases are
>>> writable still)
>>
>> I don't think the RO GDT patches ever happened.
>>
>> FWIW, we can't really eliminate a writable GDT alias without killing
>> compat performance: set_thread_area rather critically depends on
>> writing to the GDT at context switch time.
>
> If that's what's needed, I am fine killing compat performance. (We
> could attempt to make this a CONFIG for those that expect to run
> compat loads for their kernels.)

We would need to change the default behavior or arch_set_fs, too,
since some 64-bit processes use that mechanism as well.  But that's
easy.

>
>>>  o Vsyscall shadow table, see sgrakkyu's remote
>>> SELinux-disabling exploit
>>> (http://sgrakkyu.antifork.org/sctp_houdini.c, luto fixed this via
>>> vsyscall emulation)
>>
>> Not done yet, because even modern binaries still have the thing
>> mapped.  We could devote two or three minutes of a KS session to
>> figuring out how to kill it off for real for modern binaries.
>
> What uses it? I can run with vsyscall=3Dnone without problems...

Nothing, but it's still mapped by default.  I want something like the
stack access flags or an arch_prctl so glibc can turn it off by
default.

--Andy
