Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 555F99B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 03:17:47 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A63C329E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 03:17:46 +0000 (UTC)
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u6S3EGg9071640 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 23:17:46 -0400
Received: from e28smtp02.in.ibm.com (e28smtp02.in.ibm.com [125.16.236.2])
	by mx0a-001b2d01.pphosted.com with ESMTP id 24dsrre2xc-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 23:17:45 -0400
Received: from localhost
	by e28smtp02.in.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Thu, 28 Jul 2016 08:47:42 +0530
Received: from d28relay07.in.ibm.com (d28relay07.in.ibm.com [9.184.220.158])
	by d28dlp02.in.ibm.com (Postfix) with ESMTP id E2A533940062
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 08:47:37 +0530 (IST)
Received: from d28av03.in.ibm.com (d28av03.in.ibm.com [9.184.220.65])
	by d28relay07.in.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	u6S3HbD931850620 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 08:47:37 +0530
Received: from d28av03.in.ibm.com (localhost [127.0.0.1])
	by d28av03.in.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	u6S3HZte025049 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 08:47:37 +0530
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 27 Jul 2016 23:17:32 -0400
In-Reply-To: <CALCETrW-yKZpS7ZYw_ASLwfDTLxMz3rU4k7RxEK8YwJM9pZiTA@mail.gmail.com>
References: <1469631987.27356.48.camel@HansenPartnership.com>
	<20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<14209.1469636040@warthog.procyon.org.uk>
	<1469636881.27356.70.camel@HansenPartnership.com>
	<1469637367.27356.73.camel@HansenPartnership.com>
	<1469648220.23563.15.camel@linux.vnet.ibm.com>
	<CALCETrXWVTmbuUa-d7EH2kGRZM+HCiqje11AqxWm7ntd5fjLDg@mail.gmail.com>
	<1469660063.23563.81.camel@linux.vnet.ibm.com>
	<CALCETrW-yKZpS7ZYw_ASLwfDTLxMz3rU4k7RxEK8YwJM9pZiTA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <1469675852.23563.138.camel@linux.vnet.ibm.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mi, 2016-07-27 at 16:15 -0700, Andy Lutomirski wrote:
> On Wed, Jul 27, 2016 at 3:54 PM, Mimi Zohar <zohar@linux.vnet.ibm.com> wrote:

> Again, I think that wrapping this up in the "keyring" term is
> problematic.  I'm saying that I can see a use case for allowing a
> brand new key (not rooted anywhere in particular) to be added to the
> list of trusted signing keys for modules so long as a PCR is extended
> with that key.  That would let me seal things to a non-tampered-kernel
> configuration by sealing them against an unextended PCR such that a
> user who loaded a module not signed by the initial trusted key would
> not be able to unseal the secrets.

Nice!  Ok, you create a key that is sealed to a set of PCRs and then
extend a PCR with a hash of the key.  Normally extending the PCR is to
prevent the key from being unsealed again.  In this case, I assume
you're preventing other keys from being created based on the initial
PCRs.  So you now have a key that matches an initial set of PCRs.  That
key can then be used to sign the kernel modules.  On reboot, the key is
unsealed iff the PCRs match.

If you're creating a TPM based key on the local host, that would require
your signing kernel modules locally.   With keyrings, the key for kernel
modules is already baked into the kernel and is loaded onto the builtin
keyring.  For code that the key isn't baked into the kernel, instead of
signing the code directly, the third party keys, which were used to sign
the code, would be signed by a key on the builtin keyring.

Mimi
