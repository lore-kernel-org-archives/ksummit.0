Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1653990
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Oct 2015 06:03:43 +0000 (UTC)
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 87BC090
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Oct 2015 06:03:42 +0000 (UTC)
Received: by oies66 with SMTP id s66so94671637oie.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Oct 2015 23:03:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20151026050450.GF27420@8bytes.org>
References: <CALCETrWJveWdcHy7N0gE_KeZb3TUbSGSQUVy4YjKGpb5p94yXQ@mail.gmail.com>
	<1445833878.3405.24.camel@infradead.org>
	<20151026044350.GE27420@8bytes.org>
	<1445834882.3405.30.camel@infradead.org>
	<20151026050450.GF27420@8bytes.org>
Date: Sun, 25 Oct 2015 23:03:41 -0700
Message-ID: <CALCETrXDjbOV1xrM0-QU+aXSTMYV247gZFZx4ESYoG-XDmC1fQ@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
To: Joerg Roedel <joro@8bytes.org>
Content-Type: multipart/alternative; boundary=001a1137c21c2454010522fbb9c2
Cc: Paolo Bonzini <pbonzini@redhat.com>,
	ksummit-discuss@lists.linuxfoundation.org, m.smarduch@samsung.com
Subject: Re: [Ksummit-discuss] Short topic: virtio vs IOMMU
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a1137c21c2454010522fbb9c2
Content-Type: text/plain; charset=UTF-8

On Oct 26, 2015 2:04 PM, "Joerg Roedel" <joro@8bytes.org> wrote:
>
> On Mon, Oct 26, 2015 at 01:48:02PM +0900, David Woodhouse wrote:
> > It would be useful to have an emulated IOMMU, full stop. And yeah, it
> > might actually make sense to *start* by using it for purely virtual
> > devices, [...]
>
> Sure, I think this is what qemu provides already, except for the virtio
> devices (which are also emulated). I think it would be cool to have
> virtio translated by the emulated iommu too (at least optional).

Are we willing to break the existing (experimental?)
untranslated-but-still-behind-IOMMU case?  Or can we fix up the DMAR tables
to make it keep working?

I'm not volunteering to write the QEMU part, and I'm not an expert on DMAR,
but I have patches for the pre-1.0 kernel part, and doing the modern
virtio-pci case would be straightforward.

--Andy

--001a1137c21c2454010522fbb9c2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Oct 26, 2015 2:04 PM, &quot;Joerg Roedel&quot; &lt;<a href=3D"mailto:jor=
o@8bytes.org">joro@8bytes.org</a>&gt; wrote:<br>
&gt;<br>
&gt; On Mon, Oct 26, 2015 at 01:48:02PM +0900, David Woodhouse wrote:<br>
&gt; &gt; It would be useful to have an emulated IOMMU, full stop. And yeah=
, it<br>
&gt; &gt; might actually make sense to *start* by using it for purely virtu=
al<br>
&gt; &gt; devices, [...]<br>
&gt;<br>
&gt; Sure, I think this is what qemu provides already, except for the virti=
o<br>
&gt; devices (which are also emulated). I think it would be cool to have<br=
>
&gt; virtio translated by the emulated iommu too (at least optional).</p>
<p dir=3D"ltr">Are we willing to break the existing (experimental?) untrans=
lated-but-still-behind-IOMMU case?=C2=A0 Or can we fix up the DMAR tables t=
o make it keep working?</p>
<p dir=3D"ltr">I&#39;m not volunteering to write the QEMU part, and I&#39;m=
 not an expert on DMAR, but I have patches for the pre-1.0 kernel part, and=
 doing the modern virtio-pci case would be straightforward.</p>
<p dir=3D"ltr">--Andy</p>

--001a1137c21c2454010522fbb9c2--
