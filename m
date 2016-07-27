Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3CFBE955
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 17:20:59 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A40B6286
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 17:20:58 +0000 (UTC)
Date: Wed, 27 Jul 2016 19:20:55 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160727172055.GE5537@wotan.suse.de>
References: <1469631987.27356.48.camel@HansenPartnership.com>
	<20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<14209.1469636040@warthog.procyon.org.uk>
	<1469636881.27356.70.camel@HansenPartnership.com>
	<1469637367.27356.73.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1469637367.27356.73.camel@HansenPartnership.com>
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

On Wed, Jul 27, 2016 at 12:36:07PM -0400, James Bottomley wrote:
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

Are you aware of other similar uses before ?

  Luis
