Return-Path: <luto@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EEE45A48
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 05:30:36 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 61B941B7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 05:30:36 +0000 (UTC)
Received: from mail.kernel.org (localhost [127.0.0.1])
	by mail.kernel.org (Postfix) with ESMTP id 51BB6203A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 05:30:35 +0000 (UTC)
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	(using TLSv1.2 with cipher AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3B8AF2037F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 05:30:34 +0000 (UTC)
Received: by mail-ua0-f182.google.com with SMTP id 31so4223892uao.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 06 Sep 2016 22:30:34 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160907051039.GG2356@ZenIV.linux.org.uk>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
	<20160906152243.766f3845@gandalf.local.home>
	<20160906213644.GA16732@p183.telecom.by>
	<20160906175343.2f0d9135@gandalf.local.home>
	<20160906224100.GA17212@p183.telecom.by>
	<20160907051039.GG2356@ZenIV.linux.org.uk>
From: Andy Lutomirski <luto@kernel.org>
Date: Tue, 6 Sep 2016 22:30:32 -0700
Message-ID: <CALCETrVRFVkpk5bbH1jYxhh3nWYoJtXMFaMo2yR25sntGOrnDw@mail.gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Content-Type: multipart/alternative; boundary=94eb2c123978522e71053be4369d
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [topic proposal] tracepoints and ABI
	stability warranties
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--94eb2c123978522e71053be4369d
Content-Type: text/plain; charset=UTF-8

On Sep 6, 2016 10:10 PM, "Al Viro" <viro@zeniv.linux.org.uk> wrote:
>
> On Wed, Sep 07, 2016 at 01:41:00AM +0300, Alexey Dobriyan wrote:
>
> > Gentlemen's agreement then:
> > * kernel developers don't break tracepoints on purpose and maintain
> >   compatibility in simple cases (long => int, deleted field, etc),
> > * real, justified tracepoint breakage doesn't count.
>
> No go.  Scenario:
>
> 1) piss-poor API is added in form of tracehook.  It exports some
information
> that can be used to derive something genuinely interesting.  Most of the
> time.  Corner cases are unsolvable, even though it might be possible to
> provide the interesting part sanely.  Just not in that form.  Moreover,
> faking the bits used to derive that information so that existing userland
> logics would yield the right result is bloody hard and restricts what we
> can do kernel-side, even though the real thing userland wants would not
have
> such problems.
>

Agreed.

I wouldn't mind a policy that tracepoints are simply never stable.  Maybe
we should even deliberately change them periodically to drive the point
home.

The kernel should be able to have a debug API that is genuinely for
*debugging* and doesn't freeze the underlying implementation.

Windows, AFAICT, works like this.  If you write a production program that
invokes WinDbg or similar, it's going to break down the road.

--94eb2c123978522e71053be4369d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Sep 6, 2016 10:10 PM, &quot;Al Viro&quot; &lt;<a href=3D"=
mailto:viro@zeniv.linux.org.uk">viro@zeniv.linux.org.uk</a>&gt; wrote:<br>
&gt;<br>
&gt; On Wed, Sep 07, 2016 at 01:41:00AM +0300, Alexey Dobriyan wrote:<br>
&gt;<br>
&gt; &gt; Gentlemen&#39;s agreement then:<br>
&gt; &gt; * kernel developers don&#39;t break tracepoints on purpose and ma=
intain<br>
&gt; &gt;=C2=A0 =C2=A0compatibility in simple cases (long =3D&gt; int, dele=
ted field, etc),<br>
&gt; &gt; * real, justified tracepoint breakage doesn&#39;t count.<br>
&gt;<br>
&gt; No go.=C2=A0 Scenario:<br>
&gt;<br>
&gt; 1) piss-poor API is added in form of tracehook.=C2=A0 It exports some =
information<br>
&gt; that can be used to derive something genuinely interesting.=C2=A0 Most=
 of the<br>
&gt; time.=C2=A0 Corner cases are unsolvable, even though it might be possi=
ble to<br>
&gt; provide the interesting part sanely.=C2=A0 Just not in that form.=C2=
=A0 Moreover,<br>
&gt; faking the bits used to derive that information so that existing userl=
and<br>
&gt; logics would yield the right result is bloody hard and restricts what =
we<br>
&gt; can do kernel-side, even though the real thing userland wants would no=
t have<br>
&gt; such problems.<br>
&gt;</p>
<p dir=3D"ltr">Agreed.</p>
<p dir=3D"ltr">I wouldn&#39;t mind a policy that tracepoints are simply nev=
er stable.=C2=A0 Maybe we should even deliberately change them periodically=
 to drive the point home.</p>
<p dir=3D"ltr">The kernel should be able to have a debug API that is genuin=
ely for *debugging* and doesn&#39;t freeze the underlying implementation.</=
p>
<p dir=3D"ltr">Windows, AFAICT, works like this.=C2=A0 If you write a produ=
ction program that invokes WinDbg or similar, it&#39;s going to break down =
the road.</p>

--94eb2c123978522e71053be4369d--
