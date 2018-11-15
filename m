Return-Path: <willy6545@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0548F7B3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 01:07:57 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A46FE75B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 01:07:56 +0000 (UTC)
Received: by mail-ot1-f50.google.com with SMTP id z33so16576831otz.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Nov 2018 17:07:56 -0800 (PST)
MIME-Version: 1.0
References: <CAFhKne8YNpGZbXk-KTN1mA9WBW1=NSVBo7RU0rYX9pbVgfj_Sg@mail.gmail.com>
	<0AB62846-5A8B-4487-A4F9-1322B2B6E19B@oracle.com>
In-Reply-To: <0AB62846-5A8B-4487-A4F9-1322B2B6E19B@oracle.com>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Wed, 14 Nov 2018 17:07:43 -0800
Message-ID: <CAFhKne97iW1S=V5ECqJYDQEPDxNc+RTUnOTR8+1+=2or+VLFHg@mail.gmail.com>
To: William Kucharski <william.kucharski@oracle.com>
Content-Type: multipart/alternative; boundary="0000000000004bf0fd057aa9ae03"
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

--0000000000004bf0fd057aa9ae03
Content-Type: text/plain; charset="UTF-8"

I decided to leave that out of today's talk (in this timeslot; it was
briefly discussed in Christoph & Mike's hugepage slot during the
performance miniconf).

I should have patches soon to implement that -- the problem is not on the
XArray side, but on the page cache side. Unless there's a bug, of course,
and DAX is the canary in the coal-mine here.

On Wed., Nov. 14, 2018, 15:46 William Kucharski <
william.kucharski@oracle.com wrote:

>
>
> > On Nov 13, 2018, at 11:02 AM, Matthew Wilcox <willy6545@gmail.com>
> wrote:
> >
> > Now that the XArray is in, it's time to make use of it. I've got a git
> tree which converts every current user of the radix tree to the XArray as
> well as converting some users of the IDA to the XArray.
> >
> > The XArray may also be a great replacement for a list_head in your data
> structure.
> >
> > I can also talk about currently inappropriate uses for the XArray and
> what I might do in future to make the XArray useful for more users.
>
> I hope you'll also cover multi-order usage, e.g. for huge page size
> support in the page cache.
>
> Thanks!
>     -- Bill

--0000000000004bf0fd057aa9ae03
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I decided to leave that out of today&#39;s talk (in this =
timeslot; it was briefly discussed in Christoph &amp; Mike&#39;s hugepage s=
lot during the performance miniconf).<div dir=3D"auto"><br></div><div dir=
=3D"auto">I should have patches soon to implement that -- the problem is no=
t on the XArray side, but on the page cache side. Unless there&#39;s a bug,=
 of course, and DAX is the canary in the coal-mine here.</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr">On Wed., Nov. 14, 2018, 15:46 Will=
iam Kucharski &lt;<a href=3D"mailto:william.kucharski@oracle.com">william.k=
ucharski@oracle.com</a> wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
&gt; On Nov 13, 2018, at 11:02 AM, Matthew Wilcox &lt;<a href=3D"mailto:wil=
ly6545@gmail.com" target=3D"_blank" rel=3D"noreferrer">willy6545@gmail.com<=
/a>&gt; wrote:<br>
&gt; <br>
&gt; Now that the XArray is in, it&#39;s time to make use of it. I&#39;ve g=
ot a git tree which converts every current user of the radix tree to the XA=
rray as well as converting some users of the IDA to the XArray.<br>
&gt; <br>
&gt; The XArray may also be a great replacement for a list_head in your dat=
a structure.<br>
&gt; <br>
&gt; I can also talk about currently inappropriate uses for the XArray and =
what I might do in future to make the XArray useful for more users.<br>
<br>
I hope you&#39;ll also cover multi-order usage, e.g. for huge page size sup=
port in the page cache.<br>
<br>
Thanks!<br>
=C2=A0 =C2=A0 -- Bill</blockquote></div>

--0000000000004bf0fd057aa9ae03--
