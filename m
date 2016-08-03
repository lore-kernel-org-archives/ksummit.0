Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3F460413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 11:18:56 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 8F52612D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 11:18:55 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
In-Reply-To: <CACRpkdZHv1Sc7t4Fmm0_7XLoNqDUCZgjMZzYEUamwcDhjrn2SQ@mail.gmail.com>
References: <20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<20160727140406.GP4541@io.lakedaemon.net>
	<CACRpkdYSsZ9S5KKu76YZD2m6tfBr=310Vaij1LPoRybYnHVDXw@mail.gmail.com>
	<1470147214.2485.8.camel@HansenPartnership.com>
	<CACRpkdaeeOed5g+teLyOfeuqx1SijeDuyPAWq1-vQd3Z7uozTA@mail.gmail.com>
	<87h9b2qh7o.fsf@intel.com>
	<CACRpkdZHv1Sc7t4Fmm0_7XLoNqDUCZgjMZzYEUamwcDhjrn2SQ@mail.gmail.com>
Date: Wed, 03 Aug 2016 14:18:53 +0300
Message-ID: <87eg66qew2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Jason Cooper <jason@lakedaemon.net>,
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
> On Wed, Aug 3, 2016 at 12:28 PM, Jani Nikula <jani.nikula@intel.com> wrote:
>> On Wed, 03 Aug 2016, Linus Walleij <linus.walleij@linaro.org> wrote:
>
>>> I would trust an Intel WiFi driver if it was signed by Dirk Hohndel
>>> or H. Peter Anvin whose GPG keys I have in my own web of trust
>>> and work for Intel. And this is simply because I trust these guys
>>> more than the corporate entity they work for.
>>
>> I think you're conflating the trust you have in someone or something
>> actually being who they claim they are with the trust you have in
>> them. The GPG keys are used for the former, and it's *relatively* easy
>> to achieve by key signing events and web of trust. The latter is much
>> harder, and involves all the things you usually have to do to gain trust
>> in people.
>>
>> I would imagine we'd want to ensure the firmware blobs actually come
>> from whoever writes them. I would imagine this would be the company. I
>> don't think the signatures per se should imply a guarantee of quality,
>> just that the firmware originates from where it's supposed to originate.
>>
>> If you insist the individuals you trust sign the blobs, I think you're
>> putting them under pressure to scrutinize the contents, while they might
>> not be in a position to do so, like James says.
>
> Well, that is what we insist that people sending is code does. That is
> what Signed-off-by and the signed pull requests mean isn't it?
> That we trust the person. GPG is just mechanics to make sure it is
> really that person which we trust.

Agreed on open source in general, but I'm just not sure this is a good
approach for closed binary blobs. My educated guess is that the people
doing open source generally are not in positions to evaluate the
firmware binaries beyond testing. You would be over extending the
trust. Like Jiri implied, this is comparable to people signing off on
the hardware.

> As for trusting corporate entities, I understand that I may be
> out-of-the-ordinary anarchist when it comes to that, I can certainly
> live with the fact that everyone else in the world has no problem with
> that and doesn't understand what I'm talking about or why it would
> be a problem. It's just like, my opinion, man.

Oh, I do understand. But I fear having individuals sign the binaries
might buy you little more than a warm fuzzy feeling.

> The point is that the kind of trust technology you choose - certificates
> or GPG signatures - sort of decides and codifies what it is you trust,
> it creates an ontology for this. (I.e. "the world is populated by people
> you can trust" vs "the world is populated by legal entities you can
> trust".) Choosing one or the other is fine, but should be done consciously
> I think.

I do not think the divide is quite as strict as you imply, in particular
you could have legal entities in your GPG web of trust. However this is
where I'll eject myself from the discussion; I don't think I can help
with the choice of one or the other technology.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Technology Center
