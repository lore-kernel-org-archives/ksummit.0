Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 055669CA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 14:00:38 +0000 (UTC)
Received: from pmta2.delivery5.ore.mailhop.org
	(pmta2.delivery5.ore.mailhop.org [54.186.218.12])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 04002183
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 14:00:35 +0000 (UTC)
Date: Tue, 2 Aug 2016 14:00:31 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20160802140031.GK4541@io.lakedaemon.net>
References: <20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<20160727140406.GP4541@io.lakedaemon.net>
	<CACRpkdYSsZ9S5KKu76YZD2m6tfBr=310Vaij1LPoRybYnHVDXw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRpkdYSsZ9S5KKu76YZD2m6tfBr=310Vaij1LPoRybYnHVDXw@mail.gmail.com>
Cc: Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Signature management - keys,
 modules, firmware, was: Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hey Linus,

On Tue, Aug 02, 2016 at 02:54:19PM +0200, Linus Walleij wrote:
> On Wed, Jul 27, 2016 at 4:04 PM, Jason Cooper <jason@lakedaemon.net> wrote:
...
> > Myself as well.  I've often wondered about devicetree signing.  Since it
> > needs to be modified by the bootloader in a lot of cases (RAM size,
> > cmdline, etc), but a malicious modification would be to remove the TPM
> > node. :-)
> 
> Actually the way it works (IIUC) in the only set-up I've seen which is
> the Firmware Image Tree (FIT). This blobs a signed kernel+device
> tree+initrd (optional) and signs it using e.g. an RSA2048 keypair,
> the blob is signature-checked by U-Boot against a compiled-in
> public key, then the constituent parts are split, the device tree
> augmented and the kernel booted. I.e. U-Boot checks the signature
> of the whole shebang *before* augmenting the device tree.
> 
> The chain of trust (who watches the watchmen) need to make
> sure that U-Boot and its compiled-in certificate are signature-checked
> *before* execution of U-Boot, so another boot stage needs to do that.
> 
> As far as I've heard, this is what the ARM Chromebooks are doing.
> 
> Details:
> http://www.denx-cs.de/doku/?q=m28verifiedboot

Ah, thanks for the info. :)

> The overall questions is interesting too.
> 
> What I always intuitively felt is that I would be happy if the same
> GPG keys we use for pull requests of kernel code would extend
> to firmware signing, so that we move from the overall-industry
> focus on legislative bodies (Thawte, ...) signing certificates with
> OpenSSL and thus being the root of trust, over to putting the root
> of trust for any software related to Linux into the same web of
> trust that we already use for developing the code per se.

You're actually hitting at the core of the problem.  The CA system
(Thawte, Verisign, etc) is better than what came before it.  We now have
enough experience with it, and have seen the band-aids [0], to know we need
something better.

The problem here is that we (users) need to be able to verify that
iwlwifi-whatever.ucode claimed to be created by Intel, was indeed the
*same* one Intel shipped out the door.  That's it.  It's up to the user
to decide to "trust" Intel's microcode or not.  All the kernel should be
doing is confirming cryptographically that it came from Intel.

Now, the CA vice Web-of-trust question is "Is this public key the proper
public key for Intel?"  There's several ways to solve this, and they
aren't mutually exclusive:

 - Use the CA to verify you have the correct key
 - Use PGP counter-signing to sign Intel's key (kernel devs could do
   this according to pre-determined authenticity criteria)
 - Use TOFU (Trust on First Use) to confirm that your firmware file is
   signed with the *same* key for each subsequent version
 - Use crowd-sourcing to confirm that everyone else has the same public
   key for Intel

Each approach has it's pluses and minuses, so a combination of
approaches is probably the most viable.

> I would certainly trust a firmware signed by say Laurent Pinchart,
> but not sure about one signed by E.Corp.
> 
> Probably someone will get me for my naïvity on the subject,
> but uninformed as I may be, I speak anyway. People still tell me
> that "Joe Doe's" doesn't trust kernel devs but they trust
> $OPAQUE_CORPORATION for reasons unbeknownst to me.

If I, as a user, buy a laptop with an NVidia GPU, then I just created a
trust relationship with NVidia.  Wether I'm conscious of it or not
doesn't matter.  I put my personal life inside a machine containing the
GPU which has DMA access across the whole system.

So, when I load firmware or drivers for the NVidia GPU, I want to know
that they are indeed from the same entity that created the GPU.  Having
those blobs signed by anyone else, doesn't mean squat to me.

Unless the signer is saying "I, as an outside third party, have reviewed
the source code and binaries for this blob and can confirm that it does
what it is intended to do.  And nothing more." iow, no backdoors were
found, etc.  Then the *extra* signature would have value.  *If* I trust
the signer and have his/her public key, etc.

The point is that only end users can trust.  The kernel can infer trust
so that userspace doesn't have to prompt for every decision.  e.g. we
see an NVidia GPU, so the user bought a laptop with NVidia in it.  ergo,
it's reasonable to assume that drivers signed by NVidia, for the NVidia
GPU are OK to load once verified.

thx,

Jason.

[0] I refer to certificate pinning, a la HPKP; SSL Observatory,
Certificate Transparency, etc.
