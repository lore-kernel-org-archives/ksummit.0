Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D92C9956
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 16:14:03 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C2253100
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 16:14:02 +0000 (UTC)
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
Date: Wed, 27 Jul 2016 17:14:00 +0100
Message-ID: <14209.1469636040@warthog.procyon.org.uk>
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

>    1. Population and update policy: How should we populate the default
>       keyrings and revocation lists? =C2=A0Should we have a built in list=
 of
>       absolute trust that can never be added to? I think the current
>       default here is OK: it's populate with the kernel built in keys and
>       nothing else. =C2=A0If userspace wants to populate with, say, the s=
ecure
>       boot keys, then it can do so from init. =C2=A0An issue here is the
>       Microsoft signing key, which most Linux people have but which they
>       wouldn't necessarily consider to be a source of absolute trust.=20
>       =C2=A0However, third party driver vendors would like a way to get t=
heir
>       key trusted by the kernel so they can easily supply modules (This
>       isn't a binary module issue: the code is usually GPL, but the
>       vendors would like to supply updates asynchronously to the distro
>       release cycle). =C2=A0We can say their key should be added as part =
of the
>       rpm that installs the module, but do users really want this key
>       adding to the default keyring to be trusted for non-module
>       operations?

I have patches that allow the UEFI key and blacklist databases to add to the
kernel keyrings during boot.

We don't want to permit loading a key from a file once the kernel is booted
unless that key is signed by a key already in the keyrings.

David
