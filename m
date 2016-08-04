Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EBC7A71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 05:54:59 +0000 (UTC)
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2E6D419E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 05:54:59 +0000 (UTC)
Received: by mail-wm0-f50.google.com with SMTP id o80so363932301wme.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Aug 2016 22:54:59 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <CALCETrVvXWN3q41RvR1-AN86HrNGXk3xv2uneXBO98TrB3JdaA@mail.gmail.com>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	<CAGXu5j+M06pdOB7Phqg==xg4p7=9ggmZciQuGZaNTXaW=-BCbg@mail.gmail.com>
	<3aa8df3e-3705-9fd5-640c-37c0be2af561@imgtec.com>
	<CAGXu5jKZb60=3H8faOG53Aq7H3MeST7_syionmFCE2HQFOG8SA@mail.gmail.com>
	<0E98DCC5-01EE-4FA7-B6D4-72772279BDFF@arm.com>
	<CAGXu5jL085S-feY_uy68tCMZwOHcg5QPzyE0eXiJviqCwau90g@mail.gmail.com>
	<CALCETrVvXWN3q41RvR1-AN86HrNGXk3xv2uneXBO98TrB3JdaA@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
Date: Wed, 3 Aug 2016 22:54:49 -0700
Message-ID: <CAGXu5j+v7W+kySsmbpkn4NJL=oxvoa6ZFQEg0Txvz5EYOP8cUQ@mail.gmail.com>
To: Andy Lutomirski <luto@amacapital.net>
Content-Type: text/plain; charset=UTF-8
Cc: Dave Hansen <dave.hansen@linux.intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Jann Horn <jann@thejh.net>
Subject: Re: [Ksummit-discuss] [TOPIC] kernel hardening / self-protection /
	whatever
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 3, 2016 at 10:45 PM, Andy Lutomirski <luto@amacapital.net> wrote:
> On Wed, Aug 3, 2016 at 10:32 PM, Kees Cook <keescook@chromium.org> wrote:
>> On Wed, Aug 3, 2016 at 3:53 PM, Catalin Marinas <catalin.marinas@arm.com> wrote:
>>> On 1 Aug 2016, at 00:05, Kees Cook <keescook@chromium.org> wrote:
>>>> On Sun, Jul 31, 2016 at 2:55 AM, Paul Burton <paul.burton@imgtec.com> wrote:
>>>>> It would be very interesting to discuss what's needed from arch code for
>>>>> various hardening features, both those currently in mainline & those in
>>>>> development.
>>>
>>> I'm interested in such topic as well, primarily from an arm/arm64 perspective.
>>>
>>>> - Handling userspace/kernelspace memory segregation. (This is the SMAP
>>>> of x86, PAN of ARM, and just native on s390.) For architectures (or
>>>> chipsets within an architecture) that don't support unprivileged
>>>> memory access restrictions in hardware, we must find a way to emulate
>>>> it. (e.g. 32-bit ARM uses Domains, and 64-bit x86 could use PCIDs,
>>>> etc.) Keeping these regions separate is extremely important in
>>>> stopping exploitation.
>>>
>>> For arm64 ARMv8.0 (without hardware PAN), I'm going to post a patch
>>> in a week or so which emulates PAN by switching the user page table (TTBR0)
>>> to the zero page. I guess a similar approach could work for other architectures,
>>> maybe using swapper_pg_dir as the PAN page table.
>>
>> At least on x86 I've heard grumblings that it can be prohibitively
>> expensive due to TLB-flushing, but I'd still like to see an
>> implementation doing it first. :)
>
> No TLB flush needed if we use PCID.  Linus will attack you with a
> pitchfork either way, though :)

Hmm, my asbestos suit won't help me there. I will need to invest in titanium. :)

The TLB flushing way I can understand being pitchfork-worthy, though
I'm curious why a PCID implementation would be upsetting?

> It shouldn't be *that* hard to build this thing on top of my PCID
> patchset.  I need to dust that off, which I'll do right after vmap
> stacks land and I finish fsgsbase.  Sigh, so many things.

What does your PCID series do?

-Kees

-- 
Kees Cook
Brillo & Chrome OS Security
