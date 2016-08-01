Return-Path: <johannes@sipsolutions.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 456A1941
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 10:23:16 +0000 (UTC)
Received: from sipsolutions.net (s3.sipsolutions.net [5.9.151.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ED723100
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 10:23:14 +0000 (UTC)
Message-ID: <1470046978.3389.25.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, David Woodhouse
	<dwmw2@infradead.org>, Mark Brown <broonie@sirena.org.uk>, Mimi Zohar
	<zohar@linux.vnet.ibm.com>, dhowells@redhat.com
Date: Mon, 01 Aug 2016 12:22:58 +0200
In-Reply-To: <1469631987.27356.48.camel@HansenPartnership.com>
	(sfid-20160727_170636_246165_650DEA2D)
References: <20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<1469631987.27356.48.camel@HansenPartnership.com>
	(sfid-20160727_170636_246165_650DEA2D)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2016-07-27 at 11:06 -0400, James Bottomley wrote:
> On Tue, 2016-07-26 at 15:42 +0100, David Woodhouse wrote:
> > On Sat, 2016-07-16 at 01:52 +0100, Mark Brown wrote:
> > > On Fri, Jul 15, 2016 at 03:57:51PM -0400, Mimi Zohar wrote:
> > > 
> > > > Oops, "Signature management - keys, modules, firmware" was a
> > > > suggestion
> > > > from last year, but in my opinion still very apropos.
> > > 
> > > Yup, definitely - especially with secure boot starting to firm
> > > up 
> > > on the ARM side there's a bunch more interest in it from more 
> > > embedded applications.
> > 
> > Are we going to propose this again "formally" (i.e. sufficiently
> > clearly that the committee take note and consider it)?
> 
> Heh, we've got lots of people wanting to participate, but no-one
> really
> wanting to make the proposal, so I'll try.
> 
> internal kernel key management is becoming a bit of an uncontrolled
> mess.  We have several sources of trusted keys: the secure boot
> keyring
> (called the db database), the internal keys the kernel was compiled
> with, keys in the TPM which are declared to the kernel (this is
> another
> whole world of pain because adding this damaged the current TPM key
> management infrastructure from userspace), IMA keys (used for file
> integrity measurement), authentication and encryption keys (things
> like
> keys used to encrypt the disk, authenticate NFS roots etc).
> 
> There are several issues
> 
>    1. Population and update policy: How should we populate the
> default
>       keyrings and revocation lists?  Should we have a built in list
> of
>       absolute trust that can never be added to? I think the current
>       default here is OK: it's populate with the kernel built in keys
> and
>       nothing else.  If userspace wants to populate with, say, the
> secure
>       boot keys, then it can do so from init.  An issue here is the
>       Microsoft signing key, which most Linux people have but which
> they
>       wouldn't necessarily consider to be a source of absolute
> trust. 
>        However, third party driver vendors would like a way to get
> their
>       key trusted by the kernel so they can easily supply modules
> (This
>       isn't a binary module issue: the code is usually GPL, but the
>       vendors would like to supply updates asynchronously to the
> distro
>       release cycle).  We can say their key should be added as part
> of the
>       rpm that installs the module, but do users really want this key
>       adding to the default keyring to be trusted for non-module
>       operations?
>    2. Virtualization of the keyrings.  The issue here is that you
> don't
>       necessarily want root in a container to have full access to the
>       kernel keyrings.  It looks to me like we can use a simple per
>       namespace virtualization of the key permissions, but I don't
> think
>       this should be a topic of discussion before it has been
> proposed and
>       discussed on the containers list (which no-one has done yet, in
>       spite of my requesting).
>    3. Integration with existing key management infrastructures.  The
> issue
>       here is things like the gnome keyring and the TPM.  The TPM is
> a
>       particularly thorny problem: as a key store, the TPM has a very
>       limited storage space, so something has effectively to swap
> keys in
>       and out as they're used.  This function is currently performed
> by a
>       userspace stack called the TSS.  However, the kernel use of the
> TPM
>       effectively steals the nvram resource behind the manager's back
> and
>       can lead to resource starvation issues in the TPM and
> unexpected
>       responses back to the user space TSS.  If the kernel wants to
> use
>       TPM keys, it needs either to request them properly from the TSS
> or
>       we need to pull TPM key management fully into the kernel and
> make
>       the TSS use it.
>    4. Our current key type model is slightly confusing, because we
> have
>       about 18 different ones from specific key types: assymetric,
> secure,
>       encrypted confused with use case key types like: cifs.spnego,
>       dns_resolver and grouping types like keyring.  We should
> probably
>       document them all somewhere and encourage subsystems which
> don't use
>       them (like dm crypt) to start.  We might also consider
> discouraging
>       key type proliferation?
>    5. root (uid 0) access: should root be able to modify any keyring?
> 
> Probably a ton more issues I forgot, but others can add them.

Seems like the "signed firmware" thing should show up somewhere here.

I have an interest in that because I finally want to remove the crufty
crda etc. implementation for the wireless regulatory database and just
load a (signed) file containing the entire database (which fits in at
<4k, so size isn't an issue).

johannes
