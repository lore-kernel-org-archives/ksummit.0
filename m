Return-Path: <trondmy@primarydata.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2898789E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  9 Jul 2016 16:05:15 +0000 (UTC)
Received: from us-smtp-delivery-194.mimecast.com
	(us-smtp-delivery-194.mimecast.com [63.128.21.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3AD621E7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  9 Jul 2016 16:05:14 +0000 (UTC)
From: Trond Myklebust <trondmy@primarydata.com>
To: Bottomley James <James.Bottomley@HansenPartnership.com>
Date: Sat, 9 Jul 2016 15:49:39 +0000
Message-ID: <0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net> <20160709001046.GH28589@dtor-ws>
	<91774112.AKkGksYjl6@vostro.rjw.lan> <20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
In-Reply-To: <1468058721.2557.9.camel@HansenPartnership.com>
Content-Language: en-US
Content-ID: <2652BAF645D32F4486172EEE2576CBCF@namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable
Cc: "ksummit-discuss@lists.linux-foundation.org"
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


> On Jul 9, 2016, at 06:05, James Bottomley <James.Bottomley@HansenPartners=
hip.com> wrote:
>=20
> On Fri, 2016-07-08 at 17:43 -0700, Dmitry Torokhov wrote:
>> On Sat, Jul 09, 2016 at 02:37:40AM +0200, Rafael J. Wysocki wrote:
>>> I tend to think that all known bugs should be fixed, at least=20
>>> because once they have been fixed, no one needs to remember about=20
>>> them any more. :-)
>>>=20
>>> Moreover, minor fixes don't really introduce regressions that often
>>=20
>> Famous last words :)
>=20
> Actually, beyond the humour, the idea that small fixes don't introduce
> regressions must be our most annoying anti-pattern.  The reality is
> that a lot of so called fixes do introduce bugs.  The way this happens
> is that a lot of these "obvious" fixes go through without any deep
> review (because they're obvious, right?) and the bugs noisily turn up
> slightly later.  The way this works is usually that some code
> rearrangement is sold as a "fix" and later turns out not to be
> equivalent to the prior code ... sometimes in incredibly subtle ways. I
> think we should all be paying much more than lip service to the old
> adage "If it ain't broke don't fix it=94.

The main problem with the stable kernel model right now is that we have no =
set of regression tests to apply. Unless someone goes in and actually tests=
 each and every stable kernel affected by that =93Cc: stable=94 line, then =
regressions will eventually happen.

So do we want to have another round of =93how do we regression test the ker=
nel=94 talks?

Cheers
  Trond
