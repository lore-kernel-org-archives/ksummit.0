Return-Path: <matthew.garrett@coreos.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 06C6B87A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 05:16:00 +0000 (UTC)
Received: from mail-yw0-f179.google.com (mail-yw0-f179.google.com
	[209.85.161.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 31004112
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 05:15:59 +0000 (UTC)
Received: by mail-yw0-f179.google.com with SMTP id j12so217701608ywb.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Aug 2016 22:15:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALCETrWDvwPrYiHE41Uhpz3m=-V=zJMLSUwBgEzVho=iRv4RhQ@mail.gmail.com>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
	<CAPeXnHsPpvWaTh=Lv29t22UJ8N2VduAAgozpQ_CdeH4XoYwqEQ@mail.gmail.com>
	<CALCETrWDvwPrYiHE41Uhpz3m=-V=zJMLSUwBgEzVho=iRv4RhQ@mail.gmail.com>
From: Matthew Garrett <mjg59@coreos.com>
Date: Tue, 2 Aug 2016 22:15:57 -0700
Message-ID: <CAPeXnHu1NJX5rsRGYr8KaTwxiRUJQ5c5XrRwCkKTpyC4-vw6sQ@mail.gmail.com>
To: Andy Lutomirski <luto@amacapital.net>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Josh Boyer <jwboyer@fedoraproject.org>,
	Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mark Brown <broonie@sirena.org.uk>
Subject: Re: [Ksummit-discuss] [TOPIC] Secure/verified boot and roots of
	trust
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 2, 2016 at 9:34 PM, Andy Lutomirski <luto@amacapital.net> wrote:
> On Tue, Aug 2, 2016 at 8:32 PM, Matthew Garrett <mjg59@coreos.com> wrote:
>> UEFI keys
>> are used to appease some manufacturers (they can ship their
>> binary-only drivers signed with a key that's in firmware) and shim
>> keys are used to allow users to sign their own modules.
>
> Hmm.  Would it be okay if a physically present user could subvert it?
> For example, if a physically present user typed "insecure" into a
> bootloader command line and thus turned off signature verification?

A physically present user can just disable Secure Boot. Shim has
support for doing this, at which point enforcement is disabled for the
rest of the boot chain.

>>>  - Bootloader supplies public keys and policy to the kernel.
>>
>> The main problem here is the lack of a standardised way of passing
>> data from bootloader to kernel. We can't just append a CPIO to the
>> initramfs because using arbitrary initramfs is a reasonable policy for
>> many usecases. Having a secure architecture-independent communications
>> channel between the bootloader and the kernel would be helpful in
>> various ways.
>
> Indeed.  I wonder if we could design such a thing?  Or at least
> something that requires only minimal arch-specific work.

Yeah, I think in general this would be incredibly useful. There's
various things that I've ended up implementing in x86 specific ways
because there's no standard way to pass significant quantities of data
between the boot environment and the kernel proper. DeviceTree is
probably the closest we have, but it's still somewhat architecture
specific and then we're suddenly having to deal with DTB+ACPI
scenarios we haven't necessarily planned for.
