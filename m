Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 71B0E94B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 19:37:09 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 53E2F1C9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 19:37:08 +0000 (UTC)
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u6RJa0X1054184 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 15:37:07 -0400
Received: from e23smtp04.au.ibm.com (e23smtp04.au.ibm.com [202.81.31.146])
	by mx0a-001b2d01.pphosted.com with ESMTP id 24e0gmwf5s-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 15:37:07 -0400
Received: from localhost
	by e23smtp04.au.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Thu, 28 Jul 2016 05:37:05 +1000
Received: from d23relay06.au.ibm.com (d23relay06.au.ibm.com [9.185.63.219])
	by d23dlp03.au.ibm.com (Postfix) with ESMTP id 3995C3578053
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 05:37:03 +1000 (EST)
Received: from d23av03.au.ibm.com (d23av03.au.ibm.com [9.190.234.97])
	by d23relay06.au.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	u6RJb3Nt23658708 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 05:37:03 +1000
Received: from d23av03.au.ibm.com (localhost [127.0.0.1])
	by d23av03.au.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	u6RJb2pr028942 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 05:37:03 +1000
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Date: Wed, 27 Jul 2016 15:37:00 -0400
In-Reply-To: <1469637367.27356.73.camel@HansenPartnership.com>
References: <1469631987.27356.48.camel@HansenPartnership.com>
	<20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<14209.1469636040@warthog.procyon.org.uk>
	<1469636881.27356.70.camel@HansenPartnership.com>
	<1469637367.27356.73.camel@HansenPartnership.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <1469648220.23563.15.camel@linux.vnet.ibm.com>
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

On Mi, 2016-07-27 at 12:36 -0400, James Bottomley wrote:
> On Wed, 2016-07-27 at 12:28 -0400, James Bottomley wrote:
> > On Wed, 2016-07-27 at 17:14 +0100, David Howells wrote:
> > > James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> > > 
> > > >    1. Population and update policy: How should we populate the default
> > > >       keyrings and revocation lists?  Should we have a built in list of
> > > >       absolute trust that can never be added to? I think the current
> > > >       default here is OK: it's populate with the kernel built in keys and
> > > >       nothing else.  If userspace wants to populate with, say, the secure
> > > >       boot keys, then it can do so from init.  An issue here is the
> > > >       Microsoft signing key, which most Linux people have but which they
> > > >       wouldn't necessarily consider to be a source of absolute trust. 
> > > >        However, third party driver vendors would like a way to get their
> > > >       key trusted by the kernel so they can easily supply modules (This
> > > >       isn't a binary module issue: the code is usually GPL, but the
> > > >       vendors would like to supply updates asynchronously to the distro
> > > >       release cycle).  We can say their key should be added as part of the
> > > >       rpm that installs the module, but do users really want this key
> > > >       adding to the default keyring to be trusted for non-module
> > > >       operations?
> > > 
> > > I have patches that allow the UEFI key and blacklist databases to 
> > > add to the kernel keyrings during boot.
> > > 
> > > We don't want to permit loading a key from a file once the kernel 
> > > is booted unless that key is signed by a key already in the
> > > keyrings.
> > 
> > This is a policy discussion we should have.  If you populate the
> > immutable .builtin_trusted_keys keyring with the secure boot keys, 
> > most people will end up with a Microsoft key in their keyring (and
> > possibly even some random motherboard vendor ODM key) which they 
> > can't remove.  I thought the idea was to use the 
> > .secondary_trusted_keys keyring which is mutable?  That way we can 
> > have policy in userspace select which secure boot keys we might like
> > to trust.
> 
> As an aside to the aside, perhaps we want the .builtin_trusted_keys to
> be mutable up to the point the kernel finishes init and then immutable
> after.  That would allow us to update it from the initrd if the
> composition of the secure boot keys was in question.

A lot of work went into making the builtin keyring have only the builtin
kernel keys, that are trusted, because the kernel was signed and
verified.  Even if I trusted a set of keys during boot, different keys
are trusted at different layers for different things.  

For example, the UEFI/shim keys are trusted at the UEFI layer.   If the
UEFI keys are needed once the system is up and running for some reason,
then load them on a separate UEFI keyring.   Allow the host owner to
have the ability to decide whether to trust these keys for verifying
signatures.

I would like to see separate trusted keyrings for firmware, kernel
modules, etc, where only keys signed by a key on the builtin keyring
could be added to them. With Mehmet Kaylaap patch set, additional keys
can be added to the builtin keyring post build.  Those keys are trusted
because the kernel itself is re-signed.

Mimi
