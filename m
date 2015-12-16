Return-Path: <john.stultz@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7B2D2FCA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 16 Dec 2015 05:12:57 +0000 (UTC)
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BEA4910D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 16 Dec 2015 05:12:56 +0000 (UTC)
Received: by mail-qk0-f170.google.com with SMTP id t125so48273148qkh.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 15 Dec 2015 21:12:56 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20151215141518.GE8574@piout.net>
References: <10141.1450179238@warthog.procyon.org.uk>
	<2151085.9YAhiz9GYL@wuerfel> <20151215141518.GE8574@piout.net>
Date: Tue, 15 Dec 2015 21:12:55 -0800
Message-ID: <CALAqxLUxXSDCt+LVdiqpgY2zw0zxRP3zB+mR1xCaEE8hgWaGCg@mail.gmail.com>
From: John Stultz <john.stultz@linaro.org>
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Content-Type: multipart/alternative; boundary=001a114920c67fa9000526fcf543
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Leap second handling
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a114920c67fa9000526fcf543
Content-Type: text/plain; charset=UTF-8

On Tue, Dec 15, 2015 at 6:15 AM, Alexandre Belloni <
alexandre.belloni@free-electrons.com> wrote:

> On 15/12/2015 at 13:12:03 +0100, Arnd Bergmann wrote :
> > What I think we don't do at all in the kernel is to keep track of past
> (or
> > even future) leap seconds, so if you need to encode a date in the past,
> > the kernel has no idea what the difference between UTC and TAI was at the
> > time, and if you encode a time in the future, you don't know if we will
> > insert a leap second before you get to that time. I think these are the
> > harder questions to solve first if you want to handle the X.509
> certificates
> > right, before we get to the question of what happens for dates *on* the
> > leap second.
> >
>
> My point of view is that we shouldn't do anything in the kernel and
> instead handle that with proper TZ files (see leapseconds in
> tzdata2015g). You can then handle your own leapseconds epoch and add
> future leapseconds without having to update your kernel.
>

So while these approaches are attractive, I think we're kind of stuck with
the current behavior. Posix times don't include leapseconds. So we repeat
the leap-second, and for those that care you can check the adjtimex
timestate to see if the TIME_OOP flag is set to detect leap-seconds in
progress.

So as long as there are leapseconds  (and with the most recent discussion
on abolition not succeeding), we're going to have to keep the existing
behavior.

As for how to treat the certs, you're option #1 "Treat it as hh:mm:59" is
probably the closest to what the kernel does, since it repeats the 59th
second on the leapsecond.

Arnd' suggestion of encoding it into TAI is also something to consider as
it is close to your suggestion, as it basically doesn't have any
leapseconds (just a number of seconds since 1970) but requires you have a
table of leap-seconds to properly translate between TAI time values to UTC
and back. The other problem with TAI is that while the kernel supports it,
not many systems are configured to properly initialize it, so its likely to
match UTC most of the time. But if you're only using TAI internally in your
app, and translating out to UTC as needed, that might not matter.

thanks
-john

--001a114920c67fa9000526fcf543
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
ue, Dec 15, 2015 at 6:15 AM, Alexandre Belloni <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:alexandre.belloni@free-electrons.com" target=3D"_blank">alexand=
re.belloni@free-electrons.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div><div class=3D"h5">On 15/12/2015 at 13:12:03 +0100, Arnd Ber=
gmann wrote :<br>&gt; What I think we don&#39;t do at all in the kernel is =
to keep track of past (or<br>
&gt; even future) leap seconds, so if you need to encode a date in the past=
,<br>
&gt; the kernel has no idea what the difference between UTC and TAI was at =
the<br>
&gt; time, and if you encode a time in the future, you don&#39;t know if we=
 will<br>
&gt; insert a leap second before you get to that time. I think these are th=
e<br>
&gt; harder questions to solve first if you want to handle the X.509 certif=
icates<br>
&gt; right, before we get to the question of what happens for dates *on* th=
e<br>
&gt; leap second.<br>
&gt;<br>
<br>
</div></div>My point of view is that we shouldn&#39;t do anything in the ke=
rnel and<br>
instead handle that with proper TZ files (see leapseconds in<br>
tzdata2015g). You can then handle your own leapseconds epoch and add<br>
future leapseconds without having to update your kernel.<br></blockquote><d=
iv><br></div><div>So while these approaches are attractive, I think we&#39;=
re kind of stuck with the current behavior. Posix times don&#39;t include l=
eapseconds. So we repeat the leap-second, and for those that care you can c=
heck the adjtimex timestate to see if the TIME_OOP flag is set to detect le=
ap-seconds in progress.</div><div><br></div><div>So as long as there are le=
apseconds =C2=A0(and with the most recent discussion on abolition not succe=
eding), we&#39;re going to have to keep the existing behavior.</div><div><b=
r></div><div>As for how to treat the certs, you&#39;re option #1 &quot;Trea=
t it as hh:mm:59&quot; is probably the closest to what the kernel does, sin=
ce it repeats the 59th second on the leapsecond. =C2=A0</div><div><br></div=
><div>Arnd&#39; suggestion of encoding it into TAI is also something to con=
sider as it is close to your suggestion, as it basically doesn&#39;t have a=
ny leapseconds (just a number of seconds since 1970) but requires you have =
a table of leap-seconds to properly translate between TAI time values to UT=
C and back. The other problem with TAI is that while the kernel supports it=
, not many systems are configured to properly initialize it, so its likely =
to match UTC most of the time. But if you&#39;re only using TAI internally =
in your app, and translating out to UTC as needed, that might not matter.</=
div><div><br></div><div>thanks</div><div>-john</div></div></div></div>

--001a114920c67fa9000526fcf543--
