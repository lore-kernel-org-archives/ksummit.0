Return-Path: <willy6545@gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFhKne_W-EbjUd_Cm4kyBHrVK6K9r8Ss3gY0ogO1nztbQZYBEg@mail.gmail.com>
References: <20170623123936.42dab05f@lwn.net>
	<20170624074641.4820fecd@vento.lan>
	<1779146.rtcHP5MkoH@aspire.rjw.lan> <20170624104142.70677fcb@vento.lan>
	<CAFhKne8ZttmqWYJToCw9EDywzeMdp=eiFpoZ+O5xrzmKnpA09Q@mail.gmail.com>
	<CAFhKne_W-EbjUd_Cm4kyBHrVK6K9r8Ss3gY0ogO1nztbQZYBEg@mail.gmail.com>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Sun, 25 Jun 2017 17:32:31 -0400
Message-ID: <CAFhKne_ajkMYKmf-GXC28c_h+O1c0_=SDq-OFEaHHTKs8Qkvpg@mail.gmail.com>
To: Mauro Carvalho Chehab <mchehab@s-opensource.com>
Content-Type: multipart/alternative; boundary="001a113edb94744e610552cf9254"
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Documentation issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a113edb94744e610552cf9254
Content-Type: text/plain; charset="UTF-8"

I find documentation comes in the following bins:

1. User documentation (possible sub-split into "how to use this from kernel
space" and "how to use this from user space")
2. Information for someone who's interested in modifying the code. Possibly
including architectural considerations (eg locking), performance, ideas for
future improvement, etc.
3. Random swearing and abuse

I think the second and third categories of documentation should be kept out
of the kernel books and left as plain comments by the code.

On 24 Jun 2017 9:41 am, "Mauro Carvalho Chehab" <mchehab@s-opensource.com>
wrote:

Yeah, one of the problems with existing documentation is that,
sometimes, the same document describes both userspace-relevant
info and kernelspace APIs.

--001a113edb94744e610552cf9254
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_extra" dir=3D"auto">I find docum=
entation comes in the following bins:</div><div class=3D"gmail_extra" dir=
=3D"auto"><br></div><div class=3D"gmail_extra" dir=3D"auto">1. User documen=
tation (possible sub-split into &quot;how to use this from kernel space&quo=
t; and &quot;how to use this from user space&quot;)</div><div class=3D"gmai=
l_extra" dir=3D"auto">2. Information for someone who&#39;s interested in mo=
difying the code. Possibly including architectural considerations (eg locki=
ng), performance, ideas for future improvement, etc.</div><div class=3D"gma=
il_extra" dir=3D"auto">3. Random swearing and abuse</div><div class=3D"gmai=
l_extra" dir=3D"auto"><br></div><div class=3D"gmail_extra" dir=3D"auto">I t=
hink the second and third categories of documentation should be kept out of=
 the kernel books and left as plain comments by the code.</div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On 24 Jun 2017 9:41 am, &qu=
ot;Mauro Carvalho Chehab&quot; &lt;<a href=3D"mailto:mchehab@s-opensource.c=
om">mchehab@s-opensource.com</a>&gt; wrote:<blockquote class=3D"quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Yeah, o=
ne of the problems with existing documentation is that,<br>
sometimes, the same document describes both userspace-relevant<br>
info and kernelspace APIs.<br></blockquote></div></div></div></div>

--001a113edb94744e610552cf9254--
