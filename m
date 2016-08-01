Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5796178D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 23:12:18 +0000 (UTC)
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A49E9270
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 23:12:17 +0000 (UTC)
Received: by mail-vk0-f47.google.com with SMTP id x130so110427539vkc.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 01 Aug 2016 16:12:17 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160801225638.GE4541@io.lakedaemon.net>
References: <1469979098.23563.300.camel@linux.vnet.ibm.com>
	<CALCETrVQj23-0Bhsx91Z3O7BJdjDVXgPQSQUqXHoc+pd5+tfYA@mail.gmail.com>
	<1469986138.23563.312.camel@linux.vnet.ibm.com>
	<CALCETrV6y79898-+M8Mpvhm-e2_VXvSyQQPwY25YdeuJhCe1zg@mail.gmail.com>
	<20160801172920.GU3296@wotan.suse.de>
	<CALCETrX134Qnv4Xy2RAHO2QXka9_k9qAoEqrXaw-mX2kAkrzig@mail.gmail.com>
	<20160801202320.GB3296@wotan.suse.de>
	<CALCETrXZicXvXPFC=NenCCJ76rB=2shBzEfkUb4xgHh0Vrub+A@mail.gmail.com>
	<20160801205706.GE3296@wotan.suse.de>
	<CALCETrXCfZnX3MtV=DHov1+qcWZOOcEzTMXxVx5zr1QYtAVoPw@mail.gmail.com>
	<20160801225638.GE4541@io.lakedaemon.net>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 1 Aug 2016 16:12:15 -0700
Message-ID: <CALCETrWzva6_WkUuhwwFkTseb=XKM4wBSH8CM5zezDjbvgOX9Q@mail.gmail.com>
To: Jason Cooper <jason@lakedaemon.net>
Content-Type: multipart/alternative; boundary=001a1143092235ae0e05390abb39
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Kyle McMartin <kyle@kernel.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>,
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

--001a1143092235ae0e05390abb39
Content-Type: text/plain; charset=UTF-8

On Aug 1, 2016 3:56 PM, "Jason Cooper" <jason@lakedaemon.net> wrote:
>
> Hey Andy, Luis, Mimi,
>
> On Mon, Aug 01, 2016 at 02:14:52PM -0700, Andy Lutomirski wrote:
> > Or he could use my old suggestion instead: rather than signing the
> > firmware blob itself, sign a little data structure like this:
> >
> > struct linux_blob_signed_data {
> >   unsigned char magic[8];  // "LINUXSIG" -- for domain separation in
case someone messes up
> >   uint32_t version;  // = 1
> >   unsigned char sha256[32];  // SHA256 hash of the blob
> >   uint32_t type;  // what type of thing this is (firmware, etc)
> >   unsigned char description[];  // the remainder of the structure is
"iwlwifi-whatever.ucode", etc.
> > };
>
> I would include the length of the blob in here as well.

That's not a bad idea even though length extension doesn't matter here.  If
nothing else, it'll help mitigate silly DoS attacks in which a bad guy
supplies an insanely large blob.  On the other hand, any attacker is
probably root and can easily DoS us no matter what.  It could make the
implementation simpler too, I suppose.

If anyone replaced SHA256 with a boneheaded "hash" like Amazon Glacier's,
then checking the length is necessary.

--001a1143092235ae0e05390abb39
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Aug 1, 2016 3:56 PM, &quot;Jason Cooper&quot; &lt;<a href=
=3D"mailto:jason@lakedaemon.net">jason@lakedaemon.net</a>&gt; wrote:<br>
&gt;<br>
&gt; Hey Andy, Luis, Mimi,<br>
&gt;<br>
&gt; On Mon, Aug 01, 2016 at 02:14:52PM -0700, Andy Lutomirski wrote:<br>
&gt; &gt; Or he could use my old suggestion instead: rather than signing th=
e<br>
&gt; &gt; firmware blob itself, sign a little data structure like this:<br>
&gt; &gt;<br>
&gt; &gt; struct linux_blob_signed_data {<br>
&gt; &gt;=C2=A0 =C2=A0unsigned char magic[8];=C2=A0 // &quot;LINUXSIG&quot;=
 -- for domain separation in case someone messes up<br>
&gt; &gt;=C2=A0 =C2=A0uint32_t version;=C2=A0 // =3D 1<br>
&gt; &gt;=C2=A0 =C2=A0unsigned char sha256[32];=C2=A0 // SHA256 hash of the=
 blob<br>
&gt; &gt;=C2=A0 =C2=A0uint32_t type;=C2=A0 // what type of thing this is (f=
irmware, etc)<br>
&gt; &gt;=C2=A0 =C2=A0unsigned char description[];=C2=A0 // the remainder o=
f the structure is &quot;iwlwifi-whatever.ucode&quot;, etc.<br>
&gt; &gt; };<br>
&gt;<br>
&gt; I would include the length of the blob in here as well.</p>
<p dir=3D"ltr">That&#39;s not a bad idea even though length extension doesn=
&#39;t matter here.=C2=A0 If nothing else, it&#39;ll help mitigate silly Do=
S attacks in which a bad guy supplies an insanely large blob.=C2=A0 On the =
other hand, any attacker is probably root and can easily DoS us no matter w=
hat.=C2=A0 It could make the implementation simpler too, I suppose.</p>
<p dir=3D"ltr">If anyone replaced SHA256 with a boneheaded &quot;hash&quot;=
 like Amazon Glacier&#39;s, then checking the length is necessary.</p>

--001a1143092235ae0e05390abb39--
