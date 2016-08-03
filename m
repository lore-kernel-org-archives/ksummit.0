Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5574A78D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 17:23:23 +0000 (UTC)
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8F36F2C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 17:23:22 +0000 (UTC)
Received: by mail-vk0-f53.google.com with SMTP id w127so151370930vkh.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Aug 2016 10:23:22 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAPeXnHsOuu_jOkqMMaUwkdfpxUwB=NMwRA4U7jnLG1W2OCdp1g@mail.gmail.com>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
	<27174.1470221030@warthog.procyon.org.uk>
	<CALCETrU2qPO8Bu5wtaiKkYHgdpV3dL+Q5P+8YZLNSm3Ekn9sTw@mail.gmail.com>
	<CAPeXnHsOuu_jOkqMMaUwkdfpxUwB=NMwRA4U7jnLG1W2OCdp1g@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 3 Aug 2016 10:23:00 -0700
Message-ID: <CALCETrU3E48++g2G-o4YDoazphkcVoK-gVLVHna9ZQoKVgnL5g@mail.gmail.com>
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

On Wed, Aug 3, 2016 at 10:17 AM, Matthew Garrett <mjg59@coreos.com> wrote:
> On Wed, Aug 3, 2016 at 9:46 AM, Andy Lutomirski <luto@amacapital.net> wrote:
>> On Aug 3, 2016 3:43 AM, "David Howells" <dhowells@redhat.com> wrote:
>>>  (1) We have to keep the module signing by keys stuff in the kernel along with
>>>      a supply of keys for it to use *anyway*.  Yes, we might then be able to
>>>      drop the build-time transient key, but that doesn't account for very much
>>>      image space or memory.
>>
>> I object to the existence of the build-time key.  It completely breaks
>> reproducible builds.
>
> Keys could be stored in a separate section and ignored for the
> purposes of build comparison.

But that defeats the purpose.  If I'm verifying a reproducible build,
I don't want to have to take it on faith that the packager didn't keep
a copy of the build-time key.

>
>>>  (3) If someone adds or updates a firmware blob, you can't simply add a new
>>>      hash to the table without rebuilding your kernel.  So you need to fall
>>>      back to using a key-based signature for this.
>>>
>>
>> As above, firmware isn't affected.
>
> There's no fundamental problem with using signed firmware (although
> you'd probably need detached signatures to comply with licenses) -
> it's more of a logistical problem in that you'd need an actual key
> rather than a build-time one, but it's still more practical than
> hashing.

I agree.  I don't think my module hashing proposal should cover firmware at all.

>
>>> I don't see a compelling argument for why we'd want to do module hashing at
>>> all, given that we have to have the signature checking mechanism around anyway
>>> for various reasons.
>>
>> I think that, for the Secure Boot usecase, we actually wouldn't need
>> the signature checking mechanism at all.  Firmware signature checking
>> in-kernel is important for some chain-of-trust use cases but AFAIK not
>> for Secure Boot for standard desktop distros.
>
> Without an IOMMU you can probably subvert any DMA capable device that
> loads unsigned firmware, at which point you're in a bad place again.
> This isn't something I'm losing much sleep over, since attacks that
> only work if you have a specific piece of hardware installed are much
> less exciting. We'd still need signature checking so that users can
> install their own signing keys, and I don't see distributions being
> terribly enthusiastic about having two unrelated module validation
> systems.

That's a question for the distros.  My intent would be to make the
module hashing scheme as painless as possible for the distros: distros
would just enable a config option and, if needed, adjust their debug
info generation slightly.
