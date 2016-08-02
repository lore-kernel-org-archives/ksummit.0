Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0ECEB724
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 00:48:52 +0000 (UTC)
Received: from mail-ua0-f179.google.com (mail-ua0-f179.google.com
	[209.85.217.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 07F48A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 00:48:50 +0000 (UTC)
Received: by mail-ua0-f179.google.com with SMTP id l32so118347493ual.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 01 Aug 2016 17:48:50 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALCETrWqpQV1AyxVx5eTkJiOe3t7ZFpSAuN2RG3JNHD-gqm0uA@mail.gmail.com>
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
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 1 Aug 2016 17:48:48 -0700
Message-ID: <CALCETrUj3Xkbpf4qbGDvOoPCtWTOJovmzYyuAAd+6EmkRYzkyQ@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: multipart/alternative; boundary=94eb2c05a69a8245d705390c14ac
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Kyle McMartin <kyle@kernel.org>, Mark Brown <broonie@sirena.org.uk>,
	Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--94eb2c05a69a8245d705390c14ac
Content-Type: text/plain; charset=UTF-8

On Aug 1, 2016 5:33 PM, "James Bottomley" <
James.Bottomley@hansenpartnership.com> wrote:
>
> On Mon, 2016-08-01 at 14:14 -0700, Andy Lutomirski wrote:
> > struct linux_blob_signed_data {
> >   unsigned char magic[8];  // "LINUXSIG" -- for domain separation in
> > case someone messes up
> >   uint32_t version;  // = 1
> >   unsigned char sha256[32];  // SHA256 hash of the blob
> >   uint32_t type;  // what type of thing this is (firmware, etc)
> >   unsigned char description[];  // the remainder of the structure is
> > "iwlwifi-whatever.ucode", etc.
> > };
>
> Where's the signature in this?  I see a hash but not a signature.

The whole structure is signed verbatim with your favorite algorithm.

>  However since you NAK'd them: now you're reinventing stuff pkcs7
> already has.  pkcs7 has ASN.1 encodings of the hash and the signature,
> so no need to repeat it in a non standard way.  In fact, since the
> kernel already understands pkcs7, why not just use it (DER encoded).
>  pkcs7 can do an attached and detached signature format, so we could
> just simply use it to package signed modules.

This approach solves none of the problems I'm solving.  Using PKCS#7 with
careful use of "authenticated attributes" does, if you're very careful, as
I mentioned upthread.

But PKCS#7 is a legacy mess, is only compatible with sensible modern
signature algorithms if appropriate ASN.1 bindings exist, is actively
insecure [1], and cannot be replaced by anything else in a drop-in manner
if you use authattrs.

Also, the PKCS#7 parser in the kernel is probably many times larger than a
simple verifier for basically any modern signature scheme.  In contrast, my
scheme is only a couple of lines plus the underlying verifier (RSA PKCS#1
or RSA-PSS or P-256 ECDSA or whatever).  And PKCS#7 isn't even needed for
FIPS compliance AFAIK.

AFAICT the only decent reason for supporting PKCS#7 in the kernel is for
compatibility with some Authenticode thing I never quite figured out the
use of.

[1] The authattr mechanism isn't internally domain-separated, so signatures
with authattrs can be used to generate valid signatures over invalid data.
I think David Howells worked around this in the kernel after I pointed it
out.

--94eb2c05a69a8245d705390c14ac
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Aug 1, 2016 5:33 PM, &quot;James Bottomley&quot; &lt;<a h=
ref=3D"mailto:James.Bottomley@hansenpartnership.com">James.Bottomley@hansen=
partnership.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Mon, 2016-08-01 at 14:14 -0700, Andy Lutomirski wrote:<br>
&gt; &gt; struct linux_blob_signed_data {<br>
&gt; &gt;=C2=A0 =C2=A0unsigned char magic[8];=C2=A0 // &quot;LINUXSIG&quot;=
 -- for domain separation in<br>
&gt; &gt; case someone messes up<br>
&gt; &gt;=C2=A0 =C2=A0uint32_t version;=C2=A0 // =3D 1<br>
&gt; &gt;=C2=A0 =C2=A0unsigned char sha256[32];=C2=A0 // SHA256 hash of the=
 blob<br>
&gt; &gt;=C2=A0 =C2=A0uint32_t type;=C2=A0 // what type of thing this is (f=
irmware, etc)<br>
&gt; &gt;=C2=A0 =C2=A0unsigned char description[];=C2=A0 // the remainder o=
f the structure is<br>
&gt; &gt; &quot;iwlwifi-whatever.ucode&quot;, etc.<br>
&gt; &gt; };<br>
&gt;<br>
&gt; Where&#39;s the signature in this?=C2=A0 I see a hash but not a signat=
ure.</p>
<p dir=3D"ltr">The whole structure is signed verbatim with your favorite al=
gorithm.</p>
<p dir=3D"ltr">&gt; =C2=A0However since you NAK&#39;d them: now you&#39;re =
reinventing stuff pkcs7<br>
&gt; already has.=C2=A0 pkcs7 has ASN.1 encodings of the hash and the signa=
ture,<br>
&gt; so no need to repeat it in a non standard way.=C2=A0 In fact, since th=
e<br>
&gt; kernel already understands pkcs7, why not just use it (DER encoded).<b=
r>
&gt; =C2=A0pkcs7 can do an attached and detached signature format, so we co=
uld<br>
&gt; just simply use it to package signed modules.</p>
<p dir=3D"ltr">This approach solves none of the problems I&#39;m solving.=
=C2=A0 Using PKCS#7 with careful use of &quot;authenticated attributes&quot=
; does, if you&#39;re very careful, as I mentioned upthread.</p>
<p dir=3D"ltr">But PKCS#7 is a legacy mess, is only compatible with sensibl=
e modern signature algorithms if appropriate ASN.1 bindings exist, is activ=
ely insecure [1], and cannot be replaced by anything else in a drop-in mann=
er if you use authattrs.</p>
<p dir=3D"ltr">Also, the PKCS#7 parser in the kernel is probably many times=
 larger than a simple verifier for basically any modern signature scheme.=
=C2=A0 In contrast, my scheme is only a couple of lines plus the underlying=
 verifier (RSA PKCS#1 or RSA-PSS or P-256 ECDSA or whatever).=C2=A0 And PKC=
S#7 isn&#39;t even needed for FIPS compliance AFAIK.</p>
<p dir=3D"ltr">AFAICT the only decent reason for supporting PKCS#7 in the k=
ernel is for compatibility with some Authenticode thing I never quite figur=
ed out the use of.</p>
<p dir=3D"ltr">[1] The authattr mechanism isn&#39;t internally domain-separ=
ated, so signatures with authattrs can be used to generate valid signatures=
 over invalid data.=C2=A0 I think David Howells worked around this in the k=
ernel after I pointed it out.</p>

--94eb2c05a69a8245d705390c14ac--
