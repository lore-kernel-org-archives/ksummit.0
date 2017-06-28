Return-Path: <willy6545@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5C41BAF7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 13:35:31 +0000 (UTC)
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 191D9E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 13:35:31 +0000 (UTC)
Received: by mail-oi0-f44.google.com with SMTP id c189so41353599oia.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 06:35:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAFhKne8FE=17wNdp=Svf2Z2tADok6htfYqTABEiZUrCOyeMaYg@mail.gmail.com>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
	<20170627184448.GU21846@wotan.suse.de>
	<CA+55aFyvssxg63UoQ-rOaf1TMacJ6T5jyLkWECosQJ_N=9gaaQ@mail.gmail.com>
	<CAOesGMimO1rYi7RpcsZYX9uDgWUJdv4XSgQR+RJaaS2qt_FCLw@mail.gmail.com>
	<CA+55aFxDyj-9koeDemqUvxYrLyKxV8Xggy=ad_EQmGrfEef_gg@mail.gmail.com>
	<20170627231011.GA10543@mail.hallyn.com>
	<CAB=NE6Wd9WWCyRzO=TjaTiPNruSwt24G3BD2qTuUue8B3kRX5g@mail.gmail.com>
	<CA+55aFzgumwC-HqDpsj-OEVoQdhcnRo9Fh2Kg7SMPL6+wP4ctg@mail.gmail.com>
	<CAFhKne-o0S8fMo_XD_aUk2Rf7VbDhgO+PT_bjnM-9WpKfnWBvw@mail.gmail.com>
	<CAFhKne8FE=17wNdp=Svf2Z2tADok6htfYqTABEiZUrCOyeMaYg@mail.gmail.com>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Wed, 28 Jun 2017 09:35:29 -0400
Message-ID: <CAFhKne_tu1WaVFQuccRwN1cTYvtCKA-1sxq73fkw_Df+Wa79=w@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: multipart/alternative; boundary="001a113cec0afb0675055305411c"
Cc: Cristina Moraru <cristina.moraru09@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a113cec0afb0675055305411c
Content-Type: text/plain; charset="UTF-8"

Networking options are a similar pain. When we were doing prebuilt kernels
for the parisc port, the most frequent request was to enable random network
things.

On 27 Jun 2017 20:14, "Linus Torvalds" <torvalds@linux-foundation.org>
wrote:

The config options that don't enable drivers, but enable particular
behavior - *those* are actually the nastiest ones.

--001a113cec0afb0675055305411c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_extra"><div class=3D"gmail_quote=
" dir=3D"auto">Networking options are a similar pain. When we were doing pr=
ebuilt kernels for the parisc port, the most frequent request was to enable=
 random network things.</div><div class=3D"gmail_quote" dir=3D"auto"><br></=
div><div class=3D"gmail_quote">On 27 Jun 2017 20:14, &quot;Linus Torvalds&q=
uot; &lt;<a href=3D"mailto:torvalds@linux-foundation.org">torvalds@linux-fo=
undation.org</a>&gt; wrote:<blockquote class=3D"quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
The config options that don&#39;t enable drivers, but enable particular<br>
behavior - *those* are actually the nastiest ones.<br><div class=3D"elided-=
text"><br>
</div></blockquote></div><br></div></div></div>

--001a113cec0afb0675055305411c--
