Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9CA4A951
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 18:57:51 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2FEA52C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 18:57:51 +0000 (UTC)
Date: Wed, 27 Jul 2016 20:57:48 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160727185748.GK5537@wotan.suse.de>
References: <20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<14209.1469636040@warthog.procyon.org.uk>
	<1469636881.27356.70.camel@HansenPartnership.com>
	<1469637367.27356.73.camel@HansenPartnership.com>
	<20160727172055.GE5537@wotan.suse.de>
	<1469641875.27356.92.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1469641875.27356.92.camel@HansenPartnership.com>
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

On Wed, Jul 27, 2016 at 01:51:15PM -0400, James Bottomley wrote:
> On Wed, 2016-07-27 at 19:20 +0200, Luis R. Rodriguez wrote:
> > > As an aside to the aside, perhaps we want the .builtin_trusted_keys 
> > > to be mutable up to the point the kernel finishes init and then
> > > immutable after.  That would allow us to update it from the initrd 
> > > if the composition of the secure boot keys was in question.
> > 
> > Are you aware of other similar uses before ?
> 
> Similar uses of what?
> 
> Runtime immutable but boot time mutable?  Yes, it's the UEFI variable
> lock protocol.
> 
> Not wanting to put Microsoft keys in the immutable trusted keyring? No,
> it was just a suspicion based on how I'd feel if my secure boot system
> still had a MS key.

I'm currently generalizing some APIs for custom section uses, and
this may be one use case to generalize further. If this is done 
per variable rather than per section, that's different though. Of
course we may still want this done per section instead, up to
implementation.

  Luis
