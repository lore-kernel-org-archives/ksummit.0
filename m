Return-Path: <matthew.garrett@coreos.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 876CF955
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 17:23:46 +0000 (UTC)
Received: from mail-yw0-f182.google.com (mail-yw0-f182.google.com
	[209.85.161.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0BDB72C2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 17:23:46 +0000 (UTC)
Received: by mail-yw0-f182.google.com with SMTP id u134so234231666ywg.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Aug 2016 10:23:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALCETrUnT=fZ_d6Q-i6WPtuAKzN8KjcmqsDxV0p7p33PTqvDRw@mail.gmail.com>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
	<1470228158.2482.36.camel@HansenPartnership.com>
	<CALCETrUnT=fZ_d6Q-i6WPtuAKzN8KjcmqsDxV0p7p33PTqvDRw@mail.gmail.com>
From: Matthew Garrett <mjg59@coreos.com>
Date: Wed, 3 Aug 2016 10:23:44 -0700
Message-ID: <CAPeXnHv3-p5y=jXn1NcVVacq2LmBsX0hGz-cz21upcMq9-F1Dg@mail.gmail.com>
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

On Wed, Aug 3, 2016 at 10:04 AM, Andy Lutomirski <luto@amacapital.net> wrote:
> What's wrong with that?  In grub language, this would be approximately:
>
> linuxefi path/to/image
> linuxkeypolicy path/to/policy

Thinking about it further - there's no real problem integrating this
with a build-time key. Rather than having the public half in the
kernel, stash the public half in the packaging and then have the
signing step (that's signing the kernel anyway) also sign the key. The
bootloader verifies that the key is signed by a trusted root and
passes that on to the kernel. If we have a standardised mechanism for
the bootloader to pass this information on, it's absolutely possible
to push the root of trust down to the bootloader (and also make it
responsible for pulling any other signing keys out of EFI variables or
wherever)

> Anyway, here's a concrete proposal for a cross-arch way to pass
> trusted policy from the bootloader to the kernel: define a new
> structure:
>
> struct trusted_policy_header {
>   unsigned long size;
> };
>
> Rig up the linker script so the trusted_policy is at the very end of
> the kernel virtual address space and lives in its own ELF segment (or
> arch equivalent).  That segment will have filesize == 0 and memsize ==
> sizeof(struct trusted_policy_header).  Mark the segment so the
> bootloader knows about it.
>
> Now the bootloader can supply policy (keys and whatever else it wants)
> by simply writing it to the trusted_policy_header and beyond in
> memory.

The bootloader doesn't see the ELF object on (at least) x86?
