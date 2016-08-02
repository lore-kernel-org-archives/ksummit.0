Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5A87498F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 14:53:19 +0000 (UTC)
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CB3F61C9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 14:53:18 +0000 (UTC)
Received: by mail-vk0-f46.google.com with SMTP id w127so124466753vkh.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Aug 2016 07:53:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALCETrW_mQLmR6g_Ar8Nnpr7CRFZhth=Hj9C901Gj7_WSp=yEQ@mail.gmail.com>
References: <20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<20160727140406.GP4541@io.lakedaemon.net>
	<CACRpkdYSsZ9S5KKu76YZD2m6tfBr=310Vaij1LPoRybYnHVDXw@mail.gmail.com>
	<20160802140031.GK4541@io.lakedaemon.net>
	<CALCETrUjn7TeGbS4TQ+OFih-nby2Rh54i5177MOwqjTYDBMO=A@mail.gmail.com>
	<CALCETrU6aQ5PR_+M7QHkTWos6i6vVS2nvEQDwr5ktBkWu-5MKw@mail.gmail.com>
	<CALCETrW8uRK4cuQ+B6NPcO0pY-=-HRDf4LZk4xv2QdPzNEvMCg@mail.gmail.com>
	<CALCETrW_mQLmR6g_Ar8Nnpr7CRFZhth=Hj9C901Gj7_WSp=yEQ@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 2 Aug 2016 07:53:16 -0700
Message-ID: <CALCETrXwjpz8VgmgG9_XyR=pC3Ao_ARGqeUTH=wsuSVwjGqqZw@mail.gmail.com>
To: Jason Cooper <jason@lakedaemon.net>
Content-Type: multipart/alternative; boundary=001a11c0087e8dac55053917e0ec
Cc: Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

--001a11c0087e8dac55053917e0ec
Content-Type: text/plain; charset=UTF-8

On Aug 2, 2016 7:00 AM, "Jason Cooper" <jason@lakedaemon.net> wrote:

>
> The problem here is that we (users) need to be able to verify that
> iwlwifi-whatever.ucode claimed to be created by Intel, was indeed the
> *same* one Intel shipped out the door.  That's it.  It's up to the user
> to decide to "trust" Intel's microcode or not.  All the kernel should be
> doing is confirming cryptographically that it came from Intel.

Except that this particular use case doesn't require any kernel support at
all.  If the goal is that root doesn't want to load a bad firmware, then
root can check whatever signature it wants in userspace.

The point of in-kernel verification is to enforce policies that are
intended to work even if root is compromised.  This includes CRDA-like
policy and MS's Secure Boot policy.  If, while doing this, we get to check
vendor keys too, that's just an added benefit in my book.

--001a11c0087e8dac55053917e0ec
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Aug 2, 2016 7:00 AM, &quot;Jason Cooper&quot; &lt;<a href=
=3D"mailto:jason@lakedaemon.net">jason@lakedaemon.net</a>&gt; wrote:</p>
<p dir=3D"ltr">&gt;<br>
&gt; The problem here is that we (users) need to be able to verify that<br>
&gt; iwlwifi-whatever.ucode claimed to be created by Intel, was indeed the<=
br>
&gt; *same* one Intel shipped out the door.=C2=A0 That&#39;s it.=C2=A0 It&#=
39;s up to the user<br>
&gt; to decide to &quot;trust&quot; Intel&#39;s microcode or not.=C2=A0 All=
 the kernel should be<br>
&gt; doing is confirming cryptographically that it came from Intel.</p>
<p dir=3D"ltr">Except that this particular use case doesn&#39;t require any=
 kernel support at all.=C2=A0 If the goal is that root doesn&#39;t want to =
load a bad firmware, then root can check whatever signature it wants in use=
rspace.</p>
<p dir=3D"ltr">The point of in-kernel verification is to enforce policies t=
hat are intended to work even if root is compromised.=C2=A0 This includes C=
RDA-like policy and MS&#39;s Secure Boot policy.=C2=A0 If, while doing this=
, we get to check vendor keys too, that&#39;s just an added benefit in my b=
ook.</p>

--001a11c0087e8dac55053917e0ec--
