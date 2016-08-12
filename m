Return-Path: <willy6545@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D210F71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 03:51:54 +0000 (UTC)
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 54233210
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 03:51:54 +0000 (UTC)
Received: by mail-ua0-f196.google.com with SMTP id d97so1172473uad.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 11 Aug 2016 20:51:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160811154429.GB4134@mwanda>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
	<20160811154429.GB4134@mwanda>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Thu, 11 Aug 2016 23:51:52 -0400
Message-ID: <CAFhKne_cK9edpgufMTaRJ7zdpJaiNoJqOzPsZ2wBaAhCjMHm4Q@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: multipart/alternative; boundary=001a11439cbc978b0b0539d7cdff
Cc: ksummit-discuss@lists.linuxfoundation.org
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

--001a11439cbc978b0b0539d7cdff
Content-Type: text/plain; charset=UTF-8

On Aug 11, 2016 8:44 AM, "Dan Carpenter" <dan.carpenter@oracle.com> wrote:
> I need these manual fixes when not knowing the error code causes
> problems because a function does this:
>         if (ret)
>                 return ret;
> But the caller does:
>         if (ret < 0)
>                 return ret;
> There is a mismatch because Smatch thinks any non-zero is an error but
> the caller knows only negatives are errors.

Can we introduce types for this? We have a number of different return type
conventions in the kernel:

bool
errno_t (-4095 to 0 are valid)
count_t (-4095 to INT_MAX)
long_count_t (-4095 to LONG_MAX)
ulong_count_t (-4095 to -4096)
struct foo _err*

I think this is good programmer documentation in addition to being
potentially useful to smatch.

--001a11439cbc978b0b0539d7cdff
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">On Aug 11, 2016 8:44 AM, &quot;Dan Carpenter&quot; &lt;<a hr=
ef=3D"mailto:dan.carpenter@oracle.com">dan.carpenter@oracle.com</a>&gt; wro=
te:<br>
&gt; I need these manual fixes when not knowing the error code causes<br>
&gt; problems because a function does this:<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ret)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return ret;<br=
>
&gt; But the caller does:<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ret &lt; 0)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return ret;<br=
>
&gt; There is a mismatch because Smatch thinks any non-zero is an error but=
<br>
&gt; the caller knows only negatives are errors.</p>
<p dir=3D"ltr">Can we introduce types for this? We have a number of differe=
nt return type conventions in the kernel:</p>
<p dir=3D"ltr">bool<br>
errno_t (-4095 to 0 are valid)<br>
count_t (-4095 to INT_MAX)<br>
long_count_t (-4095 to LONG_MAX)<br>
ulong_count_t (-4095 to -4096)<br>
struct foo _err*</p>
<p dir=3D"ltr">I think this is good programmer documentation in addition to=
 being potentially useful to smatch.</p>

--001a11439cbc978b0b0539d7cdff--
