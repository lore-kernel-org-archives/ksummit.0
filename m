Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A8378724
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 04:34:36 +0000 (UTC)
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EEF4A17D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 04:34:35 +0000 (UTC)
Received: by mail-vk0-f53.google.com with SMTP id n129so137271406vke.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Aug 2016 21:34:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAPeXnHsPpvWaTh=Lv29t22UJ8N2VduAAgozpQ_CdeH4XoYwqEQ@mail.gmail.com>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
	<CAPeXnHsPpvWaTh=Lv29t22UJ8N2VduAAgozpQ_CdeH4XoYwqEQ@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 2 Aug 2016 21:34:14 -0700
Message-ID: <CALCETrWDvwPrYiHE41Uhpz3m=-V=zJMLSUwBgEzVho=iRv4RhQ@mail.gmail.com>
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

On Tue, Aug 2, 2016 at 8:32 PM, Matthew Garrett <mjg59@coreos.com> wrote:
> On Tue, Aug 2, 2016 at 7:58 PM, Andy Lutomirski <luto@amacapital.net> wrote:
>>  - Appeasing the Secure Boot deities.  AFAIK this specifically
>> requires that we verify the kernel and its modules using a combination
>> of EFI-supplied and distro keys.
>
> Eh not quite. The rules are basically that if a Microsoft-signed
> object can be used to compromise other operating systems, Microsoft
> may unilaterally blacklist that object. Allowing arbitrary module
> loading or arbitrary kexec clearly makes it straightforward to simply
> use a signed Linux boot chain to then boot a compromised version of
> any other operating system, defeating the point of Secure Boot.

> Distro
> keys are used for module signing because that's the easiest way to
> handle it (sign them during build and then discard the key),

With my module hashing patches, that'll be even simpler.  The kernel
image will contain a list of SHA256 hashes of in-tree .ko files and
will accept those files.

> UEFI keys
> are used to appease some manufacturers (they can ship their
> binary-only drivers signed with a key that's in firmware) and shim
> keys are used to allow users to sign their own modules.

Hmm.  Would it be okay if a physically present user could subvert it?
For example, if a physically present user typed "insecure" into a
bootloader command line and thus turned off signature verification?

>>  - Bootloader supplies public keys and policy to the kernel.
>
> The main problem here is the lack of a standardised way of passing
> data from bootloader to kernel. We can't just append a CPIO to the
> initramfs because using arbitrary initramfs is a reasonable policy for
> many usecases. Having a secure architecture-independent communications
> channel between the bootloader and the kernel would be helpful in
> various ways.

Indeed.  I wonder if we could design such a thing?  Or at least
something that requires only minimal arch-specific work.
