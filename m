Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 82F1B413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 09:47:28 +0000 (UTC)
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E4C91E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 09:47:27 +0000 (UTC)
Received: by mail-oi0-f51.google.com with SMTP id 4so63259144oih.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Aug 2016 02:47:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1470147214.2485.8.camel@HansenPartnership.com>
References: <20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<20160727140406.GP4541@io.lakedaemon.net>
	<CACRpkdYSsZ9S5KKu76YZD2m6tfBr=310Vaij1LPoRybYnHVDXw@mail.gmail.com>
	<1470147214.2485.8.camel@HansenPartnership.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Aug 2016 11:47:26 +0200
Message-ID: <CACRpkdaeeOed5g+teLyOfeuqx1SijeDuyPAWq1-vQd3Z7uozTA@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mark Brown <broonie@sirena.org.uk>
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

On Tue, Aug 2, 2016 at 4:13 PM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Tue, 2016-08-02 at 14:54 +0200, Linus Walleij wrote:

>> What I always intuitively felt is that I would be happy if the same
>> GPG keys we use for pull requests of kernel code would extend
>> to firmware signing, so that we move from the overall-industry
>> focus on legislative bodies (Thawte, ...) signing certificates with
>> OpenSSL and thus being the root of trust, over to putting the root
>> of trust for any software related to Linux into the same web of
>> trust that we already use for developing the code per se.
>
> This is the vision that Monkeysphere is based on
>
> http://web.monkeysphere.info/

That looks nice.

>> I would certainly trust a firmware signed by say Laurent Pinchart,
>> but not sure about one signed by E.Corp.
>
> Really?  Assuming E.Corp is the one actually producing the firmware,
> why would you say they're less qualified than Laurent to certify their
> own firmware.  Half the SCSI chips I see have proprietary firmware.
>  Even if I were willing to sign it, would you really trust my signature
> when I can't even decompile it?

I would trust an Intel WiFi driver if it was signed by Dirk Hohndel
or H. Peter Anvin whose GPG keys I have in my own web of trust
and work for Intel. And this is simply because I trust these guys
more than the corporate entity they work for.

And when you think of it, that is exactly what the kernel devs
web of trust is doing: we trust these individuals, not the companies
they work for. That is why we are using GPG keys and not
OpenSSL certificates signed by say Linux Foundation to send
our pull requests.

Well maybe I attribute intent where there is none: maybe the
GPG signature in git was just arbitrarily chosen for this, due to
it's availability and/or simplicity it could have been the other way
in a parallel universe that contributors would have to use
certificates signed by LF... I don't know. I'm uncertain.

But I percieve it as if there is some tension here between "our"
individual trust and the corporate trust in legal bodies. I might
be mistaken.

> ... and this is the problem with "trust" it's too fine
> grained to map into any network.  If the firmware is binary, why would
> you trust anyone other than the vendor who produced it to sign it.
>  What would such a signature even mean if someone else did?  However,
> if the firmware is actually open source, like the 53c700 or aic7xxx
> firmwares, which are both in the kernel source tree, perhaps you would
> trust me to sign it.

Being able to inspect the source is paramount and 53x700 and aic7xx
show what is needed if we want a future where we as (power) users can
trust our own devices. If I would recompile any of those two firmwares
myself I guess I would also sign them myself and trust myself.
The inroad to complete trust would be to first read the firmware source
code.

Yours,
Linus Walleij
