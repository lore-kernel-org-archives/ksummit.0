Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C5FA9FF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 15:10:16 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3F45511B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 15:10:16 +0000 (UTC)
Message-ID: <1438096213.5441.147.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: David Howells <dhowells@redhat.com>
Date: Tue, 28 Jul 2015 08:10:13 -0700
In-Reply-To: <20436.1438090619@warthog.procyon.org.uk>
References: <20436.1438090619@warthog.procyon.org.uk>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Tue, 2015-07-28 at 14:36 +0100, David Howells wrote:
> Patches are in the works for the provision of signatures for firmware blobs
> for the kernel to check, thus allowing the kernel to act as gatekeeper on what
> firmware blobs get loaded where.
> 
> Note that it has been agreed that signatures will be in separate files to the
> firmware blobs so as not to potentially corrupt a blob by copying it to an OS
> that doesn't expect the signature.  Also, we don't want to modify the blob in
> case of IP.
> 
> We're currently using PKCS#7/CMS messages as the signature format since we
> have a PKCS#7 parser and verifier already in the kernel for kexec.
> 
> Patches have been proposed for inclusion in security/next that allow PKCS#11
> to be used to supply h/w keys to the sign-file program and to the kernel build
> process.
> 
> There are a number of areas that could do with sorting out with regard key
> policy:
> 
>  (1) Should signatures produced by the manager of the linux-firmware package
>      be allowed only?

Firmware is a binary blob usually with no decompilation.  How would the
package manager know its provenance?  The only people who know are the
people who write the driver.  If they sign, I think we have to accept
their signature and if not, we could have a weaker level of trust on the
package manager based on unbroken chain of transmission from the
firmware provider, but you'd have to trust the packaging organisation.

>  (2) If the linux-firmware packages are signed by a single key (or just a few
>      keys) it may be manageable to compile all these keys into the kernel.
> 
>  (3) If the vendors of firmware blobs supply signatures, should we accept
>      those instead of or as well as linux-firmware signatures?

Of course, How are you going to validate other than by trusting the
vendor?  Conversely, if you don't trust the vendor, why are you loading
an unknown binary blob from them into a processing engine they made?

>  (4) If we start taking vendor created blobs, what do we do with all the
>      vendor keys?  Compiling them into the kernel could quickly get out of
>      hand and asking the user to add them to the UEFI keystore has the
>      potential to brick the user's system due to a dodgy BIOS.

If the vendors buy in, I assume you'll eventually get them building them
into their drivers.  In the interim, the package manager could supply
the trusted keys at runtime.

>  (5) For firmware signatures, the patches we have currently expect to find a
>      signed attribute in the PKCS#7 that specifies the same name as is passed
>      to request_firmware().
> 
>  (6) Should module signatures contain the module name - to be matched against
>      the modinfo structure after the signature is checked?

I'm agnostic on this, but if we're doing signatures, we already have the
sha256 of the code.  We can build a simple comparison table, so we can
match to the signature without knowing the name.

>  (7) Do we want to have the driver mandate the key that will be used when
>      requesting firmware?  How would we specify the key?  I'm loathe to
>      include a hash of the public key since that means the driver is then tied
>      to a particular key.

I think so ... how else would you have a true validation chain.  You
need to ask yourself *what* your trusting.  I'm afraid the answer is
whatever the manufacturer told you because there's no way of checking
for firmware.

>  (8) Can we then trust that key if we load it on the basis that a driver
>      specifies it by public key hash, even it we can't chain back from it to
>      the system_trusted_keyring.

What's the point of tying to the system root of trust?

>  (9) Do we allow UEFI blacklisting of firmware signatures?

There has to be a blacklist mechanism, yes ... I'm not sure UEFI would
do it, though.

> Some points that may be of use in considering the above:
> 
>  (A) PKCS#7/CMS messages can take multiple signatures.  Extra signatures can
>      be added at a later date.

This is irrelevant in the detached signature case, isn't it?

>  (B) We can load keys dynamically - provided we can verify them with a key we
>      already have.
> 
>  (C) If we can't trace a key back to a key we know we trust, that key cannot
>      be used.
> 
>  (D) The PKCS#7/CMS field that matches the signing key is not itself signed.

Does it need to be?  If the field is modified, verification occurs with
the wrong key and you get a failure.  That's logically equivalent to
finding the field has been altered and getting a failure.

> If we do have this discussion, it would be useful to have some or all of Luis
> Rodriguez, David Woodhouse, Andy Lutomirski, Kyle McMartin, Seth Forshee and
> Mimi Zohar present.

Since you mention UEFI, you probably need the people who've been deep in
the UEFI signature issue: Peter Jones, Matthew Garrett, Matt Fleming and
me.

James


> David
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
