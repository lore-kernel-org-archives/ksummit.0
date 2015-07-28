Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9DE04279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 13:37:04 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2AF7B118
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 13:37:04 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: ksummit-discuss@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <20435.1438090619.1@warthog.procyon.org.uk>
Date: Tue, 28 Jul 2015 14:36:59 +0100
Message-ID: <20436.1438090619@warthog.procyon.org.uk>
Cc: mcgrof@gmail.com, jkkm@jkkm.org
Subject: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Patches are in the works for the provision of signatures for firmware blobs
for the kernel to check, thus allowing the kernel to act as gatekeeper on what
firmware blobs get loaded where.

Note that it has been agreed that signatures will be in separate files to the
firmware blobs so as not to potentially corrupt a blob by copying it to an OS
that doesn't expect the signature.  Also, we don't want to modify the blob in
case of IP.

We're currently using PKCS#7/CMS messages as the signature format since we
have a PKCS#7 parser and verifier already in the kernel for kexec.

Patches have been proposed for inclusion in security/next that allow PKCS#11
to be used to supply h/w keys to the sign-file program and to the kernel build
process.

There are a number of areas that could do with sorting out with regard key
policy:

 (1) Should signatures produced by the manager of the linux-firmware package
     be allowed only?

 (2) If the linux-firmware packages are signed by a single key (or just a few
     keys) it may be manageable to compile all these keys into the kernel.

 (3) If the vendors of firmware blobs supply signatures, should we accept
     those instead of or as well as linux-firmware signatures?

 (4) If we start taking vendor created blobs, what do we do with all the
     vendor keys?  Compiling them into the kernel could quickly get out of
     hand and asking the user to add them to the UEFI keystore has the
     potential to brick the user's system due to a dodgy BIOS.

 (5) For firmware signatures, the patches we have currently expect to find a
     signed attribute in the PKCS#7 that specifies the same name as is passed
     to request_firmware().

 (6) Should module signatures contain the module name - to be matched against
     the modinfo structure after the signature is checked?

 (7) Do we want to have the driver mandate the key that will be used when
     requesting firmware?  How would we specify the key?  I'm loathe to
     include a hash of the public key since that means the driver is then tied
     to a particular key.

 (8) Can we then trust that key if we load it on the basis that a driver
     specifies it by public key hash, even it we can't chain back from it to
     the system_trusted_keyring.

 (9) Do we allow UEFI blacklisting of firmware signatures?

Some points that may be of use in considering the above:

 (A) PKCS#7/CMS messages can take multiple signatures.  Extra signatures can
     be added at a later date.

 (B) We can load keys dynamically - provided we can verify them with a key we
     already have.

 (C) If we can't trace a key back to a key we know we trust, that key cannot
     be used.

 (D) The PKCS#7/CMS field that matches the signing key is not itself signed.

If we do have this discussion, it would be useful to have some or all of Luis
Rodriguez, David Woodhouse, Andy Lutomirski, Kyle McMartin, Seth Forshee and
Mimi Zohar present.

David
