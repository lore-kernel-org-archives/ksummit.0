Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7C19798C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Jul 2016 19:59:52 +0000 (UTC)
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 55E55ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Jul 2016 19:59:51 +0000 (UTC)
Received: by mail-it0-f67.google.com with SMTP id h190so3518329ith.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Jul 2016 12:59:51 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <578635F6.9040601@linaro.org>
References: <91774112.AKkGksYjl6@vostro.rjw.lan>
	<20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org>
	<20160713090739.GA18037@kroah.com> <578635F6.9040601@linaro.org>
From: Olof Johansson <olof@lixom.net>
Date: Wed, 13 Jul 2016 12:59:49 -0700
Message-ID: <CAOesGMhKfk54vOXTnCnJpRQ0cSVqgAm06qPU=wTRZf+qgxK76A@mail.gmail.com>
To: Alex Shi <alex.shi@linaro.org>
Content-Type: multipart/alternative; boundary=001a114a958c05f4ef053789d402
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a114a958c05f4ef053789d402
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 13, 2016 at 5:37 AM, Alex Shi <alex.shi@linaro.org> wrote:

>
>
> On 07/13/2016 06:07 PM, Greg KH wrote:
>
>> On Wed, Jul 13, 2016 at 01:48:15PM +0900, Alex Shi wrote:
>>
>>> I am thinking if it's possible to share an basic tree which include some
>>> widely wanted backporting features. That could share the testing and
>>> review,
>>> then will reduce bugs much more.
>>>
>> Like LTSI already does today?  :)
>>
>
> It looks we share some basic ideas on backporting part. But industry need
> much more backporting features. and new features which out of upstream
> aren't started from here, since it's a upstream quality without more eyes
> in community.


If you want more eyes AND more backporting, how about you move ahead to the
newer version instead? In the end, if you'll backport most of the code you
end up with close to the same code base.

Doing security and minimal security fixes on -stable is a very different
endeavor than creating downstream trees full of feature backports.

(We only care about a few features, you might say -- but once you join up
with others, who care about a few but different features, you'll eventually
end up approximating the kernel from which you're backporting all these
features).


-Olof

--001a114a958c05f4ef053789d402
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Jul 13, 2016 at 5:37 AM, Alex Shi <span dir=3D"ltr">&lt;<a href=
=3D"mailto:alex.shi@linaro.org" target=3D"_blank">alex.shi@linaro.org</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""><br>
<br>
On 07/13/2016 06:07 PM, Greg KH wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Wed, Jul 13, 2016 at 01:48:15PM +0900, Alex Shi wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I am thinking if it&#39;s possible to share an basic tree which include som=
e<br>
widely wanted backporting features. That could share the testing and review=
,<br>
then will reduce bugs much more.<br>
</blockquote>
Like LTSI already does today?=C2=A0 :)<br>
</blockquote>
<br></span>
It looks we share some basic ideas on backporting part. But industry need m=
uch more backporting features. and new features which out of upstream aren&=
#39;t started from here, since it&#39;s a upstream quality without more eye=
s in community.</blockquote><div><br></div><div></div></div></div><div clas=
s=3D"gmail_extra">If you want more eyes AND more backporting, how about you=
 move ahead to the newer version instead? In the end, if you&#39;ll backpor=
t most of the code you end up with close to the same code base.</div><div c=
lass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Doing security an=
d minimal security fixes on -stable is a very different endeavor than creat=
ing downstream trees full of feature backports.</div><div class=3D"gmail_ex=
tra"><br></div><div class=3D"gmail_extra">(We only care about a few feature=
s, you might say -- but once you join up with others, who care about a few =
but different features, you&#39;ll eventually end up approximating the kern=
el from which you&#39;re backporting all these features).</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">-Olof</div></div>

--001a114a958c05f4ef053789d402--
