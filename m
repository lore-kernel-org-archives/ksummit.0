Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EA4008B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 22:35:50 +0000 (UTC)
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 791A91FA9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 22:35:49 +0000 (UTC)
Received: by mail-vc0-f169.google.com with SMTP id im17so6281036vcb.28
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 02 May 2014 15:35:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+5PVA7VQzdMRuMARmAR=c6MnDg-bFg16Hgk=bCNzKmokRUAPQ@mail.gmail.com>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>
	<1399051229.2202.49.camel@dabdike> <20140502173309.GB725@redhat.com>
	<CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>
	<5363E8E1.9030806@zytor.com>
	<CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>
	<20140502193314.GA24108@thunk.org> <20140502194935.GA9766@redhat.com>
	<20140502204141.GB24108@thunk.org> <20140502210123.GA13536@redhat.com>
	<CA+5PVA6oTQy5j1XyQG_h6Vk1kW8UrA_j61ouPfm_kvZMQ9ZqEA@mail.gmail.com>
	<1399066024.2202.72.camel@dabdike>
	<CA+5PVA7VQzdMRuMARmAR=c6MnDg-bFg16Hgk=bCNzKmokRUAPQ@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Fri, 2 May 2014 15:35:28 -0700
Message-ID: <CALCETrVZJ5swLixykH_qn4K7GDDRqKkXtPeJqdM1LXToRW+uyA@mail.gmail.com>
To: Josh Boyer <jwboyer@fedoraproject.org>
Content-Type: text/plain; charset=UTF-8
Cc: Sarah Sharp <sarah@minilop.net>, ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 2, 2014 at 2:39 PM, Josh Boyer <jwboyer@fedoraproject.org> wrote:
> On Fri, May 2, 2014 at 5:27 PM, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
>> On Fri, 2014-05-02 at 17:19 -0400, Josh Boyer wrote:
>>> On Fri, May 2, 2014 at 5:01 PM, Dave Jones <davej@redhat.com> wrote:
>>> > On Fri, May 02, 2014 at 04:41:41PM -0400, Theodore Ts'o wrote:
>>> >
>>> >  > And I think we can also further break this down into the classes of
>>> >  > code which require root privs (i.e., like kexec), and those which can
>>> >  > be used by any userid.
>>> >
>>> > In the brave new world of secure boot, we kind of have to care about
>>> > even the root cases now too [*], but I agree in the general case.
>>>
>>> Speaking of that... is it worth my time to propose a "What to do about
>>> the secure_modules/trusted_kernel/whatever patch set that distros are
>>> carrying to support Secure Boot?  I thought we had agreement and a
>>> path forward at LPC last year, but things seem to have gotten derailed
>>> again.
>>
>> Would you believe we're just discussing with the distros how we might
>> re-engineer the Linux secure boot process.  Unfortunately the details
>
> I would believe it.
>
>> depend on a UEFI forum proposal that are UEFI confidential at this time,
>> but you can probably pick them up from Peter Jones, since you're a Red
>> Hat employee.  One of the side effects of this, if it happens, will be
>
> OK.
>
>> to separate Linux secure boot policy from Microsoft's binary signing
>> requirements which might take some of the heat out of the arguments
>> about which parts of the patch are to please microsoft and refocus the
>> debate towards how we make better use of secure boot.  I'll try and
>> ensure that either the proposals are public by KS or that we have
>> permission to share the details.
>
> The objectionable parts having to do with signing aren't even in the
> patchset Matthew has posted.  That's the initial set he tried to get
> pulled in and failed.  If the proposal drastically changes that
> approach I'd be surprised (maybe pleasantly).

FWIW, I really don't like the approach where we say that the kernel
must be inviolate but that user code can do whatever it likes as long
as the kernel isn't compromised.  This may be needed to comply with
current MS/UEFI policy, but I think it largely misses the point wrt
actual security.

If the policy can change, then that might be a huge win.

--Andy
