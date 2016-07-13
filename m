Return-Path: <alex.shi@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2CCE771
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Jul 2016 22:24:03 +0000 (UTC)
Received: from mail-pf0-f180.google.com (mail-pf0-f180.google.com
	[209.85.192.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 20D9B193
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Jul 2016 22:24:02 +0000 (UTC)
Received: by mail-pf0-f180.google.com with SMTP id i123so22433077pfg.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Jul 2016 15:24:02 -0700 (PDT)
To: Olof Johansson <olof@lixom.net>
References: <91774112.AKkGksYjl6@vostro.rjw.lan>
	<20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<578635F6.9040601@linaro.org>
	<CAOesGMhKfk54vOXTnCnJpRQ0cSVqgAm06qPU=wTRZf+qgxK76A@mail.gmail.com>
From: Alex Shi <alex.shi@linaro.org>
Message-ID: <5786BF7D.3050108@linaro.org>
Date: Thu, 14 Jul 2016 07:23:57 +0900
MIME-Version: 1.0
In-Reply-To: <CAOesGMhKfk54vOXTnCnJpRQ0cSVqgAm06qPU=wTRZf+qgxK76A@mail.gmail.com>
Content-Type: multipart/alternative;
	boundary="------------030406010102070007000309"
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

This is a multi-part message in MIME format.
--------------030406010102070007000309
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On 07/14/2016 04:59 AM, Olof Johansson wrote:
>
>
> On Wed, Jul 13, 2016 at 5:37 AM, Alex Shi <alex.shi@linaro.org 
> <mailto:alex.shi@linaro.org>> wrote:
>
>
>
>     On 07/13/2016 06:07 PM, Greg KH wrote:
>
>         On Wed, Jul 13, 2016 at 01:48:15PM +0900, Alex Shi wrote:
>
>             I am thinking if it's possible to share an basic tree
>             which include some
>             widely wanted backporting features. That could share the
>             testing and review,
>             then will reduce bugs much more.
>
>         Like LTSI already does today?  :)
>
>
>     It looks we share some basic ideas on backporting part. But
>     industry need much more backporting features. and new features
>     which out of upstream aren't started from here, since it's a
>     upstream quality without more eyes in community.
>
>
> If you want more eyes AND more backporting, how about you move ahead 
> to the newer version instead? In the end, if you'll backport most of 
> the code you end up with close to the same code base.
>
> Doing security and minimal security fixes on -stable is a very 
> different endeavor than creating downstream trees full of feature 
> backports.
>
> (We only care about a few features, you might say -- but once you join 
> up with others, who care about a few but different features, you'll 
> eventually end up approximating the kernel from which you're 
> backporting all these features).
>

It highly depends the new feature backporting criteria, like the current 
LTSI, there are no much feature backportings as its claimed.

Alex

--------------030406010102070007000309
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <br>
    <br>
    <div class="moz-cite-prefix">On 07/14/2016 04:59 AM, Olof Johansson
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAOesGMhKfk54vOXTnCnJpRQ0cSVqgAm06qPU=wTRZf+qgxK76A@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On Wed, Jul 13, 2016 at 5:37 AM, Alex
            Shi <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:alex.shi@linaro.org" target="_blank">alex.shi@linaro.org</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex"><span
                class=""><br>
                <br>
                On 07/13/2016 06:07 PM, Greg KH wrote:<br>
                <blockquote class="gmail_quote" style="margin:0 0 0
                  .8ex;border-left:1px #ccc solid;padding-left:1ex">
                  On Wed, Jul 13, 2016 at 01:48:15PM +0900, Alex Shi
                  wrote:<br>
                  <blockquote class="gmail_quote" style="margin:0 0 0
                    .8ex;border-left:1px #ccc solid;padding-left:1ex">
                    I am thinking if it's possible to share an basic
                    tree which include some<br>
                    widely wanted backporting features. That could share
                    the testing and review,<br>
                    then will reduce bugs much more.<br>
                  </blockquote>
                  Like LTSI already does today?  :)<br>
                </blockquote>
                <br>
              </span>
              It looks we share some basic ideas on backporting part.
              But industry need much more backporting features. and new
              features which out of upstream aren't started from here,
              since it's a upstream quality without more eyes in
              community.</blockquote>
            <div><br>
            </div>
          </div>
        </div>
        <div class="gmail_extra">If you want more eyes AND more
          backporting, how about you move ahead to the newer version
          instead? In the end, if you'll backport most of the code you
          end up with close to the same code base.</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Doing security and minimal security
          fixes on -stable is a very different endeavor than creating
          downstream trees full of feature backports.</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">(We only care about a few features, you
          might say -- but once you join up with others, who care about
          a few but different features, you'll eventually end up
          approximating the kernel from which you're backporting all
          these features).</div>
        <div class="gmail_extra"><br>
        </div>
      </div>
    </blockquote>
    <br>
    It highly depends the new feature backporting criteria, like the
    current LTSI, there are no much feature backportings as its claimed.<br>
    <br>
    Alex<br>
  </body>
</html>

--------------030406010102070007000309--
