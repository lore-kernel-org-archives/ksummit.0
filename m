Return-Path: <jwboyer@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 42FB43C8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 16:59:23 +0000 (UTC)
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8374C1C7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 16:58:49 +0000 (UTC)
Received: by igbij6 with SMTP id ij6so124669436igb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 09:58:49 -0700 (PDT)
MIME-Version: 1.0
Sender: jwboyer@gmail.com
In-Reply-To: <1438096213.5441.147.camel@HansenPartnership.com>
References: <20436.1438090619@warthog.procyon.org.uk>
	<1438096213.5441.147.camel@HansenPartnership.com>
Date: Tue, 28 Jul 2015 12:58:48 -0400
Message-ID: <CA+5PVA4TVHmsVy+AYEMtYWDopX-7pCOQzHv+c5fawhyQjzt1Ow@mail.gmail.com>
From: Josh Boyer <jwboyer@fedoraproject.org>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Cc: mcgrof@gmail.com, ksummit-discuss@lists.linuxfoundation.org, jkkm@jkkm.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 28, 2015 at 11:10 AM, James Bottomley
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

Packagers signing individual firmware files seems wrong.  As a
packager, I would want my signature to represent the fact that I
created this package and it is official in some capacity.  That
signature would naturally be on the package itself, e.g. an RPM
signature.

>>  (2) If the linux-firmware packages are signed by a single key (or just a few
>>      keys) it may be manageable to compile all these keys into the kernel.
>>
>>  (3) If the vendors of firmware blobs supply signatures, should we accept
>>      those instead of or as well as linux-firmware signatures?
>
> Of course, How are you going to validate other than by trusting the
> vendor?  Conversely, if you don't trust the vendor, why are you loading
> an unknown binary blob from them into a processing engine they made?
>
>>  (4) If we start taking vendor created blobs, what do we do with all the
>>      vendor keys?  Compiling them into the kernel could quickly get out of
>>      hand and asking the user to add them to the UEFI keystore has the
>>      potential to brick the user's system due to a dodgy BIOS.
>
> If the vendors buy in, I assume you'll eventually get them building them
> into their drivers.  In the interim, the package manager could supply
> the trusted keys at runtime.

Yes, adding them to the driver itself seems like the least painful
solution there.

josh
