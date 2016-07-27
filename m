Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F375794D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 19:50:47 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3FC1E187
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 19:50:47 +0000 (UTC)
Message-ID: <1469649042.27356.109.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 27 Jul 2016 15:50:42 -0400
In-Reply-To: <CALCETrXg6+jFWmycaKu2o=BbDytn+vyGxxY5AQTCo0RoxySvCw@mail.gmail.com>
References: <1469631987.27356.48.camel@HansenPartnership.com>
	<20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<13539.1469633840@warthog.procyon.org.uk>
	<1469636088.27356.60.camel@HansenPartnership.com>
	<CALCETrU5fckZxc_HtuQxGC-425uaQqXt9-Yk_C63yTPuBa863w@mail.gmail.com>
	<1469646020.27356.97.camel@HansenPartnership.com>
	<CALCETrXg6+jFWmycaKu2o=BbDytn+vyGxxY5AQTCo0RoxySvCw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Mark Brown <broonie@sirena.org.uk>,
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

On Wed, 2016-07-27 at 12:20 -0700, Andy Lutomirski wrote:
> On Wed, Jul 27, 2016 at 12:00 PM, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > On Wed, 2016-07-27 at 10:57 -0700, Andy Lutomirski wrote:
> > > On Wed, Jul 27, 2016 at 9:14 AM, James Bottomley
> > > <James.Bottomley@hansenpartnership.com> wrote:
> > > > On Wed, 2016-07-27 at 16:37 +0100, David Howells wrote:
> > > > > James Bottomley <James.Bottomley@HansenPartnership.com>
> > > > > wrote:
> > > > > 
> > > > > >    3. Integration with existing key management
> > > > > > infrastructures.
> > > > > >   The issue
> > > > > >       here is things like the gnome keyring and the TPM. 
> > > > > >  The
> > > > > > TPM is a
> > > > > >       particularly thorny problem: as a key store, the TPM
> > > > > > has
> > > > > > a very
> > > > > >       limited storage space, so something has effectively
> > > > > > to
> > > > > > swap keys in
> > > > > >       and out as they're used.  This function is currently
> > > > > > performed by a
> > > > > >       userspace stack called the TSS.  However, the kernel
> > > > > > use
> > > > > > of the TPM
> > > > > >       effectively steals the nvram resource behind the
> > > > > > manager's back and
> > > > > >       can lead to resource starvation issues in the TPM and
> > > > > > unexpected
> > > > > >       responses back to the user space TSS.  If the kernel
> > > > > > wants to use
> > > > > >       TPM keys, it needs either to request them properly
> > > > > > from
> > > > > > the TSS or
> > > > > >       we need to pull TPM key management fully into the
> > > > > > kernel
> > > > > > and make
> > > > > >       the TSS use it.
> > > > > 
> > > > > I have partial patches for this, but they're against an old, 
> > > > > pre-tpm2 version of the kernel and need updating.  They 
> > > > > expose TPM keys as a subtype of the asymmetric key type.
> > > > 
> > > > Heh, you really know how to poke a sore spot, since we 
> > > > effectively have two TSSs in Linux: trousers the TPM 1.1 and 
> > > > 1.2 compatible one and ibmtpm20tss for TPM 2.0.  I don't think 
> > > > we have an answer on how we make them work compatibly.  I'm 
> > > > sort of hoping to get some coherence in the TPM Microconference
> > > > at Plumbers
> > > > 
> > > > http://www.linuxplumbersconf.org/2016/ocw/events/LPC2016/tracks
> > > > /585
> > > > 
> > > > However, if we do an upcall to the TSS, then we can't use TPM 
> > > > keys in the pre-boot and have difficulty using them in initrd
> > > > environments, which seems like it might cause problems.
> > > > 
> > > 
> > > I think this nuts.  The kernel should arbitrate use of the TPM's 
> > > key slots and handle context switching.  Doing it in userspace is 
> > > a terrible idea for this and other reasons. 
> > 
> > Hey, I don't disagree, but the user space TSS would have to be 
> > updated as well if we did this.  Right at the moment, the tpmd in 
> > the kernel is a straight TPM command pass through.  We'd need a 
> > more complex interface if the kernel is actually going to manage 
> > TPM key slots.   I think it means quite a big code change, both in 
> > the kernel and for the new interface and for the TSS.
> 
> I admit it's been a while since I read the TPM protocol specs, but I
> think it might be doable without breaking compatibility.  We could
> pretend to pass commands through but instead either emulate a TPM 
> with a whole lot of slots or emulate a TPM with somewhat fewer slots 
> than the real one and remap the slot numbering as needed.

Been there, done that, got the flashing bow tie from our TPM experts as
a "here's a shiny thing small kernel person, you play with it while we
solve the hard security problems" prize.

The reason it doesn't work as simply is that TPM commands mostly
require authentication and may be encrypted (transport wrapped in TPM
speak).  For commands which manipulate keys, the key handle may be part
of the HMAC authentication verifier, so we can't simply replace the key
handle without the HMAC failing to verify or they're encrypted, in
which case we can't even see what the handle is.  The reason the TSS
can do this is that it generates the HMAC and even the wrapping.  It's
hard to see how to solve this without either pulling the whole TSS into
the kernel (yuk) or having a sideband API where the kernel and the TSS
co-operate on key slot handling.

> > Anyway, I put it on the proposed agenda for the Plumbers TPM
> > discussions:
> > 
> > http://wiki.linuxplumbersconf.org/2016:tpms
> 
> If I manage to still be in town, I'll try to make it to that session.

Great, thanks!

James


> --Andy
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
