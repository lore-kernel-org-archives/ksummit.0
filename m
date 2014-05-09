Return-Path: <willy6545@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 54B7CAAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:58:05 +0000 (UTC)
Received: from mail-yk0-f174.google.com (mail-yk0-f174.google.com
	[209.85.160.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A7A36201AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:58:04 +0000 (UTC)
Received: by mail-yk0-f174.google.com with SMTP id 9so3726306ykp.19
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 09 May 2014 10:58:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAG4TOxNJxWLWSZYW313XATtCpV+SM9WrYFJ-V+0Pf-yryLh67g@mail.gmail.com>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<CAG4TOxNJxWLWSZYW313XATtCpV+SM9WrYFJ-V+0Pf-yryLh67g@mail.gmail.com>
Date: Fri, 9 May 2014 13:58:03 -0400
Message-ID: <CAFhKne9pHJzsxt8JemvogCRWywU5Z3e2-_JtC9Z9un+RvVP7XQ@mail.gmail.com>
From: Matthew Wilcox <willy6545@gmail.com>
To: Roland Dreier <roland@kernel.org>
Content-Type: multipart/alternative; boundary=20cf303ea712d2ff7204f8fb562f
Cc: linux-nvme@lists.infradead.org, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Device error handling /
 reporting / isolation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--20cf303ea712d2ff7204f8fb562f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I'm hearing a bunch of FUD around NVMe hotplug but precious little in the
way of bug reports! Keith Busch has been doing a stellar job of fixing up
the bugs that he's found, but I have seen precisely zero hotplug bugs
reported to the NVMe mailing list. So put up or shut up.
 On 2014-05-09 1:49 PM, "Roland Dreier" <roland@kernel.org> wrote:

> On Thu, May 8, 2014 at 5:37 AM, David Woodhouse <dwmw2@infradead.org>
> wrote:
> > I'd like to have a discussion about handling device errors.
> >
> > IOMMUs are becoming more common, and we've seen some failure modes wher=
e
> > we just end up with an endless stream of fault reports from a given
> > device, and the kernel can do nothing else.
> >
> > We may have various options for shutting it up =E2=80=94 a PCI function=
 level
> > reset, power cycling the offending device, or maybe just configuring th=
e
> > IOMMU to *ignore* further errors from it, which would at least let the
> > system get on with doing something useful (and if we do, when do we
> > re-enable reporting?).
>
> I think there's a more general problem that's worth talking about
> here.  In addition to IOMMU faults, there are lots of other PCI errors
> that can happen, and we have some small number of drivers that have
> been "hardened" to try and recover from these errors.  However even
> for these "hardened" drivers it seems pretty easy to hit deadlocks
> when the driver tries to tear down and reinitialize things.
>
> So I wonder if we can do better without proliferating error handling
> tentacles into all sorts of low-level drivers ("did we just read
> 0xffffffff here?  how about here?  are we in the middle of error
> recovery?  how about now?").
>
> One context where this is becoming a real concern is with NVMe drives.
>  These are SSDs that (may) look like normal 2.5" drives, but use PCIe
> rather than SATA or SAS to connect to the host.  Since they look like
> normal drives, it's natural to put them into hot-pluggable JBODs, but
> it turns out we react much worse to PCIe surprise removal than, say,
> SAS hotplug.
>
>  - R.
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--20cf303ea712d2ff7204f8fb562f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I&#39;m hearing a bunch of FUD around NVMe hotplug but precious little i=
n the way of bug reports! Keith Busch has been doing a stellar job of fixin=
g up the bugs that he&#39;s found, but I have seen precisely zero hotplug b=
ugs reported to the NVMe mailing list. So put up or shut up.<br>

</p>
<div class=3D"gmail_quote">On 2014-05-09 1:49 PM, &quot;Roland Dreier&quot;=
 &lt;<a href=3D"mailto:roland@kernel.org">roland@kernel.org</a>&gt; wrote:<=
br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
On Thu, May 8, 2014 at 5:37 AM, David Woodhouse &lt;<a href=3D"mailto:dwmw2=
@infradead.org">dwmw2@infradead.org</a>&gt; wrote:<br>
&gt; I&#39;d like to have a discussion about handling device errors.<br>
&gt;<br>
&gt; IOMMUs are becoming more common, and we&#39;ve seen some failure modes=
 where<br>
&gt; we just end up with an endless stream of fault reports from a given<br=
>
&gt; device, and the kernel can do nothing else.<br>
&gt;<br>
&gt; We may have various options for shutting it up =E2=80=94 a PCI functio=
n level<br>
&gt; reset, power cycling the offending device, or maybe just configuring t=
he<br>
&gt; IOMMU to *ignore* further errors from it, which would at least let the=
<br>
&gt; system get on with doing something useful (and if we do, when do we<br=
>
&gt; re-enable reporting?).<br>
<br>
I think there&#39;s a more general problem that&#39;s worth talking about<b=
r>
here. =C2=A0In addition to IOMMU faults, there are lots of other PCI errors=
<br>
that can happen, and we have some small number of drivers that have<br>
been &quot;hardened&quot; to try and recover from these errors. =C2=A0Howev=
er even<br>
for these &quot;hardened&quot; drivers it seems pretty easy to hit deadlock=
s<br>
when the driver tries to tear down and reinitialize things.<br>
<br>
So I wonder if we can do better without proliferating error handling<br>
tentacles into all sorts of low-level drivers (&quot;did we just read<br>
0xffffffff here? =C2=A0how about here? =C2=A0are we in the middle of error<=
br>
recovery? =C2=A0how about now?&quot;).<br>
<br>
One context where this is becoming a real concern is with NVMe drives.<br>
=C2=A0These are SSDs that (may) look like normal 2.5&quot; drives, but use =
PCIe<br>
rather than SATA or SAS to connect to the host. =C2=A0Since they look like<=
br>
normal drives, it&#39;s natural to put them into hot-pluggable JBODs, but<b=
r>
it turns out we react much worse to PCIe surprise removal than, say,<br>
SAS hotplug.<br>
<br>
=C2=A0- R.<br>
_______________________________________________<br>
Ksummit-discuss mailing list<br>
<a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org">Ksummit-discus=
s@lists.linuxfoundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discu=
ss" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listinfo/ks=
ummit-discuss</a><br>
</blockquote></div>

--20cf303ea712d2ff7204f8fb562f--
