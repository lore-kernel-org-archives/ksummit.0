Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 07E019F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 03:29:19 +0000 (UTC)
Received: from mail-ua0-f176.google.com (mail-ua0-f176.google.com
	[209.85.217.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 501A521F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 03:29:18 +0000 (UTC)
Received: by mail-ua0-f176.google.com with SMTP id 35so31060275uap.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 20:29:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1469675852.23563.138.camel@linux.vnet.ibm.com>
References: <1469631987.27356.48.camel@HansenPartnership.com>
	<20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<14209.1469636040@warthog.procyon.org.uk>
	<1469636881.27356.70.camel@HansenPartnership.com>
	<1469637367.27356.73.camel@HansenPartnership.com>
	<1469648220.23563.15.camel@linux.vnet.ibm.com>
	<CALCETrXWVTmbuUa-d7EH2kGRZM+HCiqje11AqxWm7ntd5fjLDg@mail.gmail.com>
	<1469660063.23563.81.camel@linux.vnet.ibm.com>
	<CALCETrW-yKZpS7ZYw_ASLwfDTLxMz3rU4k7RxEK8YwJM9pZiTA@mail.gmail.com>
	<1469675852.23563.138.camel@linux.vnet.ibm.com>
Date: Wed, 27 Jul 2016 20:29:17 -0700
Message-ID: <CALCETrWcor7BiQpH58Jr8XU5qHvCv7-qW0fMz7iXqWGPv-QDXg@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
To: Mimi Zohar <zohar@linux.vnet.ibm.com>
Content-Type: multipart/alternative; boundary=94eb2c04486a253d820538a9bd0e
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>,
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

--94eb2c04486a253d820538a9bd0e
Content-Type: text/plain; charset=UTF-8

On Jul 27, 2016 8:17 PM, "Mimi Zohar" <zohar@linux.vnet.ibm.com> wrote:
>
> On Mi, 2016-07-27 at 16:15 -0700, Andy Lutomirski wrote:
> > On Wed, Jul 27, 2016 at 3:54 PM, Mimi Zohar <zohar@linux.vnet.ibm.com>
wrote:
>
> > Again, I think that wrapping this up in the "keyring" term is
> > problematic.  I'm saying that I can see a use case for allowing a
> > brand new key (not rooted anywhere in particular) to be added to the
> > list of trusted signing keys for modules so long as a PCR is extended
> > with that key.  That would let me seal things to a non-tampered-kernel
> > configuration by sealing them against an unextended PCR such that a
> > user who loaded a module not signed by the initial trusted key would
> > not be able to unseal the secrets.
>
> Nice!  Ok, you create a key that is sealed to a set of PCRs and then
> extend a PCR with a hash of the key.  Normally extending the PCR is to
> prevent the key from being unsealed again.  In this case, I assume
> you're preventing other keys from being created based on the initial
> PCRs.  So you now have a key that matches an initial set of PCRs.  That
> key can then be used to sign the kernel modules.  On reboot, the key is
> unsealed iff the PCRs match.

Not actually what I meant, but sure.  What I actually meant was that maybe
I have a secret (totally unrelated to kernel modules) that, by policy, I
should only be able to access on an un-tampered-with kernel.

With my little trick, I can still build and run random kernel modules.  If
I do so, though, I lose access to those protected secrets until reboot.

--94eb2c04486a253d820538a9bd0e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Jul 27, 2016 8:17 PM, &quot;Mimi Zohar&quot; &lt;<a href=
=3D"mailto:zohar@linux.vnet.ibm.com">zohar@linux.vnet.ibm.com</a>&gt; wrote=
:<br>
&gt;<br>
&gt; On Mi, 2016-07-27 at 16:15 -0700, Andy Lutomirski wrote:<br>
&gt; &gt; On Wed, Jul 27, 2016 at 3:54 PM, Mimi Zohar &lt;<a href=3D"mailto=
:zohar@linux.vnet.ibm.com">zohar@linux.vnet.ibm.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; Again, I think that wrapping this up in the &quot;keyring&quot; t=
erm is<br>
&gt; &gt; problematic.=C2=A0 I&#39;m saying that I can see a use case for a=
llowing a<br>
&gt; &gt; brand new key (not rooted anywhere in particular) to be added to =
the<br>
&gt; &gt; list of trusted signing keys for modules so long as a PCR is exte=
nded<br>
&gt; &gt; with that key.=C2=A0 That would let me seal things to a non-tampe=
red-kernel<br>
&gt; &gt; configuration by sealing them against an unextended PCR such that=
 a<br>
&gt; &gt; user who loaded a module not signed by the initial trusted key wo=
uld<br>
&gt; &gt; not be able to unseal the secrets.<br>
&gt;<br>
&gt; Nice!=C2=A0 Ok, you create a key that is sealed to a set of PCRs and t=
hen<br>
&gt; extend a PCR with a hash of the key.=C2=A0 Normally extending the PCR =
is to<br>
&gt; prevent the key from being unsealed again.=C2=A0 In this case, I assum=
e<br>
&gt; you&#39;re preventing other keys from being created based on the initi=
al<br>
&gt; PCRs.=C2=A0 So you now have a key that matches an initial set of PCRs.=
=C2=A0 That<br>
&gt; key can then be used to sign the kernel modules.=C2=A0 On reboot, the =
key is<br>
&gt; unsealed iff the PCRs match.</p>
<p dir=3D"ltr">Not actually what I meant, but sure.=C2=A0 What I actually m=
eant was that maybe I have a secret (totally unrelated to kernel modules) t=
hat, by policy, I should only be able to access on an un-tampered-with kern=
el.</p>
<p dir=3D"ltr">With my little trick, I can still build and run random kerne=
l modules.=C2=A0 If I do so, though, I lose access to those protected secre=
ts until reboot.</p>

--94eb2c04486a253d820538a9bd0e--
