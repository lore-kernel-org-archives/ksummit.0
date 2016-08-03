Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C8BFA78D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 17:29:13 +0000 (UTC)
Received: from mail-vk0-f44.google.com (mail-vk0-f44.google.com
	[209.85.213.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 31F842B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 17:29:13 +0000 (UTC)
Received: by mail-vk0-f44.google.com with SMTP id w127so151490077vkh.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Aug 2016 10:29:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAPeXnHsB6rfROg4j7dv1a0UkhNNFjmqEwJma-wiEcYrwDD5R2w@mail.gmail.com>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
	<27174.1470221030@warthog.procyon.org.uk>
	<CALCETrU2qPO8Bu5wtaiKkYHgdpV3dL+Q5P+8YZLNSm3Ekn9sTw@mail.gmail.com>
	<CAPeXnHsOuu_jOkqMMaUwkdfpxUwB=NMwRA4U7jnLG1W2OCdp1g@mail.gmail.com>
	<CALCETrU3E48++g2G-o4YDoazphkcVoK-gVLVHna9ZQoKVgnL5g@mail.gmail.com>
	<CAPeXnHsB6rfROg4j7dv1a0UkhNNFjmqEwJma-wiEcYrwDD5R2w@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 3 Aug 2016 10:28:51 -0700
Message-ID: <CALCETrWHVVuLwJQQE+qafWk19BGPHRH2FoU61cZygw=wyrXEOg@mail.gmail.com>
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

On Wed, Aug 3, 2016 at 10:26 AM, Matthew Garrett <mjg59@coreos.com> wrote:
> On Wed, Aug 3, 2016 at 10:23 AM, Andy Lutomirski <luto@amacapital.net> wrote:
>> On Wed, Aug 3, 2016 at 10:17 AM, Matthew Garrett <mjg59@coreos.com> wrote:
>>> Keys could be stored in a separate section and ignored for the
>>> purposes of build comparison.
>>
>> But that defeats the purpose.  If I'm verifying a reproducible build,
>> I don't want to have to take it on faith that the packager didn't keep
>> a copy of the build-time key.
>
> If you're trusting your upstream's signed bootloader you're already
> forced to trust your packagers. If you want to establish your own root
> of trust you could simply strip that section, replace it with your own
> and re-sign the modules and kernel. Or just keep using signatures,
> sign the public module signing key with the kernel signing key and
> push the policy decision out to the bootloader.

But only sort of.  If the upstream bootloader signature serves only to
make Secure Boot accept it, then I don't really care if the owner of
that signing key is evil, because they can't do anything with that key
without physical access.

-- 
Andy Lutomirski
AMA Capital Management, LLC
