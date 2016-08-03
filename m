Return-Path: <matthew.garrett@coreos.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C07DC78D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 03:32:05 +0000 (UTC)
Received: from mail-yw0-f177.google.com (mail-yw0-f177.google.com
	[209.85.161.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DE3B52A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 03:32:04 +0000 (UTC)
Received: by mail-yw0-f177.google.com with SMTP id j12so216254376ywb.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Aug 2016 20:32:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
From: Matthew Garrett <mjg59@coreos.com>
Date: Tue, 2 Aug 2016 20:32:03 -0700
Message-ID: <CAPeXnHsPpvWaTh=Lv29t22UJ8N2VduAAgozpQ_CdeH4XoYwqEQ@mail.gmail.com>
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
>  - Appeasing the Secure Boot deities.  AFAIK this specifically
> requires that we verify the kernel and its modules using a combination
> of EFI-supplied and distro keys.

Eh not quite. The rules are basically that if a Microsoft-signed
object can be used to compromise other operating systems, Microsoft
may unilaterally blacklist that object. Allowing arbitrary module
loading or arbitrary kexec clearly makes it straightforward to simply
use a signed Linux boot chain to then boot a compromised version of
any other operating system, defeating the point of Secure Boot. Distro
keys are used for module signing because that's the easiest way to
handle it (sign them during build and then discard the key), UEFI keys
are used to appease some manufacturers (they can ship their
binary-only drivers signed with a key that's in firmware) and shim
keys are used to allow users to sign their own modules. Since it's not
possible to insert any additional keys without physical access to the
system, that's good enough. It's probably the case that you could come
up with an entirely different policy that has the same property, and
that would also be entirely acceptable.

>  - Bootloader supplies public keys and policy to the kernel.

The main problem here is the lack of a standardised way of passing
data from bootloader to kernel. We can't just append a CPIO to the
initramfs because using arbitrary initramfs is a reasonable policy for
many usecases. Having a secure architecture-independent communications
channel between the bootloader and the kernel would be helpful in
various ways.

>  - Bootloader verifies the initramfs if it needs to.
>  - Bootloader verifies the command line if it needs to.
>  - Bootloader verifies the device tree if it needs to.
>
>  - Kernel verifies modules using a combination of module hashes and
> keys from bootloader.
>  - Kernel initializes IMO and/or dm-verity if needed according to
> policy supplied by bootloader.
>  - Bootloader extends a PCR with the keys and policy if needed.

Otherwise, yes, this all seems good.

> This should cover the chain of trust case as well as the current
> approach without needing to worry about baking keys into the kernel
> image -- after all, a compromised bootloader can already change the
> kernel image or the baked-in keys and thus do whatever it wants.

Yeah, the baked in keys are there out of convenience rather than out
of necessity.

> The trickier part is appeasing the Secure Boot deities.  I'm not privy
> to the internal discussions here, but I think this could be done in a
> few ways.  For example, the bootloader could ensure that the policy it
> sets is compliant.  Alternatively (since I think that some
> implementations sign the kernel image itself with a key chained to the
> MS roots), we could add a config option to enforce, in the kernel,
> that modules must match an in-tree module hash or be signed by a key
> that is built in or (optionally) chains to an EFI-supplied key.

I don't see any incompatibility between this functionality and
something that would be acceptable to any signing authority.
