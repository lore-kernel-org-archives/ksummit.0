Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E476098B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 16:14:52 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 159ED1C9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 16:14:51 +0000 (UTC)
Message-ID: <1469636088.27356.60.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: David Howells <dhowells@redhat.com>
Date: Wed, 27 Jul 2016 12:14:48 -0400
In-Reply-To: <13539.1469633840@warthog.procyon.org.uk>
References: <1469631987.27356.48.camel@HansenPartnership.com>
	<20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<13539.1469633840@warthog.procyon.org.uk>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Wed, 2016-07-27 at 16:37 +0100, David Howells wrote:
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> 
> >    3. Integration with existing key management infrastructures.  The issue
> >       here is things like the gnome keyring and the TPM.  The TPM is a
> >       particularly thorny problem: as a key store, the TPM has a very
> >       limited storage space, so something has effectively to swap keys in
> >       and out as they're used.  This function is currently performed by a
> >       userspace stack called the TSS.  However, the kernel use of the TPM
> >       effectively steals the nvram resource behind the manager's back and
> >       can lead to resource starvation issues in the TPM and unexpected
> >       responses back to the user space TSS.  If the kernel wants to use
> >       TPM keys, it needs either to request them properly from the TSS or
> >       we need to pull TPM key management fully into the kernel and make
> >       the TSS use it.
> 
> I have partial patches for this, but they're against an old, pre-tpm2 version
> of the kernel and need updating.  They expose TPM keys as a subtype of the
> asymmetric key type.

Heh, you really know how to poke a sore spot, since we effectively have
two TSSs in Linux: trousers the TPM 1.1 and 1.2 compatible one and
ibmtpm20tss for TPM 2.0.  I don't think we have an answer on how we
make them work compatibly.  I'm sort of hoping to get some coherence in
the TPM Microconference at Plumbers

http://www.linuxplumbersconf.org/2016/ocw/events/LPC2016/tracks/585

However, if we do an upcall to the TSS, then we can't use TPM keys in
the pre-boot and have difficulty using them in initrd environments,
which seems like it might cause problems.

James
