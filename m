Return-Path: <SRS0=CRNu=XI=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,HTML_MESSAGE,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A66E5C49ED7
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Sep 2019 12:56:44 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7DEB4206BB
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Sep 2019 12:56:44 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="vXu3Te5i"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7DEB4206BB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CF4D1FB6;
	Fri, 13 Sep 2019 12:56:43 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0E24DFB4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 12:56:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
	[209.85.167.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8B83C7DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 12:56:41 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id 12so2150208oiq.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 05:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=8w1ysR+wKpbP5Oo9e6xp++MMpq/UiUZZRYfK99iTqSo=;
	b=vXu3Te5ir/RrYRsNP+j+MX0GuoEHjnK86cV7WqhTaN6dNnS0G73XEwMsPZifLcmtY6
	N7NLCIhX3tY3GKfaofeCuaUK01/P7JDNLlqoWM0v+Szc1VynuucjW9OICXFxJJSB6pFn
	Wo9d/37ZMptyxOkZUh+s5GJiDSkzMmSzLtgHWLMWTOwIgLAe+VsBV+q0MlP85+mM4ES9
	ngqh2a4Roh0d+6SocrZA3Fs0QLtJ8bGxPUVwS9tUAXKue+V7Ry114MqXKY4v+7PMZ0TE
	57phprVczaneg8BWw0O4P00fZhLCYAPFSlZ1xrjrnHhxs8ZR0p2D0WrQfesS+EkRXmEH
	6rog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=8w1ysR+wKpbP5Oo9e6xp++MMpq/UiUZZRYfK99iTqSo=;
	b=qkZhu0upPWa1YmX1+PgELoIBSPLC9ykD/jBh4JUgH58xEARSugnjJmn9OJAtB1U9du
	jehT9KuZDOcsMy5FBB+4d56abeZUItCzbBpPZHeU+png3sqHtFlTsV4mQFMekERpLra3
	sTvLQyFNWSgFFQH+NQp8iBFDVwgKF8hO2yUuGO4XWDExM6Ys21dLtY+wEt3ZEY+Lsgat
	RwR+hh5AqkKPzF3AKkV6eXaX0o6iawzgDi/XW/pVBYCn6EYpWaO5sA1OSP6nY2/fyUqH
	kuqMDGb5AcnLjD6oTOhFDcmb5Mwj/GlSknlw+HW/m6Y/pob/LVMSgvsLwD0HARdGyZZO
	SIDw==
X-Gm-Message-State: APjAAAU4zMDsLZoEAZa+N9ncm2TCkctWNZlE2rydxFMgRfXTifLmKEIJ
	h0RP4O3WW96vu2mep2OQ+vLXVAXhhRwmZeKANII=
X-Google-Smtp-Source: APXvYqw/RRoaPKsSxB8nuXKGBm6Gt3hs3WhTN5hWg0lXBnUFAD/wgLlXfkEjQ+EzKqXLvpm8114+NJcxTJtfMOsICQs=
X-Received: by 2002:aca:d485:: with SMTP id l127mr2933827oig.162.1568379400666;
	Fri, 13 Sep 2019 05:56:40 -0700 (PDT)
MIME-Version: 1.0
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<yq1o8zqeqhb.fsf@oracle.com>
	<6fe45562-9493-25cf-afdb-6c0e702a49b4@acm.org>
	<44c08faf43fa77fb271f8dbb579079fb09007716.camel@perches.com>
	<74984dc0-d5e4-f272-34b9-9a78619d5a83@acm.org>
In-Reply-To: <74984dc0-d5e4-f272-34b9-9a78619d5a83@acm.org>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Fri, 13 Sep 2019 08:56:30 -0400
Message-ID: <CAFhKne8Nbk=OnZO_pqPURneVtxcHqbfkH+xJBrAYfCfsntfQ2g@mail.gmail.com>
To: Bart Van Assche <bvanassche@acm.org>
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org, linux-nvdimm@lists.01.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, Dmitry Vyukov <dvyukov@google.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Steve French <stfrench@microsoft.com>, "Tobin C. Harding" <me@tobin.cc>
Subject: Re: [Ksummit-discuss] [PATCH v2 0/3] Maintainer Entry Profiles
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2738966080327376293=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

--===============2738966080327376293==
Content-Type: multipart/alternative; boundary="0000000000000cc42d05926ec9f3"

--0000000000000cc42d05926ec9f3
Content-Type: text/plain; charset="UTF-8"

It's easy enough to move the kernel-doc warnings out from under W=1. I only
out them there to avoid overwhelming us with new warnings. If they're
mostly fixed now, let's make checking them the default.

On Thu., Sep. 12, 2019, 16:01 Bart Van Assche, <bvanassche@acm.org> wrote:

> On 9/12/19 8:34 AM, Joe Perches wrote:
> > On Thu, 2019-09-12 at 14:31 +0100, Bart Van Assche wrote:
> >> On 9/11/19 5:40 PM, Martin K. Petersen wrote:
> >>> * The patch must compile without warnings (make C=1
> CF="-D__CHECK_ENDIAN__")
> >>>   and does not incur any zeroday test robot complaints.
> >>
> >> How about adding W=1 to that make command?
> >
> > That's rather too compiler version dependent and new
> > warnings frequently get introduced by new compiler versions.
>
> I've never observed this myself. If a new compiler warning is added to
> gcc and if it produces warnings that are not useful for kernel code
> usually Linus or someone else is quick to suppress that warning.
>
> Another argument in favor of W=1 is that the formatting of kernel-doc
> headers is checked only if W=1 is passed to make.
>
> Bart.
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--0000000000000cc42d05926ec9f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">It&#39;s easy enough to move the kernel-doc warnings out =
from under W=3D1. I only out them there to avoid overwhelming us with new w=
arnings. If they&#39;re mostly fixed now, let&#39;s make checking them the =
default.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu., Sep. 12, 2019, 16:01 Bart Van Assche, &lt;<a href=3D"mailt=
o:bvanassche@acm.org">bvanassche@acm.org</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">On 9/12/19 8:34 AM, Joe Perches wrote:<br>
&gt; On Thu, 2019-09-12 at 14:31 +0100, Bart Van Assche wrote:<br>
&gt;&gt; On 9/11/19 5:40 PM, Martin K. Petersen wrote:<br>
&gt;&gt;&gt; * The patch must compile without warnings (make C=3D1 CF=3D&qu=
ot;-D__CHECK_ENDIAN__&quot;)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0and does not incur any zeroday test robot complain=
ts.<br>
&gt;&gt;<br>
&gt;&gt; How about adding W=3D1 to that make command?<br>
&gt; <br>
&gt; That&#39;s rather too compiler version dependent and new<br>
&gt; warnings frequently get introduced by new compiler versions.<br>
<br>
I&#39;ve never observed this myself. If a new compiler warning is added to<=
br>
gcc and if it produces warnings that are not useful for kernel code<br>
usually Linus or someone else is quick to suppress that warning.<br>
<br>
Another argument in favor of W=3D1 is that the formatting of kernel-doc<br>
headers is checked only if W=3D1 is passed to make.<br>
<br>
Bart.<br>
<br>
_______________________________________________<br>
Ksummit-discuss mailing list<br>
<a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org" target=3D"_bla=
nk" rel=3D"noreferrer">Ksummit-discuss@lists.linuxfoundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discu=
ss" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.linuxfoun=
dation.org/mailman/listinfo/ksummit-discuss</a><br>
</blockquote></div>

--0000000000000cc42d05926ec9f3--

--===============2738966080327376293==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============2738966080327376293==--
