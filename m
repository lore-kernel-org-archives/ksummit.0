Return-Path: <luto@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0055688A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 12:54:32 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2F63E1D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 12:54:31 +0000 (UTC)
Received: from mail.kernel.org (localhost [127.0.0.1])
	by mail.kernel.org (Postfix) with ESMTP id BCD4520357
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 12:54:29 +0000 (UTC)
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	(using TLSv1.2 with cipher AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 73AFE201FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 12:54:27 +0000 (UTC)
Received: by mail-ua0-f182.google.com with SMTP id 97so40028669uav.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 05:54:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160812123830.GO9681@localhost>
References: <20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<20160727140406.GP4541@io.lakedaemon.net>
	<CACRpkdYSsZ9S5KKu76YZD2m6tfBr=310Vaij1LPoRybYnHVDXw@mail.gmail.com>
	<1470147214.2485.8.camel@HansenPartnership.com>
	<CACRpkdaeeOed5g+teLyOfeuqx1SijeDuyPAWq1-vQd3Z7uozTA@mail.gmail.com>
	<20160812123830.GO9681@localhost>
From: Andy Lutomirski <luto@kernel.org>
Date: Fri, 12 Aug 2016 05:54:25 -0700
Message-ID: <CALCETrVy8edVwuCcWT9Dkvr0xY0fAm8KsU-=xzoBxF_pu9iADw@mail.gmail.com>
To: Vinod Koul <vinod.koul@intel.com>
Content-Type: multipart/alternative; boundary=001a11c00088e8b3b50539df61c9
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Signature management - keys,
 modules, firmware, was: Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a11c00088e8b3b50539df61c9
Content-Type: text/plain; charset=UTF-8

On Aug 12, 2016 3:30 PM, "Vinod Koul" <vinod.koul@intel.com> wrote:
>
> On Wed, Aug 03, 2016 at 11:47:26AM +0200, Linus Walleij wrote:
> > On Tue, Aug 2, 2016 at 4:13 PM, James Bottomley
> > <James.Bottomley@hansenpartnership.com> wrote:
> > > On Tue, 2016-08-02 at 14:54 +0200, Linus Walleij wrote:
> >
> > >> What I always intuitively felt is that I would be happy if the same
> > >> GPG keys we use for pull requests of kernel code would extend
> > >> to firmware signing, so that we move from the overall-industry
> > >> focus on legislative bodies (Thawte, ...) signing certificates with
> > >> OpenSSL and thus being the root of trust, over to putting the root
> > >> of trust for any software related to Linux into the same web of
> > >> trust that we already use for developing the code per se.
> > >
> > > This is the vision that Monkeysphere is based on
> > >
> > > http://web.monkeysphere.info/
> >
> > That looks nice.
> >
> > >> I would certainly trust a firmware signed by say Laurent Pinchart,
> > >> but not sure about one signed by E.Corp.
> > >
> > > Really?  Assuming E.Corp is the one actually producing the firmware,
> > > why would you say they're less qualified than Laurent to certify their
> > > own firmware.  Half the SCSI chips I see have proprietary firmware.
> > >  Even if I were willing to sign it, would you really trust my
signature
> > > when I can't even decompile it?
> >
> > I would trust an Intel WiFi driver if it was signed by Dirk Hohndel
> > or H. Peter Anvin whose GPG keys I have in my own web of trust
> > and work for Intel. And this is simply because I trust these guys
> > more than the corporate entity they work for.
>
> One more point worth mentioning here...
>
> Whatever solution we decide, some firmware is already signed. Some of
> the Intel firmware we submit to linux-firmware is signed and a firmware
> with bad or unsigned keys will fail to load on these devices. Now how
> much we are willing to trust that is entirely different question.
>
> Any solution needs to comprehend that additional signing might be
> present.

I see device-verified signatures as orthogonal: the kernel loads a blob,
optionally verifies the blob, and that blob just happens to contain a
signature.

--Andy

--001a11c00088e8b3b50539df61c9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Aug 12, 2016 3:30 PM, &quot;Vinod Koul&quot; &lt;<a href=
=3D"mailto:vinod.koul@intel.com">vinod.koul@intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Wed, Aug 03, 2016 at 11:47:26AM +0200, Linus Walleij wrote:<br>
&gt; &gt; On Tue, Aug 2, 2016 at 4:13 PM, James Bottomley<br>
&gt; &gt; &lt;<a href=3D"mailto:James.Bottomley@hansenpartnership.com">Jame=
s.Bottomley@hansenpartnership.com</a>&gt; wrote:<br>
&gt; &gt; &gt; On Tue, 2016-08-02 at 14:54 +0200, Linus Walleij wrote:<br>
&gt; &gt;<br>
&gt; &gt; &gt;&gt; What I always intuitively felt is that I would be happy =
if the same<br>
&gt; &gt; &gt;&gt; GPG keys we use for pull requests of kernel code would e=
xtend<br>
&gt; &gt; &gt;&gt; to firmware signing, so that we move from the overall-in=
dustry<br>
&gt; &gt; &gt;&gt; focus on legislative bodies (Thawte, ...) signing certif=
icates with<br>
&gt; &gt; &gt;&gt; OpenSSL and thus being the root of trust, over to puttin=
g the root<br>
&gt; &gt; &gt;&gt; of trust for any software related to Linux into the same=
 web of<br>
&gt; &gt; &gt;&gt; trust that we already use for developing the code per se=
.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; This is the vision that Monkeysphere is based on<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; <a href=3D"http://web.monkeysphere.info/">http://web.monkeys=
phere.info/</a><br>
&gt; &gt;<br>
&gt; &gt; That looks nice.<br>
&gt; &gt;<br>
&gt; &gt; &gt;&gt; I would certainly trust a firmware signed by say Laurent=
 Pinchart,<br>
&gt; &gt; &gt;&gt; but not sure about one signed by E.Corp.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Really?=C2=A0 Assuming E.Corp is the one actually producing =
the firmware,<br>
&gt; &gt; &gt; why would you say they&#39;re less qualified than Laurent to=
 certify their<br>
&gt; &gt; &gt; own firmware.=C2=A0 Half the SCSI chips I see have proprieta=
ry firmware.<br>
&gt; &gt; &gt;=C2=A0 Even if I were willing to sign it, would you really tr=
ust my signature<br>
&gt; &gt; &gt; when I can&#39;t even decompile it?<br>
&gt; &gt;<br>
&gt; &gt; I would trust an Intel WiFi driver if it was signed by Dirk Hohnd=
el<br>
&gt; &gt; or H. Peter Anvin whose GPG keys I have in my own web of trust<br=
>
&gt; &gt; and work for Intel. And this is simply because I trust these guys=
<br>
&gt; &gt; more than the corporate entity they work for.<br>
&gt;<br>
&gt; One more point worth mentioning here...<br>
&gt;<br>
&gt; Whatever solution we decide, some firmware is already signed. Some of<=
br>
&gt; the Intel firmware we submit to linux-firmware is signed and a firmwar=
e<br>
&gt; with bad or unsigned keys will fail to load on these devices. Now how<=
br>
&gt; much we are willing to trust that is entirely different question.<br>
&gt;<br>
&gt; Any solution needs to comprehend that additional signing might be<br>
&gt; present.</p>
<p dir=3D"ltr">I see device-verified signatures as orthogonal: the kernel l=
oads a blob, optionally verifies the blob, and that blob just happens to co=
ntain a signature.</p>
<p dir=3D"ltr">--Andy<br>
</p>

--001a11c00088e8b3b50539df61c9--
