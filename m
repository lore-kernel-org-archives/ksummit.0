Return-Path: <kaccardi@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8AF56A04
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 19:23:58 +0000 (UTC)
Received: from mail-yk0-f171.google.com (mail-yk0-f171.google.com
	[209.85.160.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DC97EE6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 19:23:57 +0000 (UTC)
Received: by ykeo3 with SMTP id o3so45173397yke.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 12:23:57 -0700 (PDT)
MIME-Version: 1.0
References: <20150715153725.GA12601@ret.masoncoding.com>
In-Reply-To: <20150715153725.GA12601@ret.masoncoding.com>
From: Kristen Accardi <kaccardi@gmail.com>
Date: Wed, 15 Jul 2015 19:23:47 +0000
Message-ID: <CAH3eK3TtZKdVdFTrQOEPQ0dmXLr-y1w66LW2Qbwwu0VSbiiYiA@mail.gmail.com>
To: Chris Mason <clm@fb.com>, ksummit-discuss@lists.linuxfoundation.org
Content-Type: multipart/alternative; boundary=001a1139cefa6c8f71051aeee5c6
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

--001a1139cefa6c8f71051aeee5c6
Content-Type: text/plain; charset=UTF-8

I am very interested to hear what if any benchmarks people are doing on
non-server platforms as well.  I find it difficult to know what benchmarks
customers think are important for upstream linux for desktop and mobile
systems that are not running Android or Chrome, and would love to hear what
others are using.

On Wed, Jul 15, 2015 at 8:37 AM Chris Mason <clm@fb.com> wrote:

> Hi everyone,
>
> I know I never get bored of graphs comparing old/new, but I feel guilty
> suggesting this one yet again.  Still, I think it's important for the
> people trying to push new kernels into production to have a chance to
> talk about the problems we've hit, and/or the changes that have made
> life easier.
>
> We're starting to push 4.0 into prod (122 hosts almost counts), and I'm
> sure we'll backport some wins from 4.2+.  I'm hoping to make this a
> collection point for other benchmarking war stories.  Our biggest gains
> right now are coming from scsi-mq, and early benchmarks show 4.2 has a
> boost that I'm hoping are from the futex locking improvements.
>
> It ties in a little with the new interfaces applications may be able to use
> (restartable sequences etc topic), and I want to ask the broad question of
> "are we doing enough to prevent performance regressions".
>
> We have a long list of people involved on the Facebook side, Jens at the
> very least can talk about the scsi/block-mq benchmarks.  I'd love to hear
> Fengguang's thoughts as well.
>
> -chris
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--001a1139cefa6c8f71051aeee5c6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am very interested to hear what if any benchmarks people=
 are doing on non-server platforms as well.=C2=A0 I find it difficult to kn=
ow what benchmarks customers think are important for upstream linux for des=
ktop and mobile systems that are not running Android or Chrome, and would l=
ove to hear what others are using.</div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr">On Wed, Jul 15, 2015 at 8:37 AM Chris Mason &lt;<a href=3D"mai=
lto:clm@fb.com">clm@fb.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">Hi everyone,<br>
<br>
I know I never get bored of graphs comparing old/new, but I feel guilty<br>
suggesting this one yet again.=C2=A0 Still, I think it&#39;s important for =
the<br>
people trying to push new kernels into production to have a chance to<br>
talk about the problems we&#39;ve hit, and/or the changes that have made<br=
>
life easier.<br>
<br>
We&#39;re starting to push 4.0 into prod (122 hosts almost counts), and I&#=
39;m<br>
sure we&#39;ll backport some wins from 4.2+.=C2=A0 I&#39;m hoping to make t=
his a<br>
collection point for other benchmarking war stories.=C2=A0 Our biggest gain=
s<br>
right now are coming from scsi-mq, and early benchmarks show 4.2 has a<br>
boost that I&#39;m hoping are from the futex locking improvements.<br>
<br>
It ties in a little with the new interfaces applications may be able to use=
<br>
(restartable sequences etc topic), and I want to ask the broad question of<=
br>
&quot;are we doing enough to prevent performance regressions&quot;.<br>
<br>
We have a long list of people involved on the Facebook side, Jens at the<br=
>
very least can talk about the scsi/block-mq benchmarks.=C2=A0 I&#39;d love =
to hear<br>
Fengguang&#39;s thoughts as well.<br>
<br>
-chris<br>
_______________________________________________<br>
Ksummit-discuss mailing list<br>
<a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org" target=3D"_bla=
nk">Ksummit-discuss@lists.linuxfoundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discu=
ss" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundation.org/=
mailman/listinfo/ksummit-discuss</a><br>
</blockquote></div>

--001a1139cefa6c8f71051aeee5c6--
