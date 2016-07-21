Return-Path: <pjt@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7D39C486
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 20:47:49 +0000 (UTC)
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E18BDA5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 20:47:48 +0000 (UTC)
Received: by mail-io0-f179.google.com with SMTP id m101so87192597ioi.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 13:47:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.00.1607212031430.24757@cbobk.fhfr.pm>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<1469094899.120686.101.camel@infradead.org>
	<alpine.LNX.2.00.1607212031430.24757@cbobk.fhfr.pm>
From: Paul Turner <pjt@google.com>
Date: Thu, 21 Jul 2016 13:47:17 -0700
Message-ID: <CAPM31RKy+QWaG0TTyknJXTQLoLpC0O8S2=Ehvij6BrKV=_ogLQ@mail.gmail.com>
To: Jiri Kosina <jikos@kernel.org>
Content-Type: multipart/alternative; boundary=001a113df6ac42606f05382b6e02
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] Support (or move
 towards to) LLVM
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a113df6ac42606f05382b6e02
Content-Type: text/plain; charset=UTF-8

We're considering trying to move our builds to Clang.  It's definitely
something we'd be interested in talking about, and depending on how the
initial attempts go we may have some anecdotal/early data.

On Thu, Jul 21, 2016 at 11:38 AM, Jiri Kosina <jikos@kernel.org> wrote:

> On Thu, 21 Jul 2016, David Woodhouse wrote:
>
> > Apart from resolutely not wanting to implement variable length arrays on
> > the stack, the LLVM folks actually seem quite keen to make things work.
> > I'm interested in the problem you report above.. and note the absence of
> > a bug number. Can you provide it?
>
> I am currently on vacation and on super-lousy internet connection, so
> looking through my archives is a bit complicated ... I *think* it started
> in "[PATCH] usbhid: Fix lockdep unannotated irqs-off warning" thread on
> lkml.
>
> In case you're not able to find it from there, I'll do my homework
> mid-next week when I am back properly online.
>
> Thanks,
>
> --
> Jiri Kosina
> SUSE Labs
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--001a113df6ac42606f05382b6e02
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">We&#39;re considering trying to move our builds to Clang.=
=C2=A0 It&#39;s definitely something we&#39;d be interested in talking abou=
t, and depending on how the initial attempts go we may have some anecdotal/=
early data.</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Jul 21, 2016 at 11:38 AM, Jiri Kosina <span dir=3D"ltr">&lt;<a href=
=3D"mailto:jikos@kernel.org" target=3D"_blank">jikos@kernel.org</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Thu, 21 Ju=
l 2016, David Woodhouse wrote:<br>
<br>
&gt; Apart from resolutely not wanting to implement variable length arrays =
on<br>
&gt; the stack, the LLVM folks actually seem quite keen to make things work=
.<br>
&gt; I&#39;m interested in the problem you report above.. and note the abse=
nce of<br>
&gt; a bug number. Can you provide it?<br>
<br>
</span>I am currently on vacation and on super-lousy internet connection, s=
o<br>
looking through my archives is a bit complicated ... I *think* it started<b=
r>
in &quot;[PATCH] usbhid: Fix lockdep unannotated irqs-off warning&quot; thr=
ead on<br>
lkml.<br>
<br>
In case you&#39;re not able to find it from there, I&#39;ll do my homework<=
br>
mid-next week when I am back properly online.<br>
<span class=3D"im HOEnZb"><br>
Thanks,<br>
<br>
--<br>
Jiri Kosina<br>
SUSE Labs<br>
<br>
</span><div class=3D"HOEnZb"><div class=3D"h5">____________________________=
___________________<br>
Ksummit-discuss mailing list<br>
<a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org">Ksummit-discus=
s@lists.linuxfoundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discu=
ss" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundation.org/=
mailman/listinfo/ksummit-discuss</a><br>
</div></div></blockquote></div><br></div>

--001a113df6ac42606f05382b6e02--
