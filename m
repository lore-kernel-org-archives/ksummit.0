Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 21AEF323
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 16:35:41 +0000 (UTC)
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DCEF31C8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 16:35:38 +0000 (UTC)
Received: by lagw2 with SMTP id w2so72144856lag.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 09:35:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1438100102.26913.183.camel@infradead.org>
References: <20436.1438090619@warthog.procyon.org.uk>
	<1438096213.5441.147.camel@HansenPartnership.com>
	<CALCETrVbTEf0rKKYOmNoHB2n0MpSgpY8jvOGXPnV=+KPxEpFKw@mail.gmail.com>
	<1438097471.5441.152.camel@HansenPartnership.com>
	<CALCETrVPf9gN92iC+vtKOOBY0GpzAnZuKpEMMgZzU-uXAM1qMQ@mail.gmail.com>
	<1438099839.5441.165.camel@HansenPartnership.com>
	<1438100102.26913.183.camel@infradead.org>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 28 Jul 2015 09:35:17 -0700
Message-ID: <CALCETrWwMrd-ntkjiYf0-E+YjeVfM-sT7W_PFXr-mOPc268Vbw@mail.gmail.com>
To: David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Luis Rodriguez <mcgrof@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Kyle McMartin <jkkm@jkkm.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 28, 2015 at 9:15 AM, David Woodhouse <dwmw2@infradead.org> wrote:
> On Tue, 2015-07-28 at 09:10 -0700, James Bottomley wrote:
>>
>> > Sure, but we shouldn't stick the USB vendor's key into the system
>> > keyring.  I'm fine with having it in the kernel or in some database,
>> > though.
>>
>> Actually, I don't think we should have a general system keyring for
>> firmware.  We need driver specific ones, so the USB vendor key is *only*
>> trusted for that particular driver.  Putting vendor keys into our
>> general keyring would be a recipe for inviting abuse.
>
> We need both.
>
> Where a firmware is signed by the vendor, the request_firmware() call
> itself can provide the hash of the acceptable signing cert. (And we'll
> want to handle the firmware we get with MS AuthentiCode signatures on
> them in a separate .cat file, as discussed.)
>
> In the case where firmware *doesn't* have a valid signature that comes
> all the way from the vendor, a signature that just says "this is what
> was in the linux-firmware.git tree" is better than nothing, and *that*
> cert can be in the system trusted keyring.
>

I'd really like to replace "the system trusted keyring" with
purpose-specific lists of keys.  There are keys we trust to sign
modules, there are keys we trust to sign kexec things, there will be
keys to trust to sign firmware for any device, etc.

Even now, I think we're conflating keys that we shouldn't conflate.
Arguably the keys for kexec and the keys for modules should be
different, because loading a module really gives you the right to do
anything, as does loading a kexec image without poking the TPM PCRs,
but I think we might want keys that can only sign kexec images that
are loaded after poking PCRs.  Crash kernels are in the latter
category.

--Andy
