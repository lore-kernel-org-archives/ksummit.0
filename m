Return-Path: <willy6545@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0422B898
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 06:24:01 +0000 (UTC)
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CE5ECFC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 06:23:59 +0000 (UTC)
Received: by mail-ua0-f169.google.com with SMTP id 74so28180475uau.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 11 Aug 2016 23:23:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160812090706-mutt-send-email-mst@kernel.org>
References: <18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
	<20160811154429.GB4134@mwanda>
	<CAFhKne_cK9edpgufMTaRJ7zdpJaiNoJqOzPsZ2wBaAhCjMHm4Q@mail.gmail.com>
	<20160812040155.kvw5322jqshtmljb@x>
	<CAFhKne9+B9q-dKMYcC9ycKz20T2fRvNzW9wAnZ8_B0d4+89CVQ@mail.gmail.com>
	<20160812052919.GB2289@p183.telecom.by>
	<20160812083512-mutt-send-email-mst@kernel.org>
	<alpine.DEB.2.10.1608120802420.3364@hadrien>
	<20160812090706-mutt-send-email-mst@kernel.org>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Fri, 12 Aug 2016 02:23:57 -0400
Message-ID: <CAFhKne_VKTODCD42V0RB2BYPTRa_j88HruTqyHXOkmQXbFcrHw@mail.gmail.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
Content-Type: multipart/alternative; boundary=001a114dc9e482072d0539d9edcd
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

--001a114dc9e482072d0539d9edcd
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 12, 2016 at 2:09 AM, Michael S. Tsirkin <mst@redhat.com> wrote:

> I guess
> typedef void * errno_t;
> is one way, maybe marking it noderef for good measure.
>
> This means the values are 64 bit unfortunately, which is often
> overkill.
>

s/64-bit/native word size/

Does anyone know of an ABI where that's *inefficient*?!  Or at least, less
efficient than returning a 32-bit int?  Pretty much every ABI I ever saw
says something along the lines of 'register FOO contains the return value
if the type is small enough, otherwise for returning aggregates, register
FOO contains ...'

I can't believe anyone would deliberately design an ABI where calling
void *foo(void) is less efficient than calling int bar(void);

(and if you have some weird DSP or the CDC6600 in mind where Linux won't
run anyway, then comp.arch.necrophilia is --> that way)

--001a114dc9e482072d0539d9edcd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Fri, Aug 12, 2016 at 2:09 AM, Michael S. Tsirkin <span =
dir=3D"ltr">&lt;<a href=3D"mailto:mst@redhat.com" target=3D"_blank">mst@red=
hat.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"g=
mail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=
=3D"h5"><span style=3D"color:rgb(34,34,34)">I guess</span><br></div></div>
typedef void * errno_t;<br>
is one way, maybe marking it noderef for good measure.<br>
<br>
This means the values are 64 bit unfortunately, which is often<br>
overkill.<br></blockquote><div><br></div><div>s/64-bit/native word size/</d=
iv><div><br></div><div>Does anyone know of an ABI where that&#39;s *ineffic=
ient*?!=C2=A0 Or at least, less efficient than returning a 32-bit int?=C2=
=A0 Pretty much every ABI I ever saw says something along the lines of &#39=
;register FOO contains the return value if the type is small enough, otherw=
ise for returning aggregates, register FOO contains ...&#39;</div><div><br>=
</div><div>I can&#39;t believe anyone would deliberately design an ABI wher=
e calling</div><div>void *foo(void) is less efficient than calling int bar(=
void);</div><div><br></div><div>(and if you have some weird DSP or the CDC6=
600 in mind where Linux won&#39;t run anyway, then comp.arch.necrophilia is=
 --&gt; that way)</div></div></div></div>

--001a114dc9e482072d0539d9edcd--
