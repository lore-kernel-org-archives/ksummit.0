Return-Path: <kaccardi@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 84729AC1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 20:32:45 +0000 (UTC)
Received: from mail-yk0-f177.google.com (mail-yk0-f177.google.com
	[209.85.160.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E14771D1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 20:32:44 +0000 (UTC)
Received: by ykay190 with SMTP id y190so46945998yka.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 13:32:44 -0700 (PDT)
MIME-Version: 1.0
References: <20150715153725.GA12601@ret.masoncoding.com>
	<CAH3eK3TtZKdVdFTrQOEPQ0dmXLr-y1w66LW2Qbwwu0VSbiiYiA@mail.gmail.com>
	<1436989195.6856.4.camel@infradead.org>
	<20150715195837.GA14507@ret.masoncoding.com>
In-Reply-To: <20150715195837.GA14507@ret.masoncoding.com>
From: Kristen Accardi <kaccardi@gmail.com>
Date: Wed, 15 Jul 2015 20:32:34 +0000
Message-ID: <CAH3eK3SaKyYkrYyRGj2o6SGc+_DqPGjef1+bm8TWL-xbCfbPfg@mail.gmail.com>
To: Chris Mason <clm@fb.com>, David Woodhouse <dwmw2@infradead.org>
Content-Type: multipart/alternative; boundary=001a114fbcb66a1d34051aefdb0d
Cc: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] benchmarking and performance
	trends
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a114fbcb66a1d34051aefdb0d
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 15, 2015 at 12:58 PM Chris Mason <clm@fb.com> wrote:

> On Wed, Jul 15, 2015 at 08:39:55PM +0100, David Woodhouse wrote:
> > On Wed, 2015-07-15 at 19:23 +0000, Kristen Accardi wrote:
> > > I am very interested to hear what if any benchmarks people are doing
> > > on non-server platforms as well.  I find it difficult to know what
> > > benchmarks customers think are important for upstream linux for
> > > desktop and mobile systems that are not running Android or Chrome,
> > > and would love to hear what others are using.
> >
> > I would imagine the most interesting metrics are all about power vs.
> > performance, rather than pure performance.
> >
> > In fact, in the server environment where you have to pay for the power
> > in the first place, and then pay again for the air conditioning to
> > extract the resulting heat, I'm surprised it isn't already more of a
> > consideration.
>
> It would be fun to use turbostat or a rack power meter to
> measure/compare power usage between two kernels in a given benchmark.  I
> think the power meters we do have are not going to be fine grained
> enough to give valid results, but if turbostat is consistent enough we
> could try it.
>
> -chris
>
>
Artem has setup this capability with 2 server benchmarks (specpower and
specweb) and has been taking a look at upstream kernel PnP with regard to
these benchmarks on specific intel platforms.

--001a114fbcb66a1d34051aefdb0d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Jul 15=
, 2015 at 12:58 PM Chris Mason &lt;<a href=3D"mailto:clm@fb.com">clm@fb.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Wed, Jul 15, 201=
5 at 08:39:55PM +0100, David Woodhouse wrote:<br>
&gt; On Wed, 2015-07-15 at 19:23 +0000, Kristen Accardi wrote:<br>
&gt; &gt; I am very interested to hear what if any benchmarks people are do=
ing<br>
&gt; &gt; on non-server platforms as well.=C2=A0 I find it difficult to kno=
w what<br>
&gt; &gt; benchmarks customers think are important for upstream linux for<b=
r>
&gt; &gt; desktop and mobile systems that are not running Android or Chrome=
,<br>
&gt; &gt; and would love to hear what others are using.<br>
&gt;<br>
&gt; I would imagine the most interesting metrics are all about power vs.<b=
r>
&gt; performance, rather than pure performance.<br>
&gt;<br>
&gt; In fact, in the server environment where you have to pay for the power=
<br>
&gt; in the first place, and then pay again for the air conditioning to<br>
&gt; extract the resulting heat, I&#39;m surprised it isn&#39;t already mor=
e of a<br>
&gt; consideration.<br>
<br>
It would be fun to use turbostat or a rack power meter to<br>
measure/compare power usage between two kernels in a given benchmark.=C2=A0=
 I<br>
think the power meters we do have are not going to be fine grained<br>
enough to give valid results, but if turbostat is consistent enough we<br>
could try it.<br>
<br>
-chris<br>
<br></blockquote><div><br></div><div>Artem has setup this capability with 2=
 server benchmarks (specpower and specweb) and has been taking a look at up=
stream kernel PnP with regard to these benchmarks on specific intel platfor=
ms.</div><div><br></div><div><br></div></div></div>

--001a114fbcb66a1d34051aefdb0d--
