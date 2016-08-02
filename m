Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9F3CA7AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 01:13:35 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 02ABC23B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 01:13:34 +0000 (UTC)
Message-ID: <1470100412.18751.70.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 01 Aug 2016 21:13:32 -0400
In-Reply-To: <CALCETrUj3Xkbpf4qbGDvOoPCtWTOJovmzYyuAAd+6EmkRYzkyQ@mail.gmail.com>
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
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Mon, 2016-08-01 at 17:48 -0700, Andy Lutomirski wrote:
> On Aug 1, 2016 5:33 PM, "James Bottomley" <
> James.Bottomley@hansenpartnership.com> wrote:
> > 
> > On Mon, 2016-08-01 at 14:14 -0700, Andy Lutomirski wrote:
> > > struct linux_blob_signed_data {
> > >   unsigned char magic[8];  // "LINUXSIG" -- for domain separation
> > > in
> > > case someone messes up
> > >   uint32_t version;  // = 1
> > >   unsigned char sha256[32];  // SHA256 hash of the blob
> > >   uint32_t type;  // what type of thing this is (firmware, etc)
> > >   unsigned char description[];  // the remainder of the structure
> > > is
> > > "iwlwifi-whatever.ucode", etc.
> > > };
> > 
> > Where's the signature in this?  I see a hash but not a signature.
> 
> The whole structure is signed verbatim with your favorite algorithm.

How would you specify which algorithm? if you don't know that you have
a hard time verifying. Or do you mean with a detached PKCS7 signature?

> >  However since you NAK'd them: now you're reinventing stuff pkcs7
> > already has.  pkcs7 has ASN.1 encodings of the hash and the 
> > signature, so no need to repeat it in a non standard way.  In fact, 
> > since the kernel already understands pkcs7, why not just use it 
> > (DER encoded).  pkcs7 can do an attached and detached signature 
> > format, so we could just simply use it to package signed modules.
> 
> This approach solves none of the problems I'm solving.  Using PKCS#7 
> with careful use of "authenticated attributes" does, if you're very
> careful, as I mentioned upthread.
> 
> But PKCS#7 is a legacy mess, is only compatible with sensible modern
> signature algorithms if appropriate ASN.1 bindings exist, is actively
> insecure [1], and cannot be replaced by anything else in a drop-in 
> manner if you use authattrs.

I'm not going to defend ASN.1 or PKCS#7.  The only reason to use it is
that we already have existing tools that can sign and parse it, so we
don't need anything special to sign the modules.  With a hand rolled
header, some tool needs to be built to create it.

> Also, the PKCS#7 parser in the kernel is probably many times larger 
> than a simple verifier for basically any modern signature scheme.  In
> contrast, my scheme is only a couple of lines plus the underlying 
> verifier (RSA PKCS#1 or RSA-PSS or P-256 ECDSA or whatever).  And 
> PKCS#7 isn't even needed for FIPS compliance AFAIK.

Again, don't disagree, but we already have it in the kernel, so it's
now free to use.

> AFAICT the only decent reason for supporting PKCS#7 in the kernel is 
> for compatibility with some Authenticode thing I never quite figured 
> out the use of.

Authenticode is actually microsoft bastardised PKCS7 (if you mean the
authenticode binary signature format).  It's actually the signature of
a hash which uses a MS specific contentType OID.  I'm not entirely
certain we'd ever want to support it in kernel, because it's tied to
the PE-Coff image format.

> [1] The authattr mechanism isn't internally domain-separated, so 
> signatures with authattrs can be used to generate valid signatures 
> over invalid data. I think David Howells worked around this in the 
> kernel after I pointed it out.

How?  The only fiddle I can see you doing is swapping empty attributes
for data and vice versa.

James
