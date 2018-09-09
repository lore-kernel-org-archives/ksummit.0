Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DD6D7BC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Sep 2018 18:17:24 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
	[209.85.214.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7BEAD102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Sep 2018 18:17:24 +0000 (UTC)
Received: by mail-pl1-f180.google.com with SMTP id u11-v6so8685922plq.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 09 Sep 2018 11:17:24 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (1.0)
From: Andy Lutomirski <luto@amacapital.net>
In-Reply-To: <20180909172039.GE22251@thunk.org>
Date: Sun, 9 Sep 2018 11:17:20 -0700
Content-Transfer-Encoding: quoted-printable
Message-Id: <9E5C84F3-410E-4177-AA96-FA09A8D53BC6@amacapital.net>
References: <alpine.DEB.2.21.1809081037440.1402@nanos.tec.linutronix.de>
	<20180908082141.15d72684@coco.lan>
	<20180908113411.GA3111@kroah.com>
	<1536418829.22308.1.camel@HansenPartnership.com>
	<20180908153235.GB11120@kroah.com>
	<1536422066.22308.3.camel@HansenPartnership.com>
	<20180909125130.GA16474@kroah.com>
	<CA+55aFwHH7cN0GXcV7trRs1zgdak+_e8-TyXEsXu62G5V_248A@mail.gmail.com>
	<1536503930.3192.2.camel@HansenPartnership.com>
	<6ECFDF7E-2674-4096-BFB5-25243D62913E@amacapital.net>
	<20180909172039.GE22251@thunk.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	mchehab+samsung@kernel.org,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
	security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


> On Sep 9, 2018, at 10:20 AM, Theodore Y. Ts'o <tytso@mit.edu> wrote:
>=20
> On Sun, Sep 09, 2018 at 07:51:09AM -0700, Andy Lutomirski wrote:
>>> So it seems we have the two choices:
>>>=20
>>>  1. Conform to industry norms for disclosures and find a way of bringing=

>>>     an NDA framework to Linux Security fix handling=20
>>>  2. Force industry to adopt new norms that actually work well with open
>>>     source.
>>>=20
>>=20
>> Or my proposal of 3: have a policy, get lawyers to agree to it, and
>> make it barely be an NDA.  I don=E2=80=99t know how practical it is, but i=
t
>> could be a nice middle ground.
>=20
> The only middle ground is "gentleman's agreement".  The main problem
> any legal agreement is what are the teeth if someone violates the NDA
> and breaks the embargo.  The reason why it will be very hard for some
> third-party, like the LF, to sign any kind of NDA on behalf of
> independent developers is that it puts the liability risk on the LF.
> And the LF's lawyers aren't going to be comfortable with this.


What I want is the opposite of an NDA. I want a gentlemen=E2=80=99s agreemen=
t plus an explicit statement that the relevant people *may* talk about the i=
ssue among themselves despite any NDAs that might already exist. And that th=
ey may release patches when the embargo is up. And that the embargo has an e=
nd date, and that the developers may decline an extension.

The business people are well aware that even the strongest NDA isn=E2=80=99t=
 worth a damn thing in these scenarios. If Meltdown had leaked in September,=
 then Intel would have had egg all over its face and no amount of lawsuits o=
r injunctions would have helped. In fact, it would have been worse than noth=
ing because now the news would say =E2=80=9CIntel failed to permit vendors t=
o fix it *and* the embargo got blown, and rather than doing something about i=
t, they=E2=80=99re suing people.=E2=80=9D

I personally would have liked such an arrangement for Meltdown.

So maybe a business case could be made to vendors that they should sign the t=
hing.=
