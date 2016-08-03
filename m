Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 43CFC89C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 10:28:46 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id AC7AC177
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 10:28:45 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>
In-Reply-To: <CACRpkdaeeOed5g+teLyOfeuqx1SijeDuyPAWq1-vQd3Z7uozTA@mail.gmail.com>
References: <20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<20160727140406.GP4541@io.lakedaemon.net>
	<CACRpkdYSsZ9S5KKu76YZD2m6tfBr=310Vaij1LPoRybYnHVDXw@mail.gmail.com>
	<1470147214.2485.8.camel@HansenPartnership.com>
	<CACRpkdaeeOed5g+teLyOfeuqx1SijeDuyPAWq1-vQd3Z7uozTA@mail.gmail.com>
Date: Wed, 03 Aug 2016 13:28:43 +0300
Message-ID: <87h9b2qh7o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 03 Aug 2016, Linus Walleij <linus.walleij@linaro.org> wrote:
> On Tue, Aug 2, 2016 at 4:13 PM, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
>> On Tue, 2016-08-02 at 14:54 +0200, Linus Walleij wrote:
>>> I would certainly trust a firmware signed by say Laurent Pinchart,
>>> but not sure about one signed by E.Corp.
>>
>> Really?  Assuming E.Corp is the one actually producing the firmware,
>> why would you say they're less qualified than Laurent to certify their
>> own firmware.  Half the SCSI chips I see have proprietary firmware.
>>  Even if I were willing to sign it, would you really trust my signature
>> when I can't even decompile it?
>
> I would trust an Intel WiFi driver if it was signed by Dirk Hohndel
> or H. Peter Anvin whose GPG keys I have in my own web of trust
> and work for Intel. And this is simply because I trust these guys
> more than the corporate entity they work for.

[I admittedly didn't read the whole thread, so take this with a grain of
salt, but this stood out.]

I think you're conflating the trust you have in someone or something
actually being who they claim they are with the trust you have in
them. The GPG keys are used for the former, and it's *relatively* easy
to achieve by key signing events and web of trust. The latter is much
harder, and involves all the things you usually have to do to gain trust
in people.

I would imagine we'd want to ensure the firmware blobs actually come
from whoever writes them. I would imagine this would be the company. I
don't think the signatures per se should imply a guarantee of quality,
just that the firmware originates from where it's supposed to originate.

If you insist the individuals you trust sign the blobs, I think you're
putting them under pressure to scrutinize the contents, while they might
not be in a position to do so, like James says.

Side note, Dirk no longer works for Intel, so while you might trust him
personally, I don't think you should trust him to sign Intel binaries...

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Technology Center
