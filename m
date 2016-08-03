Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BD6EA2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 03:24:50 +0000 (UTC)
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CBA332A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 03:24:49 +0000 (UTC)
Received: by mail-wm0-f44.google.com with SMTP id i5so316141764wmg.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Aug 2016 20:24:49 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
Date: Tue, 2 Aug 2016 20:24:47 -0700
Message-ID: <CAGXu5jK1HxWRMcFvNCUaqvxZ-8nKTdoHB7EW4o7jfCrVdDE3Zg@mail.gmail.com>
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

On Tue, Aug 2, 2016 at 7:58 PM, Andy Lutomirski <luto@amacapital.net> wrote:
> I got module hashing working.  It ended up being fairly
> straightforward.  I still need to deal with debug info and
> disentangling it from CONFIG_MODULE_SIG, but that's just a bit of
> engineering.
>
> While doing it, occurred to me that it might be worth considering a
> different way of thinking about roots of trust.
>
> When a system does a verified boot using a static root of trust (which
> should cover most of the interesting cases), we have:
>
>  - Bootloader verifies kernel
>  - Kernel verifies modules
>  - Kernel verifies firmware
>  - Kernel verifies filesystem (if using dm-verify or IMA)
>  - Kernel verifies initramfs (AFAIK no one has worked out the details)
>  - Kernel verifies device tree (seems messy to get right)
>  - Kernel should maybe verify the command line (?)

Your proposal is similar to what Chrome OS does for its static root of
trust. Specifically it has no initramfs (though the methodology could
be trivially extended to include it).

- Bootloader has public keys baked in
- Bootloader verifies the "kernel block", which contains:
  - Kernel
  - Kernel command line
  - Device Tree
- The kernel mounts read-only root filesystem on dm-verity using
kernel command line (which has the top-level hash)
- Modules and firmware are restricted with LoadPin to come off the
root filesystem

This way there are no keys in the kernel at all, and everything is
done in the bootloader.

Chrome OS cheats in that the OS is image-based, so the root filesystem
can always be read-only. (It does upgrades in an alternate partition
and the bootloader switches between partitions after upgrade at the
next boot.) However, I don't think it's too hard to extend the basic
idea to a "normal" distro, it'd just need to have some smarts to deal
with a "kernel block" and the partition that holds modules, etc.

> The kernel does its verification with a combination of keys baked into
> the kernel image and keys supplied by Secure Boot firmware (if
> enabled, which I think is only the case out-of-tree).
>
> By doing all this, we're accomplishing two goals:
>
>  - Establishing a chain of trust rooted in or above the bootloader
>  - Appeasing the Secure Boot deities.  AFAIK this specifically
> requires that we verify the kernel and its modules using a combination
> of EFI-supplied and distro keys.
>
> To hold all the pieces together, we've established a rather ad-hoc and
> complicated way of baking keys into the kernel (see the contents of
> the certs/ directory).
>
> I think we've made our lives considerably more complicated than they
> need to be with the approach to keying that we're taking.
>
> I'd like to discuss whether we can move a lot more of the keying into
> the bootloader.  I'm envisioning:
>
>  - Bootloader supplies public keys and policy to the kernel.
>  - Bootloader verifies the initramfs if it needs to.
>  - Bootloader verifies the command line if it needs to.
>  - Bootloader verifies the device tree if it needs to.
>  - Kernel verifies modules using a combination of module hashes and
> keys from bootloader.
>  - Kernel initializes IMA and/or dm-verity if needed according to
> policy supplied by bootloader.

Even in this case, modules could be pinned to a known-good partition
without module signing. (And I would point out that without LoadPin or
IMA doing verification, firmware loading doesn't have a way to be
known-good.)

>  - Bootloader extends a PCR with the keys and policy if needed.
>
> This should cover the chain of trust case as well as the current
> approach without needing to worry about baking keys into the kernel
> image -- after all, a compromised bootloader can already change the
> kernel image or the baked-in keys and thus do whatever it wants.
>
> We get to simplify EFI-based keying: the bootloader or an intermediate
> EFI application could pull whatever keys it likes from EFI variables
> and feed them to the kernel.

I would love to just see coreboot used everywhere. UEFI is a giant
code base and hasn't been quick to embrace best-practices for
defensive security (stack canaries? W^X memory?). I know it's probably
a pipe-dream, but coreboot seems so much saner to me. (I have no
interest in dual-booting Windows, e.g.)

> The trickier part is appeasing the Secure Boot deities.  I'm not privy
> to the internal discussions here, but I think this could be done in a
> few ways.  For example, the bootloader could ensure that the policy it
> sets is compliant.  Alternatively (since I think that some
> implementations sign the kernel image itself with a key chained to the
> MS roots), we could add a config option to enforce, in the kernel,
> that modules must match an in-tree module hash or be signed by a key
> that is built in or (optionally) chains to an EFI-supplied key.
>
> (NB: I think that the Secure Boot rules are silly, but that's beside
> the point.  I would prefer that the kernel honor them in the least
> silly way possible.)

-Kees

-- 
Kees Cook
Brillo & Chrome OS Security
