Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 657A59B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 16:17:26 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BAB8EF4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 16:17:25 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <1438096213.5441.147.camel@HansenPartnership.com>
References: <1438096213.5441.147.camel@HansenPartnership.com>
	<20436.1438090619@warthog.procyon.org.uk>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <29849.1438100240.1@warthog.procyon.org.uk>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 28 Jul 2015 17:17:20 +0100
Message-ID: <29850.1438100240@warthog.procyon.org.uk>
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

James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

> >  (1) Should signatures produced by the manager of the linux-firmware p=
ackage
> >      be allowed only?
> =

> Firmware is a binary blob usually with no decompilation.  How would the
> package manager know its provenance?  The only people who know are the
> people who write the driver.  If they sign, I think we have to accept
> their signature and if not, we could have a weaker level of trust on the
> package manager based on unbroken chain of transmission from the
> firmware provider, but you'd have to trust the packaging organisation.

There's an additional question here:

(1b) Assuming we want to reject any firmware blob for which we don't have =
a
     valid signature, what do we do about things for which we don't have a
     signature?

I'm assuming that we reasonably regard the set of blobs in linux-firmware =
-
and for the moment we might have to sign them all with the linux-firmware
manager's key.  Now this might be a bad assumption, but we can't practical=
ly
say that we require *every* firmware vendor to give us a signature for eve=
ry
blob before we can guarantee that all of them will work.

> >  (3) If the vendors of firmware blobs supply signatures, should we acc=
ept
> >      those instead of or as well as linux-firmware signatures?
> =

> Of course, How are you going to validate other than by trusting the
> vendor?  Conversely, if you don't trust the vendor, why are you loading
> an unknown binary blob from them into a processing engine they made?

As previously mentioned, we have to deal with as-yet unsigned firmware blo=
bs
or the validation can be worked around by simple removing the signature fi=
le.

> >  (4) If we start taking vendor created blobs, what do we do with all t=
he
> >      vendor keys?  Compiling them into the kernel could quickly get ou=
t of
> >      hand and asking the user to add them to the UEFI keystore has the
> >      potential to brick the user's system due to a dodgy BIOS.
> =

> If the vendors buy in, I assume you'll eventually get them building them
> into their drivers.

You could do that.  But it means if a vendor's private key is compromised,=
 you
have to issue a replacement kernel as well as a replacement firmware packa=
ge
instead of just the latter.  I guess you have to pick the compromise you'r=
e
willing to live with.

> In the interim, the package manager could supply the trusted keys at
> runtime.

Only if they're signed by a key trusted by the kernel - otherwise they are=
n't
trusted keys.

> >  (6) Should module signatures contain the module name - to be matched
> >      against the modinfo structure after the signature is checked?
> =

> I'm agnostic on this, but if we're doing signatures, we already have the
> sha256 of the code.  We can build a simple comparison table, so we can
> match to the signature without knowing the name.

It would have to be built into the core kernel.  The Fedora kernel I'm run=
ning
has 4118 modules available.  That's 32 bytes per module, assuming simply a
flat list of module digests - giving a total table size of ~128K of
uncompressible, unswappable data.  Further, you also cannot load any modul=
e
external to that set - so no OpenAFS, no =


> >  (7) Do we want to have the driver mandate the key that will be used w=
hen
> >      requesting firmware?  How would we specify the key?  I'm loathe t=
o
> >      include a hash of the public key since that means the driver is t=
hen
> >      tied to a particular key.
> =

> I think so ... how else would you have a true validation chain.  You
> need to ask yourself *what* your trusting.  I'm afraid the answer is
> whatever the manufacturer told you because there's no way of checking
> for firmware.

Well, you could theoretically have a validation chain if, say, LF had a ro=
ot
cert that they signed vendor's keys with that they then used to sign their
firmware and we put the root X.509 cert into the kernel.

Of course, there'd likely be politicking about this and I'm not sure LF wo=
uld
want to go there...

Also, this assumed that the vendor is interested in supporting Linux and i=
s
willing to provide a cert that the driver can reference...  We have to be =
able
to support the case where this isn't true - and where a manufacturer no lo=
nger
exists or no longer supports a product.

> >  (8) Can we then trust that key if we load it on the basis that a driv=
er
> >      specifies it by public key hash, even it we can't chain back from=
 it to
> >      the system_trusted_keyring.
> =

> What's the point of tying to the system root of trust?

Because then we can demand-load keys using add_key() or request_key() and
validate their trust by chaining.

> >  (9) Do we allow UEFI blacklisting of firmware signatures?
> =

> There has to be a blacklist mechanism, yes ... I'm not sure UEFI would
> do it, though.

IIRC, UEFI blacklisting is just a list of SHA256 hashes.

However, we could also have a list of SHA256 hashes and names in the
linux-firmware package with its own signature that we can demand load usin=
g
request_firmware().

> > Some points that may be of use in considering the above:
> > =

> >  (A) PKCS#7/CMS messages can take multiple signatures.  Extra signatur=
es can
> >      be added at a later date.
> =

> This is irrelevant in the detached signature case, isn't it?

No.  The PKCS#7 message file that is the 'signature' can have multiple dig=
ital
signatures by different keys.  As far as the PKCS#7 message is concerned, =
it's
the content that is detached.

> >  (D) The PKCS#7/CMS field that matches the signing key is not itself s=
igned.
> =

> Does it need to be?  If the field is modified, verification occurs with
> the wrong key and you get a failure.  That's logically equivalent to
> finding the field has been altered and getting a failure.

My point was that an Intel driver, say, can't say that "You must use a key
with subject /CN=3DIntel firmware/O=3DIntel" as anyone can create such a k=
ey and a
fake firmware blob that requires that key.

David
