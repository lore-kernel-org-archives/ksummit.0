Return-Path: <kaccardi@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2FB5E93E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 15:45:10 +0000 (UTC)
Received: from mail-yk0-f170.google.com (mail-yk0-f170.google.com
	[209.85.160.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2B21524A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 15:45:08 +0000 (UTC)
Received: by ykeo3 with SMTP id o3so67155739yke.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 08:45:07 -0700 (PDT)
MIME-Version: 1.0
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<1455994.zAMIqEIJx2@vostro.rjw.lan>
	<CAKMK7uHfcwLe-HWz72LJDhe-HvKTBu65DaJmR3tW3TOze4uyVQ@mail.gmail.com>
	<2869041.AWiygZspUy@vostro.rjw.lan> <20150716011056.GA8931@x>
	<1437038341.6856.22.camel@infradead.org>
In-Reply-To: <1437038341.6856.22.camel@infradead.org>
From: Kristen Accardi <kaccardi@gmail.com>
Date: Thu, 16 Jul 2015 15:44:57 +0000
Message-ID: <CAH3eK3QS6-2spYEKO3dpFFS_Y0czA0vPk9Wfx7iPHmr4ZFFZ2A@mail.gmail.com>
To: David Woodhouse <dwmw2@infradead.org>,
	Josh Triplett <josh@joshtriplett.org>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>
Content-Type: multipart/alternative; boundary=001a1142d786acc6f9051afff4ec
Cc: Grant Likely <grant.likely@linaro.org>, "Brown, Len" <len.brown@intel.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

--001a1142d786acc6f9051afff4ec
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 16, 2015 at 2:19 AM David Woodhouse <dwmw2@infradead.org> wrote:

> On Wed, 2015-07-15 at 18:10 -0700, Josh Triplett wrote:
> >
> > > The point here is whether or not we want to have a way to make all of
> them be
> > > enabled by default instead and see what happens, for example.
> >
> > To some degree that seems like an admission of defeat: we can't possibly
> > do the right thing by default, so we give up and add a way for the user
> > to configure it.
> >
> > We should be selecting the most sensible combination of power and
> > performance by default; we should not punt that question to the average
> > user, *or* to the distros.
>
> Not to the user, perhaps. But it's not *so* unreasonable to let each of
> the distros tune things for *their* class of users. We might want base
> profiles for 'server', 'desktop' and 'laptop on battery' that distros
> work from.
>
>
We need to be able to give even the distros more help than they have now.
The problem is that the distros simply don't have the knowledge to tune
*all* the knobs appropriately.  If we gave them one knob as you suggested
(and what Rafael is suggesting) set to a sane default determined by the
kernel - they could then use whatever userspace tool to change it based on
whatever parameters they want.

But although that's complex, it's not the real problem.
>
> The real problem, as others have said, is when we have power management
> features which work fine for 99% of the population, but fail
> occasionally on broken hardware.
>
> We can't easily blacklist the known-broken devices or whitelist the
> good ones, and we end up having to turn the feature off by default.
>
> Sure, a DMI match on "HP" and "TO BE FILLED BY OEM" would often go a
> long way for a certain class of problem, but even that's not sufficient
> :)
>

driver maintainers don't want to maintain blacklist/whitelist because it's
hard.  It'd be nice to be able to load a black list or white list of
devices from the filesystem like we do with firmware.

>
>

--001a1142d786acc6f9051afff4ec
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Jul 16=
, 2015 at 2:19 AM David Woodhouse &lt;<a href=3D"mailto:dwmw2@infradead.org=
">dwmw2@infradead.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">On Wed, 2015-07-15 at 18:10 -0700, Josh Triplett wrote:<br>
&gt;<br>
&gt; &gt; The point here is whether or not we want to have a way to make al=
l of them be<br>
&gt; &gt; enabled by default instead and see what happens, for example.<br>
&gt;<br>
&gt; To some degree that seems like an admission of defeat: we can&#39;t po=
ssibly<br>
&gt; do the right thing by default, so we give up and add a way for the use=
r<br>
&gt; to configure it.<br>
&gt;<br>
&gt; We should be selecting the most sensible combination of power and<br>
&gt; performance by default; we should not punt that question to the averag=
e<br>
&gt; user, *or* to the distros.<br>
<br>
Not to the user, perhaps. But it&#39;s not *so* unreasonable to let each of=
<br>
the distros tune things for *their* class of users. We might want base<br>
profiles for &#39;server&#39;, &#39;desktop&#39; and &#39;laptop on battery=
&#39; that distros<br>
work from.<br>
<br></blockquote><div><br></div><div>We need to be able to give even the di=
stros more help than they have now.=C2=A0 The problem is that the distros s=
imply don&#39;t have the knowledge to tune *all* the knobs appropriately.=
=C2=A0 If we gave them one knob as you suggested (and what Rafael is sugges=
ting) set to a sane default determined by the kernel - they could then use =
whatever userspace tool to change it based on whatever parameters they want=
.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
But although that&#39;s complex, it&#39;s not the real problem.<br>
<br>
The real problem, as others have said, is when we have power management<br>
features which work fine for 99% of the population, but fail<br>
occasionally on broken hardware.<br>
<br>
We can&#39;t easily blacklist the known-broken devices or whitelist the<br>
good ones, and we end up having to turn the feature off by default.<br>
<br>
Sure, a DMI match on &quot;HP&quot; and &quot;TO BE FILLED BY OEM&quot; wou=
ld often go a<br>
long way for a certain class of problem, but even that&#39;s not sufficient=
<br>
:)<br></blockquote><div><br></div><div>driver maintainers don&#39;t want to=
 maintain blacklist/whitelist because it&#39;s hard.=C2=A0 It&#39;d be nice=
 to be able to load a black list or white list of devices from the filesyst=
em like we do with firmware.</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
</blockquote></div></div>

--001a1142d786acc6f9051afff4ec--
