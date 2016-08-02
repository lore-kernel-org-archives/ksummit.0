Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 56BC37AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 01:24:02 +0000 (UTC)
Received: from mail-vk0-f44.google.com (mail-vk0-f44.google.com
	[209.85.213.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A50EB1AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 01:24:00 +0000 (UTC)
Received: by mail-vk0-f44.google.com with SMTP id w127so112035454vkh.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 01 Aug 2016 18:24:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1470100412.18751.70.camel@HansenPartnership.com>
References: <1469934481.23563.274.camel@linux.vnet.ibm.com>
	<CALCETrWq0UZ176EKrp2jNkjFFn17twb8ZvfGKtRdD5E=iFAnBw@mail.gmail.com>
	<1469979098.23563.300.camel@linux.vnet.ibm.com>
	<CALCETrVQj23-0Bhsx91Z3O7BJdjDVXgPQSQUqXHoc+pd5+tfYA@mail.gmail.com>
	<1469986138.23563.312.camel@linux.vnet.ibm.com>
	<CALCETrV6y79898-+M8Mpvhm-e2_VXvSyQQPwY25YdeuJhCe1zg@mail.gmail.com>
	<20160801172920.GU3296@wotan.suse.de>
	<CALCETrX134Qnv4Xy2RAHO2QXka9_k9qAoEqrXaw-mX2kAkrzig@mail.gmail.com>
	<20160801202320.GB3296@wotan.suse.de>
	<CALCETrXZicXvXPFC=NenCCJ76rB=2shBzEfkUb4xgHh0Vrub+A@mail.gmail.com>
	<20160801205706.GE3296@wotan.suse.de>
	<CALCETrXCfZnX3MtV=DHov1+qcWZOOcEzTMXxVx5zr1QYtAVoPw@mail.gmail.com>
	<1470098031.18751.58.camel@HansenPartnership.com>
	<CALCETrXHfUULy-EB13Kbkjwco-2UVgsuRsG+OicZT6_uOkzeqA@mail.gmail.com>
	<CALCETrWqpQV1AyxVx5eTkJiOe3t7ZFpSAuN2RG3JNHD-gqm0uA@mail.gmail.com>
	<CALCETrUj3Xkbpf4qbGDvOoPCtWTOJovmzYyuAAd+6EmkRYzkyQ@mail.gmail.com>
	<1470100412.18751.70.camel@HansenPartnership.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 1 Aug 2016 18:23:38 -0700
Message-ID: <CALCETrUnhQ_4J_hOBG-Z5aSbF=rEkKckbnA46PUs1ZL0vY3Uew@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Cc: Johannes Berg <johannes@sipsolutions.net>, Kyle McMartin <kyle@kernel.org>,
	Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mark Brown <broonie@sirena.org.uk>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 1, 2016 at 6:13 PM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Mon, 2016-08-01 at 17:48 -0700, Andy Lutomirski wrote:
>> On Aug 1, 2016 5:33 PM, "James Bottomley" <
>> James.Bottomley@hansenpartnership.com> wrote:
>> >
>> > On Mon, 2016-08-01 at 14:14 -0700, Andy Lutomirski wrote:
>> > > struct linux_blob_signed_data {
>> > >   unsigned char magic[8];  // "LINUXSIG" -- for domain separation
>> > > in
>> > > case someone messes up
>> > >   uint32_t version;  // = 1
>> > >   unsigned char sha256[32];  // SHA256 hash of the blob
>> > >   uint32_t type;  // what type of thing this is (firmware, etc)
>> > >   unsigned char description[];  // the remainder of the structure
>> > > is
>> > > "iwlwifi-whatever.ucode", etc.
>> > > };
>> >
>> > Where's the signature in this?  I see a hash but not a signature.
>>
>> The whole structure is signed verbatim with your favorite algorithm.
>
> How would you specify which algorithm? if you don't know that you have
> a hard time verifying. Or do you mean with a detached PKCS7 signature?

I'm intentionally not specifying this.  The user of the scheme is
responsible for supplying a signed linux_blob_signed_data object.
They can do it however they want (PKCS#7 detached signatures, PKCS#7
non-detached signatures, raw Ed25519 blobs, whatever).  They'll have
to feed this to the kernel somehow along with sufficient information
for the kernel to figure out which key it's supposed to use.  The key
determines the signature algorithm to use.

This isn't much different from PKCS#7 signatures in this regard except
that PKCS#7 give an (awkward) indication of which key to use.  But the
kernel could just as easily try all the keys -- there really shouldn't
be that many.

>
>> >  However since you NAK'd them: now you're reinventing stuff pkcs7
>> > already has.  pkcs7 has ASN.1 encodings of the hash and the
>> > signature, so no need to repeat it in a non standard way.  In fact,
>> > since the kernel already understands pkcs7, why not just use it
>> > (DER encoded).  pkcs7 can do an attached and detached signature
>> > format, so we could just simply use it to package signed modules.
>>
>> This approach solves none of the problems I'm solving.  Using PKCS#7
>> with careful use of "authenticated attributes" does, if you're very
>> careful, as I mentioned upthread.
>>
>> But PKCS#7 is a legacy mess, is only compatible with sensible modern
>> signature algorithms if appropriate ASN.1 bindings exist, is actively
>> insecure [1], and cannot be replaced by anything else in a drop-in
>> manner if you use authattrs.
>
> I'm not going to defend ASN.1 or PKCS#7.  The only reason to use it is
> that we already have existing tools that can sign and parse it, so we
> don't need anything special to sign the modules.  With a hand rolled
> header, some tool needs to be built to create it.

True, but we're really talking about ten lines of code here.

>
>> Also, the PKCS#7 parser in the kernel is probably many times larger
>> than a simple verifier for basically any modern signature scheme.  In
>> contrast, my scheme is only a couple of lines plus the underlying
>> verifier (RSA PKCS#1 or RSA-PSS or P-256 ECDSA or whatever).  And
>> PKCS#7 isn't even needed for FIPS compliance AFAIK.
>
> Again, don't disagree, but we already have it in the kernel, so it's
> now free to use.

But not free to audit :-/

>
>> AFAICT the only decent reason for supporting PKCS#7 in the kernel is
>> for compatibility with some Authenticode thing I never quite figured
>> out the use of.
>
> Authenticode is actually microsoft bastardised PKCS7 (if you mean the
> authenticode binary signature format).  It's actually the signature of
> a hash which uses a MS specific contentType OID.  I'm not entirely
> certain we'd ever want to support it in kernel, because it's tied to
> the PE-Coff image format.

I had the impression that we wanted to support that.  I would have
argued harder against PKCS#7 in kernel if it weren't for that.

>
>> [1] The authattr mechanism isn't internally domain-separated, so
>> signatures with authattrs can be used to generate valid signatures
>> over invalid data. I think David Howells worked around this in the
>> kernel after I pointed it out.
>
> How?  The only fiddle I can see you doing is swapping empty attributes
> for data and vice versa.

Every valid PKCS#7 signature with authattrs is also a valid PKCS#7
without authattrs over a messy ASN.1 object that contains the
authattrs.  They forgot to make the thing that's fed to the raw
signature primitive distinct for the two modes.

--Andy
