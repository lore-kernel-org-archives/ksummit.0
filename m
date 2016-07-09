Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6845326C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  9 Jul 2016 22:42:01 +0000 (UTC)
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DD83A11A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  9 Jul 2016 22:42:00 +0000 (UTC)
Received: by mail-oi0-f42.google.com with SMTP id u201so103821849oie.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 09 Jul 2016 15:42:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net> <20160709001046.GH28589@dtor-ws>
	<91774112.AKkGksYjl6@vostro.rjw.lan> <20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Sat, 9 Jul 2016 15:41:59 -0700
Message-ID: <CAPcyv4jRtTuzDGLEsgGvqX5yhn20zRe=iTm9Xej8R9ExgBKW2g@mail.gmail.com>
To: Trond Myklebust <trondmy@primarydata.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Bottomley James <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linux-foundation.org"
	<ksummit-discuss@lists.linux-foundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jul 9, 2016 at 8:49 AM, Trond Myklebust <trondmy@primarydata.com> w=
rote:
>
>> On Jul 9, 2016, at 06:05, James Bottomley <James.Bottomley@HansenPartner=
ship.com> wrote:
>>
>> On Fri, 2016-07-08 at 17:43 -0700, Dmitry Torokhov wrote:
>>> On Sat, Jul 09, 2016 at 02:37:40AM +0200, Rafael J. Wysocki wrote:
>>>> I tend to think that all known bugs should be fixed, at least
>>>> because once they have been fixed, no one needs to remember about
>>>> them any more. :-)
>>>>
>>>> Moreover, minor fixes don't really introduce regressions that often
>>>
>>> Famous last words :)
>>
>> Actually, beyond the humour, the idea that small fixes don't introduce
>> regressions must be our most annoying anti-pattern.  The reality is
>> that a lot of so called fixes do introduce bugs.  The way this happens
>> is that a lot of these "obvious" fixes go through without any deep
>> review (because they're obvious, right?) and the bugs noisily turn up
>> slightly later.  The way this works is usually that some code
>> rearrangement is sold as a "fix" and later turns out not to be
>> equivalent to the prior code ... sometimes in incredibly subtle ways. I
>> think we should all be paying much more than lip service to the old
>> adage "If it ain't broke don't fix it=E2=80=9D.
>
> The main problem with the stable kernel model right now is that we have n=
o set of regression tests to apply. Unless someone goes in and actually tes=
ts each and every stable kernel affected by that =E2=80=9CCc: stable=E2=80=
=9D line, then regressions will eventually happen.
>
> So do we want to have another round of =E2=80=9Chow do we regression test=
 the kernel=E2=80=9D talks?

I'd be interested in this discussion.  tools/testing/nvdimm/ has saved
me from shipping bugs on several occasions and allowed testing of
libnvdimm driver paths without needing the device(s).  However, it's
yet another test environment that takes unique effort to setup vs
something like "make test M=3Ddrivers/nvdimm/".
