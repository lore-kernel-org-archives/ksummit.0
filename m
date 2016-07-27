Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C7D6E982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 15:37:23 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4664B246
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 15:37:23 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <1469631987.27356.48.camel@HansenPartnership.com>
References: <1469631987.27356.48.camel@HansenPartnership.com>
	<20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 Jul 2016 16:37:20 +0100
Message-ID: <13539.1469633840@warthog.procyon.org.uk>
Cc: Mark Brown <broonie@sirena.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

>    3. Integration with existing key management infrastructures. =C2=A0The=
 issue
>       here is things like the gnome keyring and the TPM. =C2=A0The TPM is=
 a
>       particularly thorny problem: as a key store, the TPM has a very
>       limited storage space, so something has effectively to swap keys in
>       and out as they're used. =C2=A0This function is currently performed=
 by a
>       userspace stack called the TSS. =C2=A0However, the kernel use of th=
e TPM
>       effectively steals the nvram resource behind the manager's back and
>       can lead to resource starvation issues in the TPM and unexpected
>       responses back to the user space TSS. =C2=A0If the kernel wants to =
use
>       TPM keys, it needs either to request them properly from the TSS or
>       we need to pull TPM key management fully into the kernel and make
>       the TSS use it.

I have partial patches for this, but they're against an old, pre-tpm2 versi=
on
of the kernel and need updating.  They expose TPM keys as a subtype of the
asymmetric key type.

David
