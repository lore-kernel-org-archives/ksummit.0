Return-Path: <willy6545@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 770CA2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 04:07:13 +0000 (UTC)
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E372B8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 04:07:12 +0000 (UTC)
Received: by mail-ua0-f194.google.com with SMTP id 109so1187463uat.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 11 Aug 2016 21:07:12 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160812040155.kvw5322jqshtmljb@x>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
	<20160811154429.GB4134@mwanda>
	<CAFhKne_cK9edpgufMTaRJ7zdpJaiNoJqOzPsZ2wBaAhCjMHm4Q@mail.gmail.com>
	<20160812040155.kvw5322jqshtmljb@x>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Fri, 12 Aug 2016 00:07:11 -0400
Message-ID: <CAFhKne9+B9q-dKMYcC9ycKz20T2fRvNzW9wAnZ8_B0d4+89CVQ@mail.gmail.com>
To: Josh Triplett <josh@joshtriplett.org>
Content-Type: multipart/alternative; boundary=001a114dd64056cb850539d804f2
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
	kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a114dd64056cb850539d804f2
Content-Type: text/plain; charset=UTF-8

On Aug 11, 2016 9:02 PM, "Josh Triplett" <josh@joshtriplett.org> wrote:
> On Thu, Aug 11, 2016 at 11:51:52PM -0400, Matthew Wilcox wrote:
> > Can we introduce types for this? We have a number of different return
type
> > conventions in the kernel:
> >
> > bool
> > errno_t (-4095 to 0 are valid)
> > count_t (-4095 to INT_MAX)
> > long_count_t (-4095 to LONG_MAX)
> > ulong_count_t (-4095 to -4096)
> > struct foo _err*
> >
> > I think this is good programmer documentation in addition to being
> > potentially useful to smatch.
>
> I'd love to see an explicit type distinct from "int" for "potentially an
> errno".  And if any code uses "potentially an errno *or* a non-errno
> non-zero return value", that should ideally use a distinct type as well.

I think the biggest problem is coming up with good names for the types. And
the churn of introducing them, particularly converting function pointers
and all occurrences.

--001a114dd64056cb850539d804f2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">On Aug 11, 2016 9:02 PM, &quot;Josh Triplett&quot; &lt;<a hr=
ef=3D"mailto:josh@joshtriplett.org">josh@joshtriplett.org</a>&gt; wrote:<br=
>
&gt; On Thu, Aug 11, 2016 at 11:51:52PM -0400, Matthew Wilcox wrote:<br>
&gt; &gt; Can we introduce types for this? We have a number of different re=
turn type<br>
&gt; &gt; conventions in the kernel:<br>
&gt; &gt;<br>
&gt; &gt; bool<br>
&gt; &gt; errno_t (-4095 to 0 are valid)<br>
&gt; &gt; count_t (-4095 to INT_MAX)<br>
&gt; &gt; long_count_t (-4095 to LONG_MAX)<br>
&gt; &gt; ulong_count_t (-4095 to -4096)<br>
&gt; &gt; struct foo _err*<br>
&gt; &gt;<br>
&gt; &gt; I think this is good programmer documentation in addition to bein=
g<br>
&gt; &gt; potentially useful to smatch.<br>
&gt;<br>
&gt; I&#39;d love to see an explicit type distinct from &quot;int&quot; for=
 &quot;potentially an<br>
&gt; errno&quot;.=C2=A0 And if any code uses &quot;potentially an errno *or=
* a non-errno<br>
&gt; non-zero return value&quot;, that should ideally use a distinct type a=
s well.</p>
<p dir=3D"ltr">I think the biggest problem is coming up with good names for=
 the types. And the churn of introducing them, particularly converting func=
tion pointers and all occurrences.<br>
</p>

--001a114dd64056cb850539d804f2--
