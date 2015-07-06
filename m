Return-Path: <kaccardi@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A34D3B1B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 16:34:06 +0000 (UTC)
Received: from mail-yk0-f175.google.com (mail-yk0-f175.google.com
	[209.85.160.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 70A001DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 16:34:05 +0000 (UTC)
Received: by ykfs198 with SMTP id s198so48495549ykf.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 06 Jul 2015 09:34:04 -0700 (PDT)
MIME-Version: 1.0
References: <1489458.8WDRattPkl@vostro.rjw.lan> <20150706114017.463ef472@noble>
	<53223375.qzkvIEse3r@vostro.rjw.lan>
In-Reply-To: <53223375.qzkvIEse3r@vostro.rjw.lan>
From: Kristen Accardi <kaccardi@gmail.com>
Date: Mon, 06 Jul 2015 16:33:55 +0000
Message-ID: <CAH3eK3QA3vQ==uaB-re9ys6zH16oeE7jHOnjSDLEDUG-92jMzg@mail.gmail.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>, NeilBrown <neilb@suse.com>
Content-Type: multipart/alternative; boundary=94eb2c07e24256bf84051a3779d3
Cc: Grant Likely <grant.likely@linaro.org>, Len Brown <len.brown@intel.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	ksummit-discuss@lists.linuxfoundation.org,
	Kristen Carlson Accardi <kristen@linux.intel.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] System-wide interface to specify
 the level of PM tuning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--94eb2c07e24256bf84051a3779d3
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 6, 2015 at 6:45 AM Rafael J. Wysocki <rjw@rjwysocki.net> wrote:

> On Monday, July 06, 2015 11:40:17 AM NeilBrown wrote:
> > On Mon, 06 Jul 2015 02:22:02 +0200 "Rafael J. Wysocki"
> > <rjw@rjwysocki.net> wrote:
> >
> > > Hi All,
> > >
> > > This is a re-occuring theme, but we discussed it last month during
> LinuxCon
> > > Japan with Kristen, Grant and other people and pretty much the only
> conclusion
> > > we could reach was to propose it as the KS topic, so here it goes.
> > >
> > > As systems get more and more complex and more and more internally
> integrated
> > > over time, every new generation of them requires an increased amount
> of tuning
> > > to achieve satisfactory balance between energy usage and performance.
> You need
> > > to know what to tune and how to do that, it needs to be done from user
> space or
> > > requires special Kconfig options to be set (or even out-of-the-tree
> patches to
> > > be applied in extreme cases) and so on.  All that becomes more and
> more esoteric
> > > and quite frankly I'm not sure how many users are able to do that on
> their new
> > > systems.
> > >
> > > That leads to a question whether or not a global interface
> (sysfs-based,
> > > command line etc.) could be added to the kernel that might be used to
> make a
> > > certain amount of the tuning happen already at the kernel level.  For
> example,
> > > it might change the default runtime PM control setting for all devices
> from
> > > "on" to "auto", automatically enable other runtime power management
> features
> > > available from various bus types (SATA link power management, USB LPM,
> others)
> > > and generally enable power management techiques disabled by default
> because
> > > enabling them may lead to performance regressions.
> > >
> > > So do we need such an interface?  If not, why not?  If so, how should
> it be
> > > designed, what should it cover etc.?
> > >
> >
> > This sounds like an important topic, but I don't think I quite
> > understand the question.
> > We already have ".../power/runtime_enabled" and various other tunables.
> > What more could you need in a kernel interface?
>
> The problem is that the defaults for all of those tunables are
> performance-oriented,
> so you need to flip many of them (if not all) to become power-oriented.
>
> That usually mean flipping a number of knobs every time you boot the
> system.
>
> > I can see that much more than an interface is needed - we need a tool
> > that makes use of that interface.
>
> That is one possible approach, but that tool would need to be developed in
> a lockstep with the kernel anyway, so it knows about all of the new
> features
> added to the kernel over time that have non-trivial power vs performance
> characteristics.
>

Deployment of a user space tool is the big issue - like Rafael said it is
hard to keep up with all the new settings that might be present and the
kernel will have this knowledge.


>
> > Maybe a database of different systems together with tuning settings for
> > different goals.
> > Then some tools detects the particular hardware it is running on, and
> > applies the tuning rules.
> >
> > (a tiny bit like a devicetree database which contains configuration
> > rules).
> >
> > Or have I missed the point completely?
>
> No, I don't think you have missed it, but then most of subsystems and
> drivers
> in the kernel know what it means to be "power-friendly", so they should be
> able
> to choose their defaults on the basis of one single setting somewhere.
>
> Thanks,
> Rafael
>
>
Also some components can be present on performance sensitive platforms as
well as power sensitive platforms, so it would be better if they chose
their default setting based on a system wide policy default that can be set
by a platform driver.


> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--94eb2c07e24256bf84051a3779d3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Jul 6,=
 2015 at 6:45 AM Rafael J. Wysocki &lt;<a href=3D"mailto:rjw@rjwysocki.net"=
>rjw@rjwysocki.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">O=
n Monday, July 06, 2015 11:40:17 AM NeilBrown wrote:<br>
&gt; On Mon, 06 Jul 2015 02:22:02 +0200 &quot;Rafael J. Wysocki&quot;<br>
&gt; &lt;<a href=3D"mailto:rjw@rjwysocki.net" target=3D"_blank">rjw@rjwysoc=
ki.net</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; Hi All,<br>
&gt; &gt;<br>
&gt; &gt; This is a re-occuring theme, but we discussed it last month durin=
g LinuxCon<br>
&gt; &gt; Japan with Kristen, Grant and other people and pretty much the on=
ly conclusion<br>
&gt; &gt; we could reach was to propose it as the KS topic, so here it goes=
.<br>
&gt; &gt;<br>
&gt; &gt; As systems get more and more complex and more and more internally=
 integrated<br>
&gt; &gt; over time, every new generation of them requires an increased amo=
unt of tuning<br>
&gt; &gt; to achieve satisfactory balance between energy usage and performa=
nce.=C2=A0 You need<br>
&gt; &gt; to know what to tune and how to do that, it needs to be done from=
 user space or<br>
&gt; &gt; requires special Kconfig options to be set (or even out-of-the-tr=
ee patches to<br>
&gt; &gt; be applied in extreme cases) and so on.=C2=A0 All that becomes mo=
re and more esoteric<br>
&gt; &gt; and quite frankly I&#39;m not sure how many users are able to do =
that on their new<br>
&gt; &gt; systems.<br>
&gt; &gt;<br>
&gt; &gt; That leads to a question whether or not a global interface (sysfs=
-based,<br>
&gt; &gt; command line etc.) could be added to the kernel that might be use=
d to make a<br>
&gt; &gt; certain amount of the tuning happen already at the kernel level.=
=C2=A0 For example,<br>
&gt; &gt; it might change the default runtime PM control setting for all de=
vices from<br>
&gt; &gt; &quot;on&quot; to &quot;auto&quot;, automatically enable other ru=
ntime power management features<br>
&gt; &gt; available from various bus types (SATA link power management, USB=
 LPM, others)<br>
&gt; &gt; and generally enable power management techiques disabled by defau=
lt because<br>
&gt; &gt; enabling them may lead to performance regressions.<br>
&gt; &gt;<br>
&gt; &gt; So do we need such an interface?=C2=A0 If not, why not?=C2=A0 If =
so, how should it be<br>
&gt; &gt; designed, what should it cover etc.?<br>
&gt; &gt;<br>
&gt;<br>
&gt; This sounds like an important topic, but I don&#39;t think I quite<br>
&gt; understand the question.<br>
&gt; We already have &quot;.../power/runtime_enabled&quot; and various othe=
r tunables.<br>
&gt; What more could you need in a kernel interface?<br>
<br>
The problem is that the defaults for all of those tunables are performance-=
oriented,<br>
so you need to flip many of them (if not all) to become power-oriented.<br>
<br>
That usually mean flipping a number of knobs every time you boot the system=
.<br>
<br>
&gt; I can see that much more than an interface is needed - we need a tool<=
br>
&gt; that makes use of that interface.<br>
<br>
That is one possible approach, but that tool would need to be developed in<=
br>
a lockstep with the kernel anyway, so it knows about all of the new feature=
s<br>
added to the kernel over time that have non-trivial power vs performance<br=
>
characteristics.<br></blockquote><div><br></div><div>Deployment of a user s=
pace tool is the big issue - like Rafael said it is hard to keep up with al=
l the new settings that might be present and the kernel will have this know=
ledge.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt; Maybe a database of different systems together with tuning settings fo=
r<br>
&gt; different goals.<br>
&gt; Then some tools detects the particular hardware it is running on, and<=
br>
&gt; applies the tuning rules.<br>
&gt;<br>
&gt; (a tiny bit like a devicetree database which contains configuration<br=
>
&gt; rules).<br>
&gt;<br>
&gt; Or have I missed the point completely?<br>
<br>
No, I don&#39;t think you have missed it, but then most of subsystems and d=
rivers<br>
in the kernel know what it means to be &quot;power-friendly&quot;, so they =
should be able<br>
to choose their defaults on the basis of one single setting somewhere.<br>
<br>
Thanks,<br>
Rafael<br>
<br></blockquote><div><br></div><div>Also some components can be present on=
 performance sensitive platforms as well as power sensitive platforms, so i=
t would be better if they chose their default setting based on a system wid=
e policy default that can be set by a platform driver.</div><div>=C2=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">
_______________________________________________<br>
Ksummit-discuss mailing list<br>
<a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org" target=3D"_bla=
nk">Ksummit-discuss@lists.linuxfoundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discu=
ss" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundation.org/=
mailman/listinfo/ksummit-discuss</a><br>
</blockquote></div></div>

--94eb2c07e24256bf84051a3779d3--
