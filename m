Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DD7D9273
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 21:54:02 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id CEF071FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 21:54:01 +0000 (UTC)
Message-ID: <1438120439.5441.229.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: David Howells <dhowells@redhat.com>
Date: Tue, 28 Jul 2015 14:53:59 -0700
In-Reply-To: <31492.1438110696@warthog.procyon.org.uk>
References: <1438102755.5441.184.camel@HansenPartnership.com>
	<1438096213.5441.147.camel@HansenPartnership.com>
	<20436.1438090619@warthog.procyon.org.uk>
	<29850.1438100240@warthog.procyon.org.uk>
	<31492.1438110696@warthog.procyon.org.uk>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: mcgrof@gmail.com, ksummit-discuss@lists.linuxfoundation.org, jkkm@jkkm.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2015-07-28 at 20:11 +0100, David Howells wrote:
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> 
> > > (1b) Assuming we want to reject any firmware blob for which we don't have a
> > >      valid signature, what do we do about things for which we don't have a
> > >      signature?
> > > 
> > > I'm assuming that we reasonably regard the set of blobs in linux-firmware -
> > > and for the moment we might have to sign them all with the linux-firmware
> > > manager's key.  Now this might be a bad assumption, but we can't practically
> > > say that we require *every* firmware vendor to give us a signature for every
> > > blob before we can guarantee that all of them will work.
> > 
> > We can make it optional.  The driver already encodes for the firmware
> > location and version, if it uses request_firmware, it can easily add a
> > signing key field.
> 
> Optional, as in the driver decides whether to use the facility?  or optional
> as in we only check the signature if it is present and allow the firmware if
> there's no signature?

If there's no signature, that depends on current policy as supplied by
the user.

> > > > >  (3) If the vendors of firmware blobs supply signatures, should we
> > > > >      accept those instead of or as well as linux-firmware signatures?
> > > > 
> > > > Of course, How are you going to validate other than by trusting the
> > > > vendor?  Conversely, if you don't trust the vendor, why are you loading
> > > > an unknown binary blob from them into a processing engine they made?
> > > 
> > > As previously mentioned, we have to deal with as-yet unsigned firmware
> > > blobs or the validation can be worked around by simple removing the
> > > signature file.
> > 
> > Look, you're implying signed == trusted, right?
> 
> Not entirely.  Built-in is trusted implicitly.  But we need to go from what we
> have built in.
> 
> Now, we can decide that we're happy with either building an X.509 cert into a
> driver or just a sha256 sum and using that to autoload the cert on a temporary
> basis.  But we're going from built-in data.
> 
> > If we start signing
> > stuff we're not sure should be trusted that explodes the whole model.
> > Therefore, you need to establish two things
> > 
> >      1. What is it that we actually trust?  (I think it's the
> >         transmission path from the firmware supplier, but you haven't
> >         said)
> 
> I acknowledge this is a tricky point.  Currently, we don't have signatures
> from vendors that we can use.  What we have is blobs either grabbed from
> websites, extracted from Windows installations or provided by the vendor
> directly.  Basically, we cannot trust *anything* we have at the moment.
> 
> >      2. If we can't validate 1, what do we do
> 
> We need a fallback option.  Possibly one that can be enabled/disabled from the
> kernel command line that allows firmware blobs with signatures set by the
> linux-firmware maintainer indicating this is, to our best knowledge, a valid
> blob.  However, that does raise the issue of how you rescind that indication.
> 
> > For 2. I think you need to leave stuff you can't validate 1. for
> > unsigned and let system policy decide.  Signing is implying a trust you
> > don't have and thus corrupting the trust model.
> 
> That's a fair point.
> 
> I guess what you want is:
> 
>  (1) A driver can provide a key in some fashion (exact mechanism TBD), then we
>      only permit firmware signed by that key.

Right ... I'm assuming signed drivers have to be part of this?  So
validating the key within the driver is assumed to have been done by
whoever built the kernel.

>  (2) If driver provides a key but the firmware doesn't have an associated
>      signature, we reject it.

The driver should have a policy recommendation along with the key:
Require signing or follow system policy.  This would allow for a
transition period with mixed signed/unsigned firmware.

>  (3) A driver can provide a hash of the firmware content and only that exact
>      firmware blob is permitted (or possibly a list of alternative hashes).

Yes.

>  (4) If a driver doesn't provide a key, we always accept the firmware.

No, we follow system policy.  If the system policy is no unsigned
firmware, then the driver fails to load.  If policy says 

> Which means that someone can use firmware for a driver that falls into
> category (4) as an attack mechanism.  Ideally, I'd like to close (4)
> entirely.  We could instead:
> 
>  (4) If the firmware is signed by the linux-firmware key, we log a warning but
>      accept the firmware.
> 
>  (5) We reject the firmware.
> 
> Now, if we want to load keys from a userspace store by hash, we can have
> request_key() do that simply enough.
> 
> Is it possible for someone to fabricate a key pair that has a specific public
> key but a random private key?  I think from the maths it's impractical in
> useful time.

You're asking if it's possible to subvert the entire basis for our
current PKI schemes? ... I really hope not.  To generate a private key,
you'd either have to be incredibly lucky, be able to factor the modulus
or take a discrete logarithm, the latter two are still unsolved (in
reasonable time) mathematical problems.

> > In the real world, what vendor would be willing to admit their private
> > key is compromised ... do you know the amount of trouble that would
> > cause with their trust for other things, like UEFI ...
> 
> Microsoft might kill their key through a UEFI blacklist if it allows someone
> to break into Windows.
> 
> > > > >  (6) Should module signatures contain the module name - to be matched
> > > > >      against the modinfo structure after the signature is checked?
> > > > 
> > > > I'm agnostic on this, but if we're doing signatures, we already have the
> > > > sha256 of the code.  We can build a simple comparison table, so we can
> > > > match to the signature without knowing the name.
> > > 
> > > It would have to be built into the core kernel.  The Fedora kernel I'm
> > > running has 4118 modules available.  That's 32 bytes per module, assuming
> > > simply a flat list of module digests - giving a total table size of ~128K
> > > of uncompressible, unswappable data.  Further, you also cannot load any
> > > module external to that set - so no OpenAFS, no
> > 
> > Why not? ... you seem to have some model in your head that you haven't
> > fully elucidated, could you share.
> 
> If you have a 'simple comparison table' then presumably you have to reject
> anything not in the table - otherwise what's the point having the table?
> 
> I'm assuming you're thinking that we gather digests of all 4118 modules, cat
> them together into a table and then search the table each time we load a
> module to see if the module's digest is in it.

Um, wouldn't the hash be in the module ... and the module is validated
at load time by whatever kernel mechanism we're using.

> > The firmware key database would have to be mutable.  That allows adding
> > arbitrary keys at any time.
> 
> What have firmware keys got to do with it?  This particular point is about
> module signatures.  Possibly it should've been in a separate discussion, but
> it is related code.

OK, now I'm confused ... I was assuming based on what happened in 2012
at the Kernel Summit that signed modules is an agreed reality, so I was
presuming this was an extension scheme for signed firmware.  We can thus
take it that anything in a module is validated.

> > The global one key to rule them all trust model doesn't work for this.
> > However, a certificate constraint setting the actual constraint properly
> > would.
> 
> We can set constraints in X.509 certs easily enough.  The problem is getting
> the vendor to do it right.  We could always supply them with a wrapper script
> for openssl to do this.
> 
> > The current MS policy is hashes only, but dbx can have keys as well.
> 
> How do you have a key in the blacklist?  Do you put the public key data in
> there?  I'm not clear on this.

A key can be added either its full public key part of the certificate.
Um, other mechanisms are under discussion and may be published ... I'll
have to check what's actually public before answering more fully.

> > > However, we could also have a list of SHA256 hashes and names in the
> > > linux-firmware package with its own signature that we can demand load using
> > > request_firmware().
> > 
> > That means no firmware update without kernel update ... why not just
> > build the firmware in in that case?
> 
> No it doesn't.  That's why the list has a signature.  The kernel checks the
> signature against a key it has.  This means that there can be many versions of
> the list each with its own signature, but a kernel only needs one key.

I'm confused ... signed by what?  A digital signature is simply an
encrypted hash.  The key that encrypts the hash is the signing key and
the hash identifies some blob of data that is now signed.

> > I mean you can have n files each with one signature, even if the format
> > didn't support n signatures in one file ... essentially rendering the
> > problem irrelevant.
> 
> What problem?  I'm not sure what you're referring to.  You're arguing with
> supplementary information.

OK, I think we're talking past each other.

> > X509 already solved this.
> 
> Yes.
> 
> > The authority key identifier explains how to encode trust of a public key.
> 
> Not completely.
> 
> You've missed a bit.  The AKID alone is insufficient to validate a cert
> against its 'parent'.  You also have to have a cryptographic piece to do the
> actual validation - in this case the signature on the cert.

Right, that's why I said X509 solved it.

> If the driver only supplies an AKID, that is *not* sufficient because you can
> trivially switch crypto data whilst keeping the SKID in an X.509 cert the
> same.  You cannot validate a cert's SKID against its own public key because
> there's no single defined method of generating it.

What problem are you trying to solve?  An X509 cert is signed by the
parent.  You can't swap data without the signature going invalid.  The
TBS data only has the subject ID, true, but the authenticated
attributes, which have the IDs cannot be altered without rendering the
signature invalid.  For a self signed certificate, you can do this, but
they're only used for CA roots.

> My point is that a driver cannot specify an AKID alone to select the cert to
> verify its firmware.

OK, I still don't understand why.  If we can specify a key or a hash,
why not an KID, which is simply a hash of a public key?

James
