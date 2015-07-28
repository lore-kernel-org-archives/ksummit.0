Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B81B0409
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 19:11:43 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CB9B679
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 19:11:42 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <1438102755.5441.184.camel@HansenPartnership.com>
References: <1438102755.5441.184.camel@HansenPartnership.com>
	<1438096213.5441.147.camel@HansenPartnership.com>
	<20436.1438090619@warthog.procyon.org.uk>
	<29850.1438100240@warthog.procyon.org.uk>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <31491.1438110696.1@warthog.procyon.org.uk>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 28 Jul 2015 20:11:36 +0100
Message-ID: <31492.1438110696@warthog.procyon.org.uk>
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

> > (1b) Assuming we want to reject any firmware blob for which we don't h=
ave a
> >      valid signature, what do we do about things for which we don't ha=
ve a
> >      signature?
> > =

> > I'm assuming that we reasonably regard the set of blobs in linux-firmw=
are -
> > and for the moment we might have to sign them all with the linux-firmw=
are
> > manager's key.  Now this might be a bad assumption, but we can't pract=
ically
> > say that we require *every* firmware vendor to give us a signature for=
 every
> > blob before we can guarantee that all of them will work.
> =

> We can make it optional.  The driver already encodes for the firmware
> location and version, if it uses request_firmware, it can easily add a
> signing key field.

Optional, as in the driver decides whether to use the facility?  or option=
al
as in we only check the signature if it is present and allow the firmware =
if
there's no signature?

> > > >  (3) If the vendors of firmware blobs supply signatures, should we
> > > >      accept those instead of or as well as linux-firmware signatur=
es?
> > > =

> > > Of course, How are you going to validate other than by trusting the
> > > vendor?  Conversely, if you don't trust the vendor, why are you load=
ing
> > > an unknown binary blob from them into a processing engine they made?
> > =

> > As previously mentioned, we have to deal with as-yet unsigned firmware
> > blobs or the validation can be worked around by simple removing the
> > signature file.
> =

> Look, you're implying signed =3D=3D trusted, right?

Not entirely.  Built-in is trusted implicitly.  But we need to go from wha=
t we
have built in.

Now, we can decide that we're happy with either building an X.509 cert int=
o a
driver or just a sha256 sum and using that to autoload the cert on a tempo=
rary
basis.  But we're going from built-in data.

> If we start signing
> stuff we're not sure should be trusted that explodes the whole model.
> Therefore, you need to establish two things
> =

>      1. What is it that we actually trust?  (I think it's the
>         transmission path from the firmware supplier, but you haven't
>         said)

I acknowledge this is a tricky point.  Currently, we don't have signatures
from vendors that we can use.  What we have is blobs either grabbed from
websites, extracted from Windows installations or provided by the vendor
directly.  Basically, we cannot trust *anything* we have at the moment.

>      2. If we can't validate 1, what do we do

We need a fallback option.  Possibly one that can be enabled/disabled from=
 the
kernel command line that allows firmware blobs with signatures set by the
linux-firmware maintainer indicating this is, to our best knowledge, a val=
id
blob.  However, that does raise the issue of how you rescind that indicati=
on.

> For 2. I think you need to leave stuff you can't validate 1. for
> unsigned and let system policy decide.  Signing is implying a trust you
> don't have and thus corrupting the trust model.

That's a fair point.

I guess what you want is:

 (1) A driver can provide a key in some fashion (exact mechanism TBD), the=
n we
     only permit firmware signed by that key.

 (2) If driver provides a key but the firmware doesn't have an associated
     signature, we reject it.

 (3) A driver can provide a hash of the firmware content and only that exa=
ct
     firmware blob is permitted (or possibly a list of alternative hashes)=
.

 (4) If a driver doesn't provide a key, we always accept the firmware.

Which means that someone can use firmware for a driver that falls into
category (4) as an attack mechanism.  Ideally, I'd like to close (4)
entirely.  We could instead:

 (4) If the firmware is signed by the linux-firmware key, we log a warning=
 but
     accept the firmware.

 (5) We reject the firmware.

Now, if we want to load keys from a userspace store by hash, we can have
request_key() do that simply enough.

Is it possible for someone to fabricate a key pair that has a specific pub=
lic
key but a random private key?  I think from the maths it's impractical in
useful time.

> In the real world, what vendor would be willing to admit their private
> key is compromised ... do you know the amount of trouble that would
> cause with their trust for other things, like UEFI ...

Microsoft might kill their key through a UEFI blacklist if it allows someo=
ne
to break into Windows.

> > > >  (6) Should module signatures contain the module name - to be matc=
hed
> > > >      against the modinfo structure after the signature is checked?
> > > =

> > > I'm agnostic on this, but if we're doing signatures, we already have=
 the
> > > sha256 of the code.  We can build a simple comparison table, so we c=
an
> > > match to the signature without knowing the name.
> > =

> > It would have to be built into the core kernel.  The Fedora kernel I'm
> > running has 4118 modules available.  That's 32 bytes per module, assum=
ing
> > simply a flat list of module digests - giving a total table size of ~1=
28K
> > of uncompressible, unswappable data.  Further, you also cannot load an=
y
> > module external to that set - so no OpenAFS, no
> =

> Why not? ... you seem to have some model in your head that you haven't
> fully elucidated, could you share.

If you have a 'simple comparison table' then presumably you have to reject
anything not in the table - otherwise what's the point having the table?

I'm assuming you're thinking that we gather digests of all 4118 modules, c=
at
them together into a table and then search the table each time we load a
module to see if the module's digest is in it.

> The firmware key database would have to be mutable.  That allows adding
> arbitrary keys at any time.

What have firmware keys got to do with it?  This particular point is about
module signatures.  Possibly it should've been in a separate discussion, b=
ut
it is related code.

> The global one key to rule them all trust model doesn't work for this.
> However, a certificate constraint setting the actual constraint properly
> would.

We can set constraints in X.509 certs easily enough.  The problem is getti=
ng
the vendor to do it right.  We could always supply them with a wrapper scr=
ipt
for openssl to do this.

> The current MS policy is hashes only, but dbx can have keys as well.

How do you have a key in the blacklist?  Do you put the public key data in
there?  I'm not clear on this.

> > However, we could also have a list of SHA256 hashes and names in the
> > linux-firmware package with its own signature that we can demand load =
using
> > request_firmware().
> =

> That means no firmware update without kernel update ... why not just
> build the firmware in in that case?

No it doesn't.  That's why the list has a signature.  The kernel checks th=
e
signature against a key it has.  This means that there can be many version=
s of
the list each with its own signature, but a kernel only needs one key.

> I mean you can have n files each with one signature, even if the format
> didn't support n signatures in one file ... essentially rendering the
> problem irrelevant.

What problem?  I'm not sure what you're referring to.  You're arguing with
supplementary information.

> X509 already solved this.

Yes.

> The authority key identifier explains how to encode trust of a public ke=
y.

Not completely.

You've missed a bit.  The AKID alone is insufficient to validate a cert
against its 'parent'.  You also have to have a cryptographic piece to do t=
he
actual validation - in this case the signature on the cert.

If the driver only supplies an AKID, that is *not* sufficient because you =
can
trivially switch crypto data whilst keeping the SKID in an X.509 cert the
same.  You cannot validate a cert's SKID against its own public key becaus=
e
there's no single defined method of generating it.

My point is that a driver cannot specify an AKID alone to select the cert =
to
verify its firmware.

David
