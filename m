Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F3F0B723
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 22:09:57 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D4B231F3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 22:09:56 +0000 (UTC)
Message-ID: <1470262192.2858.11.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 03 Aug 2016 18:09:52 -0400
In-Reply-To: <CALCETrUnT=fZ_d6Q-i6WPtuAKzN8KjcmqsDxV0p7p33PTqvDRw@mail.gmail.com>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
	<1470228158.2482.36.camel@HansenPartnership.com>
	<CALCETrUnT=fZ_d6Q-i6WPtuAKzN8KjcmqsDxV0p7p33PTqvDRw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Jason Cooper <jason@lakedaemon.net>,
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

On Wed, 2016-08-03 at 10:04 -0700, Andy Lutomirski wrote:
> On Wed, Aug 3, 2016 at 5:42 AM, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > On Tue, 2016-08-02 at 19:58 -0700, Andy Lutomirski wrote:
> > > I got module hashing working.  It ended up being fairly
> > > straightforward.  I still need to deal with debug info and
> > > disentangling it from CONFIG_MODULE_SIG, but that's just a bit of
> > > engineering.
> > > 
> > > While doing it, occurred to me that it might be worth considering
> > > a
> > > different way of thinking about roots of trust.
> > > 
> > > When a system does a verified boot using a static root of trust
> > > (which should cover most of the interesting cases), we have:
> > > 
> > >  - Bootloader verifies kernel
> > >  - Kernel verifies modules
> > >  - Kernel verifies firmware
> > >  - Kernel verifies filesystem (if using dm-verify or IMA)
> > >  - Kernel verifies initramfs (AFAIK no one has worked out the
> > > details)
> > 
> > Measured boot has, but we don't have this in secure boot yet.
> > 
> > >  - Kernel verifies device tree (seems messy to get right)
> > >  - Kernel should maybe verify the command line (?)
> > 
> > Yes, we really should.  Again, measured boot does this but we
> > currently
> > don't with secure boot.
> 
> It's not really clear to me that we need it for secure boot.  We get
> it for free with real verified boot a la Chromium -- the bootloader
> and its configuration is trusted.
> 
> > 
> > > The kernel does its verification with a combination of keys baked
> > > into the kernel image and keys supplied by Secure Boot firmware
> > > (if
> > > enabled, which I think is only the case out-of-tree).
> > > 
> > > By doing all this, we're accomplishing two goals:
> > > 
> > >  - Establishing a chain of trust rooted in or above the
> > > bootloader
> > >  - Appeasing the Secure Boot deities.  AFAIK this specifically
> > > requires that we verify the kernel and its modules using a
> > > combination of EFI-supplied and distro keys.
> > 
> > There's nothing really to appease here.  The initial fears were
> > grounded in how strictly Microsoft would blacklist something that
> > was a
> > threat to windows.  In practice there have been no blacklists of
> > linux
> > loaders (yet).
> > 
> > However, it is for us to try to root the system trust in something
> > and
> > we have two use cases:
> > 
> >    1. The shim use case where we pivot away from the default root
> > of trust
> >       (the Microsoft one) to a different Linux one stored in the
> > MokList
> >       variables
> >    2. an owned system where the user has replaced the PK and the
> > roots of
> >       trust are in the secure boot variables.
> > 
> > The question we really want to ask is how far should the initial
> > root
> > of trust (either 1 or 2 above) be used to verify the system before
> > giving way to alternate pivots?  Our initial pivot in 1 effectively
> > drops the MS root (although if you're doing 2 you keep the secure
> > boot
> > root).  I think it's reasonable to verify the kernel, initrd and
> > command line through the same root we used for the bootloader.  But
> > I'm
> > afraid I think the true answer is a policy question.  I can see
> > some
> > people who would want this trust baked into the system immutable
> > keyring and I can also see that some people would really not want
> > this
> > because they want to pivot the root of trust again.
> > 
> 
> What I'm arguing for is moving that pivot earlier and stopping
> worrying about baking roots of trust into the kernel image.  If we
> just decide that we're going to trust the bootloader (or some other
> pre-kernel code) in some well-defined way, then this dilemma goes
> away.  If you want to require signatures by a static key, bake that
> key into the *bootloader* instead of the kernel.  If you want to
> pivot, make the bootloader (or shim or whatever) do the pivoting.
> 
> Then the kernel can simply stop worrying about what is essentially a
> policy decision.  The kernel can receive a key from the bootloader
> and
> accept modules and such that are signed by that key.
> 
> I think the only hard parts are establishing the communication
> channel
> from the bootloader to the kernel (which various people probably want
> anyway) and defining what happens when the in-kernel EFI stub is
> used.
> 
> > > To hold all the pieces together, we've established a rather ad
> > > -hoc
> > > and complicated way of baking keys into the kernel (see the
> > > contents
> > > of the certs/ directory).
> > > 
> > > I think we've made our lives considerably more complicated than
> > > they
> > > need to be with the approach to keying that we're taking.
> > > 
> > > I'd like to discuss whether we can move a lot more of the keying
> > > into
> > > the bootloader.  I'm envisioning:
> > > 
> > >  - Bootloader supplies public keys and policy to the kernel.
> > >  - Bootloader verifies the initramfs if it needs to.
> > >  - Bootloader verifies the command line if it needs to.
> > >  - Bootloader verifies the device tree if it needs to.
> > 
> > Agreed.
> > 
> > >  - Kernel verifies modules using a combination of module hashes
> > > and
> > > keys from bootloader.
> > 
> > Hm, too strict: third party modules would then need a third party
> > key
> > in the bootloader.
> 
> What's wrong with that?  In grub language, this would be
> approximately:
> 
> linuxefi path/to/image
> linuxkeypolicy path/to/policy

Two problems:

   1. We have to talk to grub people.  They don't seem to agree over these
      type of extensions, which is why the uefi signature stuff is passed
      through as a separate patch in the distros.
   2. We now have to specify the policy somehow, so we're inventing a
      policy language.

> and the bootloader can presumably verify the policy file in the same
> way that it verifies the image itself.

So a signature is part of this?  OK.

> > 
> > >  - Kernel initializes IMO and/or dm-verity if needed according to
> > > policy supplied by bootloader.
> > >  - Bootloader extends a PCR with the keys and policy if needed.
> > 
> > The rest of this looks nice (particularly the PCR part, which 
> > allows us to seal TPM stuff to proof the boot sequence executed
> > properly).
> > 
> > The bit you're missing is how the policy is communicated (more on 
> > this below).
> > 
> > > This should cover the chain of trust case as well as the current
> > > approach without needing to worry about baking keys into the 
> > > kernel image -- after all, a compromised bootloader can already 
> > > change the kernel image or the baked-in keys and thus do whatever
> > > it wants.
> > > 
> > > We get to simplify EFI-based keying: the bootloader or an
> > > intermediate EFI application could pull whatever keys it likes 
> > > from EFI variables and feed them to the kernel.
> > > 
> > > The trickier part is appeasing the Secure Boot deities.  I'm not
> > > privy to the internal discussions here, but I think this could be
> > > done in a few ways.  For example, the bootloader could ensure 
> > > that the policy it sets is compliant.  Alternatively (since I 
> > > think that some implementations sign the kernel image itself with 
> > > a key chained to the MS roots), we could add a config option to 
> > > enforce, in the kernel, that modules must match an in-tree module 
> > > hash or be signed by a key that is built in or (optionally) 
> > > chains to an EFI-supplied key.
> > > 
> > > (NB: I think that the Secure Boot rules are silly, but that's 
> > > beside the point.  I would prefer that the kernel honor them in 
> > > the least silly way possible.)
> > 
> > I really don't think we need to worry about this bit: anything you 
> > come up with is most likely to go way beyond what Microsoft would 
> > need as its minimum base.
> > 
> > The current way secure boot policy is communicated from UEFI to the
> > bootloader is via the shimprotocol. It's a UEFI protocol which the
> > bootloader uses to verify the kernel (but not the command line or 
> > the initrd currently).  It's actually differently constructed 
> > depending on whether you're booting case 1 or 2.
> > 
> > I think we could extend the protocol to pass keys through to the 
> > kernel (the kernel currently doesn't even load the shimprotocol in 
> > early boot, but it could load a new shimkeyprotocol whose only job 
> > was to pass through acceptable keys).  The next problem is how to 
> > verify the command line and initrd.  The problem with the secure 
> > boot chain is that it's largely static and created away from the 
> > system (great for security but not so great for verifying 
> > dynamically created things like the initrd).  Our problem is that 
> > even if you only install distro rpms, the initrd is created 
> > dynamically on the running system by the rpm scripts, so it can't 
> > come with a-priori trust from the distros, nor can it be signed 
> > (unless the scripts have access to a private key, which is
> > a security risk).  One of the things I've been playing with is 
> > having a TPM controlled key sign this (meaning that the user 
> > installing the RPM has to type in a password to get the signature 
> > to happen), but it's also possible to imagine a less complex system 
> > where the hashes of acceptable command lines and initrds are stored 
> > in verified UEFI variables and shim (or the thing which installs 
> > the shim protocol) notifies the user there's been a change and asks
> > for approval.
> > 
> > I think this is a long winded way of saying that our problem isn't 
> > the verification mechanisms itself, it's all in the policy. 
> > 
> > The only real way around this initrd policy problem I can think is
> > either have the default what we do (or rather don't do) today: no
> > verification or have the distros deliver generic initrds which can 
> > be signed (but which would be rather large).  Even if we do the
> > latter, the command line has to have the disk uuid, so it's still 
> > going to be dynamic (and thus unsigned).
> > 
> 
> I'm not personally too worried about verifying initramfs -- initramfs
> is functionally equivalent to the root filesystem, and they ought to
> be verifiable the same way.

Yes, but if you worry about protecting yourself from hackers, IMA can
verify no-one tampers with your rootfs; what verifies that no-one
tampers with your initrd (which is a very powerful instrument to
subvert a linux boot)?

>   For an average desktop distro that *doesn't* verify the rootfs, 
> what's the point of trying to verify initramfs?

If we're talking about standard distros, then do nothing about security
is probably OK.  However, for people who do use IMA to verify their
root fs, we really do need some way of verifying the initramfs.

Matthew already answered the rest, so I'm going to catch my flight.

James
