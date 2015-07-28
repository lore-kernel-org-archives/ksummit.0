Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 312D640D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 16:59:31 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 36C041C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 16:59:17 +0000 (UTC)
Message-ID: <1438102755.5441.184.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: David Howells <dhowells@redhat.com>
Date: Tue, 28 Jul 2015 09:59:15 -0700
In-Reply-To: <29850.1438100240@warthog.procyon.org.uk>
References: <1438096213.5441.147.camel@HansenPartnership.com>
	<20436.1438090619@warthog.procyon.org.uk>
	<29850.1438100240@warthog.procyon.org.uk>
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

On Tue, 2015-07-28 at 17:17 +0100, David Howells wrote:
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> 
> > >  (1) Should signatures produced by the manager of the linux-firmware package
> > >      be allowed only?
> > 
> > Firmware is a binary blob usually with no decompilation.  How would the
> > package manager know its provenance?  The only people who know are the
> > people who write the driver.  If they sign, I think we have to accept
> > their signature and if not, we could have a weaker level of trust on the
> > package manager based on unbroken chain of transmission from the
> > firmware provider, but you'd have to trust the packaging organisation.
> 
> There's an additional question here:
> 
> (1b) Assuming we want to reject any firmware blob for which we don't have a
>      valid signature, what do we do about things for which we don't have a
>      signature?
> 
> I'm assuming that we reasonably regard the set of blobs in linux-firmware -
> and for the moment we might have to sign them all with the linux-firmware
> manager's key.  Now this might be a bad assumption, but we can't practically
> say that we require *every* firmware vendor to give us a signature for every
> blob before we can guarantee that all of them will work.

We can make it optional.  The driver already encodes for the firmware
location and version, if it uses request_firmware, it can easily add a
signing key field.

> > >  (3) If the vendors of firmware blobs supply signatures, should we accept
> > >      those instead of or as well as linux-firmware signatures?
> > 
> > Of course, How are you going to validate other than by trusting the
> > vendor?  Conversely, if you don't trust the vendor, why are you loading
> > an unknown binary blob from them into a processing engine they made?
> 
> As previously mentioned, we have to deal with as-yet unsigned firmware blobs
> or the validation can be worked around by simple removing the signature file.

Look, you're implying signed == trusted, right?  If we start signing
stuff we're not sure should be trusted that explodes the whole model.
Therefore, you need to establish two things

     1. What is it that we actually trust?  (I think it's the
        transmission path from the firmware supplier, but you haven't
        said)
     2. If we can't validate 1, what do we do

For 2. I think you need to leave stuff you can't validate 1. for
unsigned and let system policy decide.  Signing is implying a trust you
don't have and thus corrupting the trust model.

> > >  (4) If we start taking vendor created blobs, what do we do with all the
> > >      vendor keys?  Compiling them into the kernel could quickly get out of
> > >      hand and asking the user to add them to the UEFI keystore has the
> > >      potential to brick the user's system due to a dodgy BIOS.
> > 
> > If the vendors buy in, I assume you'll eventually get them building them
> > into their drivers.
> 
> You could do that.  But it means if a vendor's private key is compromised, you
> have to issue a replacement kernel as well as a replacement firmware package
> instead of just the latter.  I guess you have to pick the compromise you're
> willing to live with.

In the real world, what vendor would be willing to admit their private
key is compromised ... do you know the amount of trouble that would
cause with their trust for other things, like UEFI ...

However, we handle in the same way.  Global key or sig blacklist.

> > In the interim, the package manager could supply the trusted keys at
> > runtime.
> 
> Only if they're signed by a key trusted by the kernel - otherwise they aren't
> trusted keys.

That depends what model we use to convey trust.  It's the same problem
as adding a key to the kernel keyring ... one for which we have an
existing set of solutions.

> > >  (6) Should module signatures contain the module name - to be matched
> > >      against the modinfo structure after the signature is checked?
> > 
> > I'm agnostic on this, but if we're doing signatures, we already have the
> > sha256 of the code.  We can build a simple comparison table, so we can
> > match to the signature without knowing the name.
> 
> It would have to be built into the core kernel.  The Fedora kernel I'm running
> has 4118 modules available.  That's 32 bytes per module, assuming simply a
> flat list of module digests - giving a total table size of ~128K of
> uncompressible, unswappable data.  Further, you also cannot load any module
> external to that set - so no OpenAFS, no 

Why not? ... you seem to have some model in your head that you haven't
fully elucidated, could you share.  The firmware key database would have
to be mutable.  That allows adding arbitrary keys at any time.

> > >  (7) Do we want to have the driver mandate the key that will be used when
> > >      requesting firmware?  How would we specify the key?  I'm loathe to
> > >      include a hash of the public key since that means the driver is then
> > >      tied to a particular key.
> > 
> > I think so ... how else would you have a true validation chain.  You
> > need to ask yourself *what* your trusting.  I'm afraid the answer is
> > whatever the manufacturer told you because there's no way of checking
> > for firmware.
> 
> Well, you could theoretically have a validation chain if, say, LF had a root
> cert that they signed vendor's keys with that they then used to sign their
> firmware and we put the root X.509 cert into the kernel.

No, that's Andy's point.  I don't trust fly by night USB vendor to have
a key in my total trust ring.  We need a segmented trust model.

> Of course, there'd likely be politicking about this and I'm not sure LF would
> want to go there...

The global one key to rule them all trust model doesn't work for this.
However, a certificate constraint setting the actual constraint properly
would.

> Also, this assumed that the vendor is interested in supporting Linux and is
> willing to provide a cert that the driver can reference...  We have to be able
> to support the case where this isn't true - and where a manufacturer no longer
> exists or no longer supports a product.

That comes down to what do you trust, see above.

> > >  (8) Can we then trust that key if we load it on the basis that a driver
> > >      specifies it by public key hash, even it we can't chain back from it to
> > >      the system_trusted_keyring.
> > 
> > What's the point of tying to the system root of trust?
> 
> Because then we can demand-load keys using add_key() or request_key() and
> validate their trust by chaining.

Right, so this is an update model, but for the current global trust
database.  As has been discussed above this is too dangerous for third
party firmware keys.

> > >  (9) Do we allow UEFI blacklisting of firmware signatures?
> > 
> > There has to be a blacklist mechanism, yes ... I'm not sure UEFI would
> > do it, though.
> 
> IIRC, UEFI blacklisting is just a list of SHA256 hashes.

No, it isn't, that might be why UEFI people present, who've already been
dealing with this for UEFI driver blobs, might be sensible.

The current MS policy is hashes only, but dbx can have keys as well.

> However, we could also have a list of SHA256 hashes and names in the
> linux-firmware package with its own signature that we can demand load using
> request_firmware().

That means no firmware update without kernel update ... why not just
build the firmware in in that case?

> > > Some points that may be of use in considering the above:
> > > 
> > >  (A) PKCS#7/CMS messages can take multiple signatures.  Extra signatures can
> > >      be added at a later date.
> > 
> > This is irrelevant in the detached signature case, isn't it?
> 
> No.  The PKCS#7 message file that is the 'signature' can have multiple digital
> signatures by different keys.  As far as the PKCS#7 message is concerned, it's
> the content that is detached.

I mean you can have n files each with one signature, even if the format
didn't support n signatures in one file ... essentially rendering the
problem irrelevant.

> > >  (D) The PKCS#7/CMS field that matches the signing key is not itself signed.
> > 
> > Does it need to be?  If the field is modified, verification occurs with
> > the wrong key and you get a failure.  That's logically equivalent to
> > finding the field has been altered and getting a failure.
> 
> My point was that an Intel driver, say, can't say that "You must use a key
> with subject /CN=Intel firmware/O=Intel" as anyone can create such a key and a
> fake firmware blob that requires that key.

X509 already solved this.  The authority key identifier explains how to
encode trust of a public key.  We don't have to use their solution, but
equally we don't have to fret about problems the security community
already addressed.

James

> David
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
