Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DBDCB9D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 15:22:27 +0000 (UTC)
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1F0E6170
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 15:22:27 +0000 (UTC)
Received: by lbbzr7 with SMTP id zr7so77131725lbb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 08:22:25 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1438096213.5441.147.camel@HansenPartnership.com>
References: <20436.1438090619@warthog.procyon.org.uk>
	<1438096213.5441.147.camel@HansenPartnership.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 28 Jul 2015 08:22:05 -0700
Message-ID: <CALCETrVbTEf0rKKYOmNoHB2n0MpSgpY8jvOGXPnV=+KPxEpFKw@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Cc: Luis Rodriguez <mcgrof@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, jkkm@jkkm.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 28, 2015 at 8:10 AM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Tue, 2015-07-28 at 14:36 +0100, David Howells wrote:
>> Patches are in the works for the provision of signatures for firmware blobs
>> for the kernel to check, thus allowing the kernel to act as gatekeeper on what
>> firmware blobs get loaded where.
>>
>> Note that it has been agreed that signatures will be in separate files to the
>> firmware blobs so as not to potentially corrupt a blob by copying it to an OS
>> that doesn't expect the signature.  Also, we don't want to modify the blob in
>> case of IP.
>>
>> We're currently using PKCS#7/CMS messages as the signature format since we
>> have a PKCS#7 parser and verifier already in the kernel for kexec.
>>
>> Patches have been proposed for inclusion in security/next that allow PKCS#11
>> to be used to supply h/w keys to the sign-file program and to the kernel build
>> process.
>>
>> There are a number of areas that could do with sorting out with regard key
>> policy:
>>
>>  (1) Should signatures produced by the manager of the linux-firmware package
>>      be allowed only?
>
> Firmware is a binary blob usually with no decompilation.  How would the
> package manager know its provenance?  The only people who know are the
> people who write the driver.  If they sign, I think we have to accept
> their signature and if not, we could have a weaker level of trust on the
> package manager based on unbroken chain of transmission from the
> firmware provider, but you'd have to trust the packaging organisation.

But IMO we really don't want trust $RANDOM_USB_WIDGET_VENDOR to supply
firmware for the GPU, for example.

>>  (8) Can we then trust that key if we load it on the basis that a driver
>>      specifies it by public key hash, even it we can't chain back from it to
>>      the system_trusted_keyring.
>
> What's the point of tying to the system root of trust?
>

Agreed.  See about.  I don't think the concept of trust should be as
simple as "we trust" or "we don't trust" -- we should trust certain
vendors for certain purposes only.

>> If we do have this discussion, it would be useful to have some or all of Luis
>> Rodriguez, David Woodhouse, Andy Lutomirski, Kyle McMartin, Seth Forshee and
>> Mimi Zohar present.
>

I'll be there.

--Andy
