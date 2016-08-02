Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 553D69EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 14:13:39 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B589411A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 14:13:38 +0000 (UTC)
Message-ID: <1470147214.2485.8.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Linus Walleij <linus.walleij@linaro.org>, Jason Cooper
	<jason@lakedaemon.net>
Date: Tue, 02 Aug 2016 10:13:34 -0400
In-Reply-To: <CACRpkdYSsZ9S5KKu76YZD2m6tfBr=310Vaij1LPoRybYnHVDXw@mail.gmail.com>
References: <20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<20160727140406.GP4541@io.lakedaemon.net>
	<CACRpkdYSsZ9S5KKu76YZD2m6tfBr=310Vaij1LPoRybYnHVDXw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On Tue, 2016-08-02 at 14:54 +0200, Linus Walleij wrote:
> As far as I've heard, this is what the ARM Chromebooks are doing.
> 
> Details:
> http://www.denx-cs.de/doku/?q=m28verifiedboot

This is actually very similar to the way secure boot works.  I think
the only real difference is that if the UEFI system is verifying
signatures, we use that same signature verification mechanism in grub
(our u-boot equivalent on x86) partly so we don't have to have yet
another possibly buggy copy of openssl and partly because grub seems
not to like signature verification, so it's easier to call out to a
UEFI protocol than it is to insert full openssl in a modification
patch.

> The overall questions is interesting too.
> 
> What I always intuitively felt is that I would be happy if the same
> GPG keys we use for pull requests of kernel code would extend
> to firmware signing, so that we move from the overall-industry
> focus on legislative bodies (Thawte, ...) signing certificates with
> OpenSSL and thus being the root of trust, over to putting the root
> of trust for any software related to Linux into the same web of
> trust that we already use for developing the code per se.

This is the vision that Monkeysphere is based on

http://web.monkeysphere.info/

However, I might trust Joe Doe enough to sign his key; I probably don't
trust any of the people whose keys I've signed to supply firmware or
other install stuff for my laptop without my intervention, so I
definitely don't trust their keys for this purpose.

> I would certainly trust a firmware signed by say Laurent Pinchart,
> but not sure about one signed by E.Corp.

Really?  Assuming E.Corp is the one actually producing the firmware,
why would you say they're less qualified than Laurent to certify their
own firmware.  Half the SCSI chips I see have proprietary firmware. 
 Even if I were willing to sign it, would you really trust my signature
when I can't even decompile it?

> Probably someone will get me for my naïvity on the subject,
> but uninformed as I may be, I speak anyway. People still tell me
> that "Joe Doe's" doesn't trust kernel devs but they trust
> $OPAQUE_CORPORATION for reasons unbeknownst to me.

It depends ... and this is the problem with "trust" it's too fine
grained to map into any network.  If the firmware is binary, why would
you trust anyone other than the vendor who produced it to sign it. 
 What would such a signature even mean if someone else did?  However,
if the firmware is actually open source, like the 53c700 or aic7xxx
firmwares, which are both in the kernel source tree, perhaps you would
trust me to sign it.

James
