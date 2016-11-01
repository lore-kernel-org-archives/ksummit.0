Return-Path: <glikely@secretlab.ca>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4680B721
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 Nov 2016 17:56:37 +0000 (UTC)
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6AA7020D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 Nov 2016 17:56:36 +0000 (UTC)
Received: by mail-lf0-f53.google.com with SMTP id t196so45894816lff.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 01 Nov 2016 10:56:36 -0700 (PDT)
MIME-Version: 1.0
Sender: glikely@secretlab.ca
In-Reply-To: <CAB=NE6VBCC6SEzXTJi=HRSDbsCVXcw-1gwjXdgZzw+UGDn9j0A@mail.gmail.com>
References: <CAB=NE6Wo-mWdJF8k9yGcsORatpNtiiug+jXdGP60xhd0F+jydg@mail.gmail.com>
	<CAB=NE6VBCC6SEzXTJi=HRSDbsCVXcw-1gwjXdgZzw+UGDn9j0A@mail.gmail.com>
From: Grant Likely <grant.likely@secretlab.ca>
Date: Tue, 1 Nov 2016 11:56:33 -0600
Message-ID: <CACxGe6smZrw0STpHjzhSjybgW6bLrMKfyETO+-vuhHRT0yzWRQ@mail.gmail.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Content-Type: multipart/alternative; boundary=001a113ca37e8c17040540410bdc
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Addressing Complex Dependencies - Tuesday
 9:30am - Coronado/Devargas
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a113ca37e8c17040540410bdc
Content-Type: text/plain; charset=UTF-8

For those who want to brainstorm how to teach driver core about probe order
dependencies, we'll be meeting at 2:00 in "Milagro"

This will be a working session to try and come up with a design. If we make
any progress, we can do a readout later in the week for a larger audience
here at Plumbers.

Cheers,
g.

On Monday, 31 October 2016, Luis R. Rodriguez <mcgrof@kernel.org> wrote:

> Update:
>
> We've reduced the topics that will be covered and time that will be
> required as follows:
>
> The shared topics with the Audio workshop will take place first at
> 9:30am-10:30am at Sweeney CDE:
>
>   * Device hierarchy (just not a tree but a graph)
>   * Handling cycles on the graph proposals
>
> Then we move to Coronado room 10:30am-12:30pm for:
>
>   * Functional dependencies (now merged on Greg's tree)
>   * Resource tracking / allocation framework
>   * Media controller feature graph
>   * Linker tables
>   * Async probe
>
>   Luis
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org <javascript:;>
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--001a113ca37e8c17040540410bdc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

For those who want to brainstorm how to teach driver core about probe order=
 dependencies, we&#39;ll be meeting at 2:00 in &quot;Milagro&quot;<div><br>=
</div><div>This will be a working session to try and come up with a design.=
 If we make any progress, we can do a readout later in the week for a large=
r audience here=C2=A0at Plumbers.</div><div><div><br></div><div>Cheers,</di=
v><div>g.<br><br>On Monday, 31 October 2016, Luis R. Rodriguez &lt;<a href=
=3D"mailto:mcgrof@kernel.org">mcgrof@kernel.org</a>&gt; wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">Update:<br>
<br>
We&#39;ve reduced the topics that will be covered and time that will be<br>
required as follows:<br>
<br>
The shared topics with the Audio workshop will take place first at<br>
9:30am-10:30am at Sweeney CDE:<br>
<br>
=C2=A0 * Device hierarchy (just not a tree but a graph)<br>
=C2=A0 * Handling cycles on the graph proposals<br>
<br>
Then we move to Coronado room 10:30am-12:30pm for:<br>
<br>
=C2=A0 * Functional dependencies (now merged on Greg&#39;s tree)<br>
=C2=A0 * Resource tracking / allocation framework<br>
=C2=A0 * Media controller feature graph<br>
=C2=A0 * Linker tables<br>
=C2=A0 * Async probe<br>
<br>
=C2=A0 Luis<br>
______________________________<wbr>_________________<br>
Ksummit-discuss mailing list<br>
<a href=3D"javascript:;" onclick=3D"_e(event, &#39;cvml&#39;, &#39;Ksummit-=
discuss@lists.linuxfoundation.org&#39;)">Ksummit-discuss@lists.linuxfoundat=
ion.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discu=
ss" target=3D"_blank">https://lists.linuxfoundation.<wbr>org/mailman/listin=
fo/ksummit-<wbr>discuss</a><br>
</blockquote></div></div>

--001a113ca37e8c17040540410bdc--
