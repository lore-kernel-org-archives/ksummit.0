Return-Path: <willy6545@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8502E7A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 06:30:27 +0000 (UTC)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
	[209.85.167.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 14DEF7C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 06:30:27 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id r127-v6so18840279oie.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 22:30:26 -0800 (PST)
MIME-Version: 1.0
References: <CAFhKne8YNpGZbXk-KTN1mA9WBW1=NSVBo7RU0rYX9pbVgfj_Sg@mail.gmail.com>
	<CACRpkdabmP3EhQGiRcg_aJ75U2hpjuLe+uH36i46O+Z=wE2H_Q@mail.gmail.com>
	<20181115160302.428a037b@lwn.net> <20181116024730.GF20617@thunk.org>
In-Reply-To: <20181116024730.GF20617@thunk.org>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Fri, 16 Nov 2018 01:30:13 -0500
Message-ID: <CAFhKne8zGm5S2AAhku67uLwLaJewFYkXOorNPHtKXO-Sn6-=OA@mail.gmail.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Content-Type: multipart/alternative; boundary="000000000000816902057ac24d68"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] XArray
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--000000000000816902057ac24d68
Content-Type: text/plain; charset="UTF-8"

Thanks, Ted, that's a pretty accurate summary.

I'd say previous talks have been aimed at getting feedback on the API (and
several of the changes to the API came from giving those talks).  This talk
was "It's been merged, you should consider using it, here's why you might
want to"

Slides here:
http://www.infradead.org/~willy/linux/Plumbers2018XArray.pdf


On Thu, Nov 15, 2018 at 10:23 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:

> On Thu, Nov 15, 2018 at 04:03:02PM -0700, Jonathan Corbet wrote:
> >
> > Just FWIW, I was there, but I suspect I'll not be making an article out
> > of it; quite a bit of the material was stuff that we've covered before.
> > The video should be available in a week or two for those who want to
> > catch up on the rest.
>
> A good chunk of the contents of Matthew's talk can be found at:
>
> https://lwn.net/Articles/745073/
> https://www.kernel.org/doc/html/latest/core-api/xarray.html
>
> Two important things that's not covered in these two links are:
>
> 1)  Some future plans that Matthew has for making XArray even better
>
> 2)  The use cases for which XArray is not (yet) ready.
>
> Short version: Sparse arrays, hash tables, and other things where the
> breadth of the keyspace that gets used is very wide relative to the
> number of elements stored in the XArray.  So if you need to store two
> elements, one where the key is 0x0000000 and the other key is
> 0xffffff00, XArray might not be the best choice for you --- but maybe
> that answer will change in a year or so --- see (1) above.
>
> For more details, the video and slides should be available soon.  :-)
>
> Cheers,
>
>                                                 - Ted
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--000000000000816902057ac24d68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Thanks, Ted, that&#39;s a pretty acc=
urate summary.<br><br></div>I&#39;d say previous talks have been aimed at g=
etting feedback on the API (and several of the changes to the API came from=
 giving those talks).=C2=A0 This talk was &quot;It&#39;s been merged, you s=
hould consider using it, here&#39;s why you might want to&quot;<br><br>Slid=
es here:<br><a href=3D"http://www.infradead.org/~willy/linux/Plumbers2018XA=
rray.pdf">http://www.infradead.org/~willy/linux/Plumbers2018XArray.pdf</a><=
br><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, =
Nov 15, 2018 at 10:23 PM Theodore Y. Ts&#39;o &lt;<a href=3D"mailto:tytso@m=
it.edu">tytso@mit.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">On Thu, Nov 15, 2018 at 04:03:02PM -0700, Jonathan Corbet wrote:<br>
&gt; <br>
&gt; Just FWIW, I was there, but I suspect I&#39;ll not be making an articl=
e out<br>
&gt; of it; quite a bit of the material was stuff that we&#39;ve covered be=
fore.<br>
&gt; The video should be available in a week or two for those who want to<b=
r>
&gt; catch up on the rest.<br>
<br>
A good chunk of the contents of Matthew&#39;s talk can be found at:<br>
<br>
<a href=3D"https://lwn.net/Articles/745073/" rel=3D"noreferrer" target=3D"_=
blank">https://lwn.net/Articles/745073/</a><br>
<a href=3D"https://www.kernel.org/doc/html/latest/core-api/xarray.html" rel=
=3D"noreferrer" target=3D"_blank">https://www.kernel.org/doc/html/latest/co=
re-api/xarray.html</a><br>
<br>
Two important things that&#39;s not covered in these two links are:<br>
<br>
1)=C2=A0 Some future plans that Matthew has for making XArray even better<b=
r>
<br>
2)=C2=A0 The use cases for which XArray is not (yet) ready.<br>
<br>
Short version: Sparse arrays, hash tables, and other things where the<br>
breadth of the keyspace that gets used is very wide relative to the<br>
number of elements stored in the XArray.=C2=A0 So if you need to store two<=
br>
elements, one where the key is 0x0000000 and the other key is<br>
0xffffff00, XArray might not be the best choice for you --- but maybe<br>
that answer will change in a year or so --- see (1) above.<br>
<br>
For more details, the video and slides should be available soon.=C2=A0 :-)<=
br>
<br>
Cheers,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 - Ted<br>
_______________________________________________<br>
Ksummit-discuss mailing list<br>
<a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org" target=3D"_bla=
nk">Ksummit-discuss@lists.linuxfoundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discu=
ss" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundation.org/=
mailman/listinfo/ksummit-discuss</a><br>
</blockquote></div>

--000000000000816902057ac24d68--
