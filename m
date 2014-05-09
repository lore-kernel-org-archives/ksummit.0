Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 98FB0942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:37:44 +0000 (UTC)
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D8AAF1FAA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:37:43 +0000 (UTC)
Received: by mail-vc0-f181.google.com with SMTP id ld13so5310649vcb.40
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 09 May 2014 13:37:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <536D1CCE.3060708@zytor.com>
References: <5363E8E1.9030806@zytor.com>
	<CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>
	<20140502193314.GA24108@thunk.org> <20140502194935.GA9766@redhat.com>
	<20140502204141.GB24108@thunk.org> <20140502210123.GA13536@redhat.com>
	<CA+5PVA6oTQy5j1XyQG_h6Vk1kW8UrA_j61ouPfm_kvZMQ9ZqEA@mail.gmail.com>
	<1399066024.2202.72.camel@dabdike>
	<CA+5PVA7VQzdMRuMARmAR=c6MnDg-bFg16Hgk=bCNzKmokRUAPQ@mail.gmail.com>
	<CALCETrVZJ5swLixykH_qn4K7GDDRqKkXtPeJqdM1LXToRW+uyA@mail.gmail.com>
	<20140506171807.GA20776@cloud>
	<CALCETrUDEi=Q2k_CMZGdizfUkTpObKrggP-XPsCOBndRGuX7tQ@mail.gmail.com>
	<536D1CCE.3060708@zytor.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Fri, 9 May 2014 13:37:22 -0700
Message-ID: <CALCETrVr=Tv+LyTRPg-ntTJPKtO3aQWEoDEVSwCm5RpOStkWPA@mail.gmail.com>
To: "H. Peter Anvin" <hpa@zytor.com>
Content-Type: text/plain; charset=UTF-8
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Sarah Sharp <sarah@minilop.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Fri, May 9, 2014 at 11:22 AM, H. Peter Anvin <hpa@zytor.com> wrote:
> On 05/06/2014 10:31 AM, Andy Lutomirski wrote:
>>
>> I have two main objections to "root != kernel".  The bigger is that
>> I'd like to see the security argument for it so that people can think
>> about whether it makes sense.  The smaller is that "root != kernel"
>> isn't necessarily well-defined.
>>
>> For example, should root be able to write to the filesystem from which
>> the kernel loads?  Should root be able to kexec a new kernel, if that
>> clears some key known to the current kernel in the process?  Should
>> root be able to start a KVM instance that passes essentially all
>> hardware through?  Should root be able to talk directly to the
>> system's embedded controller?  Should root be able to read all
>> physical memory?  How about reading just enough to learn the kernel's
>> semi-secret randomized addresses?  How about running perf without
>> restrictions?
>>
>> In the past, the actual security goal seems to have been "root shall
>> not be able to do anything that would anger Microsoft and/or
>> Verisign", which is far-enough removed from actual security that I
>> don't want it anywhere near my system.  But if I could have a
>> reasonable policy that "root shall not be able to persistently
>> compromise the machine", then I think this could be great.
>>
>> Note that the latter goal does not actually require that root be
>> unable to modify the running kernel.
>>
>
> The first aspect of this is that the kernel needs to *be able to* lock
> out root from select functions.  These things will be system
> configuration dependent.
>

I'm still unconvinced.  For Chrome OS-style security, I think that
root just needs to be prevented from doing anything that will
interfere with the verified boot process the next time the machine
boots.  The kernel doesn't need any particular security feature for
this: the kernel can't change the verified boot keys either.  If an
attacker controls root on a Chromebook, the attacker has already won,
at least until the next reboot.

If the idea is to have a verified boot without any hardware or
firmware support, then, yes, the kernel needs to enforce that the
verification path can't be tampered with.  But I think we're talking
about Secure Boot here, and on a correct Secure Boot implementation*,
the worst that the kernel can do is to prevent the box from booting
next time.

The best arguments I've heard so far for why the kernel needs to try
to protect itself against root are:

1. MS/Verisign demand it.

2. It's annoying to fool a user into thinking that they just booted
Some Other OS when they're really running Linux without kernel help.
NB: no one has claimed that it's impossible AFAIK, just that it's
annoyingly complicated.

I like neither of these arguments.  #1 is politics, not security, and
#2 seems like security by annoying the attacker.

To be clear, I don't object on principle to making it possible for the
kernel to defend itself against root.  But it's hard, doing it right
will require a lot of care, and I don't think it's worth doing unless
there's a good reason.  If there's a good reason that I don't know
about, please tell me!

* The recent MITRE paper suggests that very few of these exist.
That's a separate issue.

--Andy
