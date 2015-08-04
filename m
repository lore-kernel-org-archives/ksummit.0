Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 023357AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 18:07:48 +0000 (UTC)
Received: from mail-lb0-f171.google.com (mail-lb0-f171.google.com
	[209.85.217.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7314E10A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 18:07:46 +0000 (UTC)
Received: by lbbyj8 with SMTP id yj8so10845251lbb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Aug 2015 11:07:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.10.1508042000430.2327@hadrien>
References: <2111196.TG1k3f53YQ@avalon>
	<alpine.DEB.2.10.1507311833280.2499@hadrien>
	<20150731165346.GA18984@infradead.org> <1624703.qdGzscHWSc@avalon>
	<alpine.DEB.2.02.1508011319140.2071@localhost6.localdomain6>
	<20150804125556.GA5180@mwanda>
	<CAKdAkRTcHXjb+R=AkmzxRgn14FkPEi2B3ePAK2W4_yQnrrNnxQ@mail.gmail.com>
	<alpine.DEB.2.10.1508042000430.2327@hadrien>
Date: Tue, 4 Aug 2015 11:07:44 -0700
Message-ID: <CAKdAkRTFE_LiHKDLkic6UviC-NyN5Qii0p__1ZOE2uNwDPNHww@mail.gmail.com>
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Content-Type: multipart/alternative; boundary=001a11c3bfacb9b3f5051c8029d0
Cc: Shuah Khan <shuah.kh@samsung.com>, Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org,
	Christoph Hellwig <hch@infradead.org>, Tejun Heo <tj@kernel.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
	or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a11c3bfacb9b3f5051c8029d0
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 4, 2015 at 11:03 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Tue, 4 Aug 2015, Dmitry Torokhov wrote:
>
> >
> >
> > On Tue, Aug 4, 2015 at 5:55 AM, Dan Carpenter <dan.carpenter@oracle.com>
> > wrote:
> >       On Sat, Aug 01, 2015 at 01:21:09PM +0200, Julia Lawall wrote:
> >       > Currently, is there any documentation about when these
> >       functions can be
> >       > used?  All I remember seeing is a discussion of what the
> >       functions do and
> >       > what functions are available.  But nothing about when they
> >       should and
> >       > should not be used.
> >       >
> >
> >       The documentation for devm_kmalloc() doesn't list common
> >       pitfalls.  The
> >       other big one which should be obvious, but happens often is
> >       freeing
> >       devm_ memory with kfree().
> >
> >       /**
> >        * devm_kmalloc - Resource-managed kmalloc
> >        * @dev: Device to allocate memory for
> >        * @size: Allocation size
> >        * @gfp: Allocation gfp flags
> >        *
> >        * Managed kmalloc.  Memory allocated with this function is
> >        * automatically freed on driver detach.  Like all other devres
> >        * resources, guaranteed alignment is unsigned long long.
> >        *
> >        * RETURNS:
> >        * Pointer to allocated memory on success, NULL on failure.
> >        */
> >
> >
> > I wonder if it would be possible to note that the current thread is going
> > through probe() or remove() code path in driver core and scream if we
> > encounter devm* call outside of such path. That will give false
> positives in
> > cases when there is a legitimate mix of automatic and manual resource
> > management (i.e. you rely on automatic cleanup in probe()/remove() but
> need
> > to free/reallocate object somewhere else), but we can create another call
> > for that.
>
> This seems easy to do with Coccinelle, at least with respect to the
> functions in a single file.  I guess it doesn't solve the file operations
> problem, though?
>

No, it does not, but I've seen a few examples with devm (mostly
devm_k*alloc) used in wrong context and causing almost-memory-leaks (i.e.
they had a chance to be eventually cleaned up, but not really).

Thanks.

-- 
Dmitry

--001a11c3bfacb9b3f5051c8029d0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Aug 4, 2015 at 11:03 AM, Julia Lawall <span dir=3D"ltr">&lt;<a =
href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEn=
Zb"><div class=3D"h5">On Tue, 4 Aug 2015, Dmitry Torokhov wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Tue, Aug 4, 2015 at 5:55 AM, Dan Carpenter &lt;<a href=3D"mailto:da=
n.carpenter@oracle.com">dan.carpenter@oracle.com</a>&gt;<br>
&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Sat, Aug 01, 2015 at 01:21:09PM +0200, Ju=
lia Lawall wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Currently, is there any documentation a=
bout when these<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0functions can be<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; used?=C2=A0 All I remember seeing is a =
discussion of what the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0functions do and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; what functions are available.=C2=A0 But=
 nothing about when they<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0should and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; should not be used.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0The documentation for devm_kmalloc() doesn&#=
39;t list common<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pitfalls.=C2=A0 The<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0other big one which should be obvious, but h=
appens often is<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0freeing<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0devm_ memory with kfree().<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/**<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0* devm_kmalloc - Resource-managed kmal=
loc<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0* @dev: Device to allocate memory for<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0* @size: Allocation size<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0* @gfp: Allocation gfp flags<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0*<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0* Managed kmalloc.=C2=A0 Memory alloca=
ted with this function is<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0* automatically freed on driver detach=
.=C2=A0 Like all other devres<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0* resources, guaranteed alignment is u=
nsigned long long.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0*<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0* RETURNS:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0* Pointer to allocated memory on succe=
ss, NULL on failure.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0*/<br>
&gt;<br>
&gt; =C2=A0<br>
&gt; I wonder if it would be possible to note that the current thread is go=
ing<br>
&gt; through probe() or remove() code path in driver core and scream if we<=
br>
&gt; encounter devm* call outside of such path. That will give false positi=
ves in<br>
&gt; cases when there is a legitimate mix of automatic and manual resource<=
br>
&gt; management (i.e. you rely on automatic cleanup in probe()/remove() but=
 need<br>
&gt; to free/reallocate object somewhere else), but we can create another c=
all<br>
&gt; for that.<br>
<br>
</div></div>This seems easy to do with Coccinelle, at least with respect to=
 the<br>
functions in a single file.=C2=A0 I guess it doesn&#39;t solve the file ope=
rations<br>
problem, though?<br></blockquote><div><br></div><div>No, it does not, but I=
&#39;ve seen a few examples with devm (mostly devm_k*alloc) used in wrong c=
ontext and causing almost-memory-leaks (i.e. they had a chance to be eventu=
ally cleaned up, but not really).</div><div><br></div><div>Thanks.</div><di=
v><br></div><div>--=C2=A0<br></div></div><div class=3D"gmail_signature">Dmi=
try</div>
</div></div>

--001a11c3bfacb9b3f5051c8029d0--
