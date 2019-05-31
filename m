Return-Path: <willy6545@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 04DE61179
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 May 2019 02:51:51 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1FAE96C5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 May 2019 02:51:49 +0000 (UTC)
Received: by mail-ot1-f50.google.com with SMTP id l17so7763206otq.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 May 2019 19:51:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190530060552.GA30920@mit.edu>
In-Reply-To: <20190530060552.GA30920@mit.edu>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Thu, 30 May 2019 22:51:36 -0400
Message-ID: <CAFhKne9xf-_QbVOkF_qhOBwDX=mn+6BxLBeSTcbxpYUNZERkmQ@mail.gmail.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Content-Type: multipart/alternative; boundary="000000000000833d1f058a261897"
Cc: Uladzislau Rezki <urezki@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Reworking of KVA allocator in
 Linux kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--000000000000833d1f058a261897
Content-Type: text/plain; charset="UTF-8"

Vlad, I was under the impression this work was complete. Are there any
remaining issues to discuss?

On Thu., May 30, 2019, 02:15 Theodore Ts'o, <tytso@mit.edu> wrote:

> From: Uladzislau Rezki <urezki@gmail.com>
>
> [ Note: The following abstract was submitted via the Linsux Plumbers
>   Conference website.  Per the instructions that were posted for the
>   Maintainer's / Kernel Summit Call for Proposals[1], the proposal
>   should also be posted on the ksummit-discuss list, so that people
>   can comment on the proposal, and perhaps start a discussion before
>   the summit.
>
>   [1] https://lwn.net/Articles/788378/
>
>   Please note that topic proposals for both the Kernel Summit and the
>   Maintainer's Summit are still welcome, and the deadline has been
>   extended to June 3rd. -- Ted ]
>
> Hello.
>
> I would like to give a talk about KVA allocator in the kernel and
> about improvements i have done.
>
> See below the presentation:
>
>
> ftp://vps418301.ovh.net/incoming/Reworking_of_KVA_allocator_in_Linux_kernel.pdf
>
> Thank you in advance!
>
> --
> Vlad Rezki
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--000000000000833d1f058a261897
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Vlad, I was under the impression this work was compl=
ete. Are there any remaining issues to discuss?<br><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu., May 30, 2019, 02:15 T=
heodore Ts&#39;o, &lt;<a href=3D"mailto:tytso@mit.edu">tytso@mit.edu</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">From: Uladzislau Rezki &lt=
;<a href=3D"mailto:urezki@gmail.com" target=3D"_blank" rel=3D"noreferrer">u=
rezki@gmail.com</a>&gt;<br>
<br>
[ Note: The following abstract was submitted via the Linsux Plumbers<br>
=C2=A0 Conference website.=C2=A0 Per the instructions that were posted for =
the<br>
=C2=A0 Maintainer&#39;s / Kernel Summit Call for Proposals[1], the proposal=
<br>
=C2=A0 should also be posted on the ksummit-discuss list, so that people<br=
>
=C2=A0 can comment on the proposal, and perhaps start a discussion before<b=
r>
=C2=A0 the summit.<br>
<br>
=C2=A0 [1] <a href=3D"https://lwn.net/Articles/788378/" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">https://lwn.net/Articles/788378/</a><br>
<br>
=C2=A0 Please note that topic proposals for both the Kernel Summit and the<=
br>
=C2=A0 Maintainer&#39;s Summit are still welcome, and the deadline has been=
<br>
=C2=A0 extended to June 3rd. -- Ted ]<br>
<br>
Hello.<br>
<br>
I would like to give a talk about KVA allocator in the kernel and<br>
about improvements i have done.<br>
<br>
See below the presentation:<br>
<br>
<a href=3D"ftp://vps418301.ovh.net/incoming/Reworking_of_KVA_allocator_in_L=
inux_kernel.pdf" rel=3D"noreferrer noreferrer" target=3D"_blank">ftp://vps4=
18301.ovh.net/incoming/Reworking_of_KVA_allocator_in_Linux_kernel.pdf</a><b=
r>
<br>
Thank you in advance!<br>
<br>
--<br>
Vlad Rezki<br>
_______________________________________________<br>
Ksummit-discuss mailing list<br>
<a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org" target=3D"_bla=
nk" rel=3D"noreferrer">Ksummit-discuss@lists.linuxfoundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discu=
ss" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.linuxfoun=
dation.org/mailman/listinfo/ksummit-discuss</a><br>
</blockquote></div></div></div>

--000000000000833d1f058a261897--
