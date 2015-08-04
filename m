Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7FBE025A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 17:55:38 +0000 (UTC)
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B90EB14E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 17:55:37 +0000 (UTC)
Received: by lbbyj8 with SMTP id yj8so10653899lbb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Aug 2015 10:55:36 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150804125556.GA5180@mwanda>
References: <2111196.TG1k3f53YQ@avalon>
	<alpine.DEB.2.10.1507311833280.2499@hadrien>
	<20150731165346.GA18984@infradead.org> <1624703.qdGzscHWSc@avalon>
	<alpine.DEB.2.02.1508011319140.2071@localhost6.localdomain6>
	<20150804125556.GA5180@mwanda>
Date: Tue, 4 Aug 2015 10:55:35 -0700
Message-ID: <CAKdAkRTcHXjb+R=AkmzxRgn14FkPEi2B3ePAK2W4_yQnrrNnxQ@mail.gmail.com>
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: multipart/alternative; boundary=001a11c3bfac485575051c7ffee0
Cc: Shuah Khan <shuah.kh@samsung.com>, Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org,
	Christoph Hellwig <hch@infradead.org>, Tejun Heo <tj@kernel.org>
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

--001a11c3bfac485575051c7ffee0
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 4, 2015 at 5:55 AM, Dan Carpenter <dan.carpenter@oracle.com>
wrote:

> On Sat, Aug 01, 2015 at 01:21:09PM +0200, Julia Lawall wrote:
> > Currently, is there any documentation about when these functions can be
> > used?  All I remember seeing is a discussion of what the functions do and
> > what functions are available.  But nothing about when they should and
> > should not be used.
> >
>
> The documentation for devm_kmalloc() doesn't list common pitfalls.  The
> other big one which should be obvious, but happens often is freeing
> devm_ memory with kfree().
>
> /**
>  * devm_kmalloc - Resource-managed kmalloc
>  * @dev: Device to allocate memory for
>  * @size: Allocation size
>  * @gfp: Allocation gfp flags
>  *
>  * Managed kmalloc.  Memory allocated with this function is
>  * automatically freed on driver detach.  Like all other devres
>  * resources, guaranteed alignment is unsigned long long.
>  *
>  * RETURNS:
>  * Pointer to allocated memory on success, NULL on failure.
>  */
>

I wonder if it would be possible to note that the current thread is going
through probe() or remove() code path in driver core and scream if we
encounter devm* call outside of such path. That will give false positives
in cases when there is a legitimate mix of automatic and manual resource
management (i.e. you rely on automatic cleanup in probe()/remove() but need
to free/reallocate object somewhere else), but we can create another call
for that.

Thanks.

-- 
Dmitry

--001a11c3bfac485575051c7ffee0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Aug 4, 2015 at 5:55 AM, Dan Carpenter <span dir=3D"ltr">&lt;<a =
href=3D"mailto:dan.carpenter@oracle.com" target=3D"_blank">dan.carpenter@or=
acle.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">On Sat, Aug 01, 2015 at 01:21:09PM +0200, Julia Lawall wrote:<br>
&gt; Currently, is there any documentation about when these functions can b=
e<br>
&gt; used?=C2=A0 All I remember seeing is a discussion of what the function=
s do and<br>
&gt; what functions are available.=C2=A0 But nothing about when they should=
 and<br>
&gt; should not be used.<br>
&gt;<br>
<br>
</span>The documentation for devm_kmalloc() doesn&#39;t list common pitfall=
s.=C2=A0 The<br>
other big one which should be obvious, but happens often is freeing<br>
devm_ memory with kfree().<br>
<br>
/**<br>
=C2=A0* devm_kmalloc - Resource-managed kmalloc<br>
=C2=A0* @dev: Device to allocate memory for<br>
=C2=A0* @size: Allocation size<br>
=C2=A0* @gfp: Allocation gfp flags<br>
=C2=A0*<br>
=C2=A0* Managed kmalloc.=C2=A0 Memory allocated with this function is<br>
=C2=A0* automatically freed on driver detach.=C2=A0 Like all other devres<b=
r>
=C2=A0* resources, guaranteed alignment is unsigned long long.<br>
=C2=A0*<br>
=C2=A0* RETURNS:<br>
=C2=A0* Pointer to allocated memory on success, NULL on failure.<br>
=C2=A0*/<br></blockquote><div>=C2=A0</div><div>I wonder if it would be poss=
ible to note that the current thread is going through probe() or remove() c=
ode path in driver core and scream if we encounter devm* call outside of su=
ch path. That will give false positives in cases when there is a legitimate=
 mix of automatic and manual resource management (i.e. you rely on automati=
c cleanup in probe()/remove() but need to free/reallocate object somewhere =
else), but we can create another call for that.<br></div><div><br></div><di=
v>Thanks.</div><div><br></div><div>--=C2=A0</div><div>Dmitry</div></div>
</div></div>

--001a11c3bfac485575051c7ffee0--
