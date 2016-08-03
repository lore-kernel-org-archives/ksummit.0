Return-Path: <alexandre.belloni@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 123A28D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 08:33:39 +0000 (UTC)
Received: from mail.free-electrons.com (down.free-electrons.com
	[37.187.137.238])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id A3B24166
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 08:33:37 +0000 (UTC)
Date: Wed, 3 Aug 2016 10:33:25 +0200
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20160803083325.GF13682@piout.net>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
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

Hi,

On 02/08/2016 at 19:58:07 -0700, Andy Lutomirski wrote :
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
> 
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
>  - Kernel initializes IMO and/or dm-verity if needed according to
> policy supplied by bootloader.
>  - Bootloader extends a PCR with the keys and policy if needed.
> 
> This should cover the chain of trust case as well as the current
> approach without needing to worry about baking keys into the kernel
> image -- after all, a compromised bootloader can already change the
> kernel image or the baked-in keys and thus do whatever it wants.
> 

There are SoCs were the ROM code is able to load a kernel image to RAM,
verify and execute it. In that case there is no bootloader involved. The
kernel then has to verify pretty much everything so I think we have to
keep a way of baking keys inside the kernel.

However, the setups I've seen until now are embedding the device tree
and the initramfs inside the kernel image so those are verified by the
ROM code.


-- 
Alexandre Belloni, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com
