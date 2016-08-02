Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9EEDF9AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 12:54:22 +0000 (UTC)
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 79A1CCD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 12:54:21 +0000 (UTC)
Received: by mail-oi0-f50.google.com with SMTP id w18so234946321oiw.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Aug 2016 05:54:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160727140406.GP4541@io.lakedaemon.net>
References: <20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<20160727140406.GP4541@io.lakedaemon.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 2 Aug 2016 14:54:19 +0200
Message-ID: <CACRpkdYSsZ9S5KKu76YZD2m6tfBr=310Vaij1LPoRybYnHVDXw@mail.gmail.com>
To: Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, Jul 27, 2016 at 4:04 PM, Jason Cooper <jason@lakedaemon.net> wrote:
> On Tue, Jul 26, 2016 at 03:42:18PM +0100, David Woodhouse wrote:
>> On Sat, 2016-07-16 at 01:52 +0100, Mark Brown wrote:
>> > On Fri, Jul 15, 2016 at 03:57:51PM -0400, Mimi Zohar wrote:
>> >
>> > > Oops, "Signature management - keys, modules, firmware" was a
>> > > suggestion from last year, but in my opinion still very apropos.
>> >
>> > Yup, definitely - especially with secure boot starting to firm up on
>> > the ARM side there's a bunch more interest in it from more embedded
>> > applications.
>>
>> Are we going to propose this again "formally" (i.e. sufficiently
>> clearly that the committee take note and consider it)?
>
> $subject modified.
>
>> If so, I would also be keen to participate.
>
> Myself as well.  I've often wondered about devicetree signing.  Since it
> needs to be modified by the bootloader in a lot of cases (RAM size,
> cmdline, etc), but a malicious modification would be to remove the TPM
> node. :-)

Actually the way it works (IIUC) in the only set-up I've seen which is
the Firmware Image Tree (FIT). This blobs a signed kernel+device
tree+initrd (optional) and signs it using e.g. an RSA2048 keypair,
the blob is signature-checked by U-Boot against a compiled-in
public key, then the constituent parts are split, the device tree
augmented and the kernel booted. I.e. U-Boot checks the signature
of the whole shebang *before* augmenting the device tree.

The chain of trust (who watches the watchmen) need to make
sure that U-Boot and its compiled-in certificate are signature-checked
*before* execution of U-Boot, so another boot stage needs to do that.

As far as I've heard, this is what the ARM Chromebooks are doing.

Details:
http://www.denx-cs.de/doku/?q=3Dm28verifiedboot

The overall questions is interesting too.

What I always intuitively felt is that I would be happy if the same
GPG keys we use for pull requests of kernel code would extend
to firmware signing, so that we move from the overall-industry
focus on legislative bodies (Thawte, ...) signing certificates with
OpenSSL and thus being the root of trust, over to putting the root
of trust for any software related to Linux into the same web of
trust that we already use for developing the code per se.

I would certainly trust a firmware signed by say Laurent Pinchart,
but not sure about one signed by E.Corp.

Probably someone will get me for my na=C3=AFvity on the subject,
but uninformed as I may be, I speak anyway. People still tell me
that "Joe Doe's" doesn't trust kernel devs but they trust
$OPAQUE_CORPORATION for reasons unbeknownst to me.

Yours,
Linus Walleij
