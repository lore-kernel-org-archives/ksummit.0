Return-Path: <willy6545@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 48178A83
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:52:36 +0000 (UTC)
Received: from mail-yh0-f44.google.com (mail-yh0-f44.google.com
	[209.85.213.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CFAE02034B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:52:33 +0000 (UTC)
Received: by mail-yh0-f44.google.com with SMTP id b6so4032781yha.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 09 May 2014 10:52:33 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1399657343.2166.61.camel@dabdike.int.hansenpartnership.com>
References: <alpine.DEB.2.10.1405081124000.24271@gentwo.org>
	<1399595490.2230.13.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.10.1405090940080.11318@gentwo.org>
	<20140509122451.5228a038@gandalf.local.home>
	<alpine.DEB.2.10.1405091150410.11810@gentwo.org>
	<1399657343.2166.61.camel@dabdike.int.hansenpartnership.com>
Date: Fri, 9 May 2014 13:52:32 -0400
Message-ID: <CAFhKne_uYKisSCcvJB124zvFifHV9=wOCC=PbHQgwqcHC=SCQg@mail.gmail.com>
From: Matthew Wilcox <willy6545@gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: multipart/alternative; boundary=089e014952961b4d2204f8fb43d3
Cc: Sarah Sharp <sarah@minilop.net>, ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Christoph Lameter <cl@linux.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--089e014952961b4d2204f8fb43d3
Content-Type: text/plain; charset=UTF-8

On 2014-05-09 1:42 PM, "James Bottomley" <
James.Bottomley@hansenpartnership.com> wrote:
> In theory, we could use link time optimization to place all the most
> used functions in the first TLB entry.  However, as Steve said, have you
> got measurements showing this helps?  If it's down in the noise, it's a
> lot of work for no benefit.

It's going to be highly workload dependent. For example, TPC-C randomly
accesses all of memory. Even doubling the number of 2MB TLB entries isn't
going to help more than a couple of percent. On the other hand, for a
scientific workload which juuuust overflows the number of 2MB entries, you
might see a 100% speedup with the freeing of a single 2MB entry to
userspace. And there are many workloads in between (most exhibit at least
some locality of reference).

--089e014952961b4d2204f8fb43d3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>On 2014-05-09 1:42 PM, &quot;James Bottomley&quot; &lt;<a href=3D"mailto=
:James.Bottomley@hansenpartnership.com">James.Bottomley@hansenpartnership.c=
om</a>&gt; wrote:<br>
&gt; In theory, we could use link time optimization to place all the most<b=
r>
&gt; used functions in the first TLB entry. =C2=A0However, as Steve said, h=
ave you<br>
&gt; got measurements showing this helps? =C2=A0If it&#39;s down in the noi=
se, it&#39;s a<br>
&gt; lot of work for no benefit.</p>
<p>It&#39;s going to be highly workload dependent. For example, TPC-C rando=
mly accesses all of memory. Even doubling the number of 2MB TLB entries isn=
&#39;t going to help more than a couple of percent. On the other hand, for =
a scientific workload which juuuust overflows the number of 2MB entries, yo=
u might see a 100% speedup with the freeing of a single 2MB entry to usersp=
ace. And there are many workloads in between (most exhibit at least some lo=
cality of reference).<br>

</p>

--089e014952961b4d2204f8fb43d3--
