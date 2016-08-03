Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 51BE878D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 22:39:09 +0000 (UTC)
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BF59720B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 22:39:08 +0000 (UTC)
Received: by mail-vk0-f52.google.com with SMTP id x130so157154672vkc.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Aug 2016 15:39:08 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALCETrWgS0XObzxfQWQbyntVEn6QF81K2TVbS4bGNyN6EcYb_A@mail.gmail.com>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
	<1470228158.2482.36.camel@HansenPartnership.com>
	<CALCETrUnT=fZ_d6Q-i6WPtuAKzN8KjcmqsDxV0p7p33PTqvDRw@mail.gmail.com>
	<1470262192.2858.11.camel@HansenPartnership.com>
	<CALCETrVpCnfOJ2aXkNsOXatQAF6NG-AcJpxeYfA9wG_t2ocykg@mail.gmail.com>
	<CALCETrWgS0XObzxfQWQbyntVEn6QF81K2TVbS4bGNyN6EcYb_A@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 3 Aug 2016 15:39:06 -0700
Message-ID: <CALCETrWg9NbN9C3uJaN1MgByBssGMeQTE=T1ieoD95q_gsftNg@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: multipart/alternative; boundary=001a1143092258678005393280be
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Mark Brown <broonie@sirena.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [TOPIC] Secure/verified boot and roots of
	trust
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a1143092258678005393280be
Content-Type: text/plain; charset=UTF-8

On Aug 3, 2016 3:09 PM, "James Bottomley" <
James.Bottomley@hansenpartnership.com> wrote:

> >
> > I'm not personally too worried about verifying initramfs -- initramfs
> > is functionally equivalent to the root filesystem, and they ought to
> > be verifiable the same way.
>
> Yes, but if you worry about protecting yourself from hackers, IMA can
> verify no-one tampers with your rootfs; what verifies that no-one
> tampers with your initrd (which is a very powerful instrument to
> subvert a linux boot)?

IMA?  Awhile ago I suggested adding tar parsing with xattrs to initramfs,
and I'm not sure what went wrong with that idea.

--001a1143092258678005393280be
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Aug 3, 2016 3:09 PM, &quot;James Bottomley&quot; &lt;<a h=
ref=3D"mailto:James.Bottomley@hansenpartnership.com">James.Bottomley@hansen=
partnership.com</a>&gt; wrote:</p>
<p dir=3D"ltr">&gt; &gt;<br>
&gt; &gt; I&#39;m not personally too worried about verifying initramfs -- i=
nitramfs<br>
&gt; &gt; is functionally equivalent to the root filesystem, and they ought=
 to<br>
&gt; &gt; be verifiable the same way.<br>
&gt;<br>
&gt; Yes, but if you worry about protecting yourself from hackers, IMA can<=
br>
&gt; verify no-one tampers with your rootfs; what verifies that no-one<br>
&gt; tampers with your initrd (which is a very powerful instrument to<br>
&gt; subvert a linux boot)?</p>
<p dir=3D"ltr">IMA?=C2=A0 Awhile ago I suggested adding tar parsing with xa=
ttrs to initramfs, and I&#39;m not sure what went wrong with that idea.<br>
</p>

--001a1143092258678005393280be--
