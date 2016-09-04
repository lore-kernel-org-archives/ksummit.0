Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ABC3871
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 Sep 2016 17:59:48 +0000 (UTC)
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 362E2CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 Sep 2016 17:59:48 +0000 (UTC)
Received: by mail-oi0-f46.google.com with SMTP id y2so3915200oie.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 04 Sep 2016 10:59:48 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <CAMuHMdWk2uE0z-67ktpPvTGR7AUD66uZJL=kMGjrhxaPmDD_Xg@mail.gmail.com>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<27648120.ey0ZEtExVa@wuerfel> <20160731175753.GQ9681@localhost>
	<3132432.DrxSMjl1Vi@wuerfel> <20160902104619.GD9355@localhost>
	<CA+55aFwSpNrOuOzaR5hh0A1XvuTu0=xVbE_CV1RVf9GMrTPDNQ@mail.gmail.com>
	<CAMuHMdWk2uE0z-67ktpPvTGR7AUD66uZJL=kMGjrhxaPmDD_Xg@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 4 Sep 2016 10:59:46 -0700
Message-ID: <CA+55aFxDgsc3aQd6E8mbVz9zkLVoiK3CD7MSztOGze8nd4ezSw@mail.gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: multipart/alternative; boundary=001a113cf3e6468267053bb2544f
Cc: Grant Likely <grant.likely@linaro.org>, Dave Airlie <airlied@linux.ie>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] (group) maintainership models
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a113cf3e6468267053bb2544f
Content-Type: text/plain; charset=UTF-8

On Sep 4, 2016 10:45, "Geert Uytterhoeven" <geert@linux-m68k.org> wrote:
>
> What about the legacy timer interrupt?

That's fine. No driver will ever see it. So it's OK to be zero.

That's obviously how x86 always worked.

And x86 always had "zero means no interrupt".

      Linus

--001a113cf3e6468267053bb2544f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Sep 4, 2016 10:45, &quot;Geert Uytterhoeven&quot; &lt;<a =
href=3D"mailto:geert@linux-m68k.org">geert@linux-m68k.org</a>&gt; wrote:<br=
>
&gt;<br>
&gt; What about the legacy timer interrupt?</p>
<p dir=3D"ltr">That&#39;s fine. No driver will ever see it. So it&#39;s OK =
to be zero.</p>
<p dir=3D"ltr">That&#39;s obviously how x86 always worked.</p>
<p dir=3D"ltr">And x86 always had &quot;zero means no interrupt&quot;.</p>
<p dir=3D"ltr">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Linus</p>

--001a113cf3e6468267053bb2544f--
