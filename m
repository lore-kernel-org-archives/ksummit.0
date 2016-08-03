Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2FA51954
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 17:29:53 +0000 (UTC)
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9DEC72C8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 17:29:52 +0000 (UTC)
Received: by mail-vk0-f50.google.com with SMTP id w127so151503425vkh.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Aug 2016 10:29:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAPeXnHv3-p5y=jXn1NcVVacq2LmBsX0hGz-cz21upcMq9-F1Dg@mail.gmail.com>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
	<1470228158.2482.36.camel@HansenPartnership.com>
	<CALCETrUnT=fZ_d6Q-i6WPtuAKzN8KjcmqsDxV0p7p33PTqvDRw@mail.gmail.com>
	<CAPeXnHv3-p5y=jXn1NcVVacq2LmBsX0hGz-cz21upcMq9-F1Dg@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 3 Aug 2016 10:29:31 -0700
Message-ID: <CALCETrWahLpXpRxoCfaWYe=X7DyjLDX6WXEVNU_=xL9bBOBsRw@mail.gmail.com>
To: Matthew Garrett <mjg59@coreos.com>
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

On Wed, Aug 3, 2016 at 10:23 AM, Matthew Garrett <mjg59@coreos.com> wrote:
> On Wed, Aug 3, 2016 at 10:04 AM, Andy Lutomirski <luto@amacapital.net> wrote:
>> What's wrong with that?  In grub language, this would be approximately:
>>
>> linuxefi path/to/image
>> linuxkeypolicy path/to/policy
>
> Thinking about it further - there's no real problem integrating this
> with a build-time key. Rather than having the public half in the
> kernel, stash the public half in the packaging and then have the
> signing step (that's signing the kernel anyway) also sign the key. The
> bootloader verifies that the key is signed by a trusted root and
> passes that on to the kernel. If we have a standardised mechanism for
> the bootloader to pass this information on, it's absolutely possible
> to push the root of trust down to the bootloader (and also make it
> responsible for pulling any other signing keys out of EFI variables or
-- 
Andy Lutomirski
AMA Capital Management, LLC
> wherever)
>
>> Anyway, here's a concrete proposal for a cross-arch way to pass
>> trusted policy from the bootloader to the kernel: define a new
>> structure:
>>
>> struct trusted_policy_header {
>>   unsigned long size;
>> };
>>
>> Rig up the linker script so the trusted_policy is at the very end of
>> the kernel virtual address space and lives in its own ELF segment (or
>> arch equivalent).  That segment will have filesize == 0 and memsize ==
>> sizeof(struct trusted_policy_header).  Mark the segment so the
>> bootloader knows about it.
>>
>> Now the bootloader can supply policy (keys and whatever else it wants)
>> by simply writing it to the trusted_policy_header and beyond in
>> memory.
>
> The bootloader doesn't see the ELF object on (at least) x86?

:(

On the other hand, x86's bzImage appears to be an ELF object too, and
maybe it could learn to propagate the policy segment.  In other words,
bzImage would speak the same protocol, and the x86 stub that hands off
from bzImage to vmlinux could copy the data over.  This gets a bit
nasty if we want to do embedding because it's also a PE file and
probably a few other things, so there would be lots of headers to
update.

-- 
Andy Lutomirski
AMA Capital Management, LLC
