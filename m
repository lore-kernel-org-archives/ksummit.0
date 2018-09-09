Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4FC02CA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Sep 2018 19:19:04 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
	[209.85.210.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E9F3C7A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Sep 2018 19:19:03 +0000 (UTC)
Received: by mail-pf1-f176.google.com with SMTP id h69-v6so9359450pfd.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 09 Sep 2018 12:19:03 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (1.0)
From: Andy Lutomirski <luto@amacapital.net>
In-Reply-To: <20180909185651.GF22251@thunk.org>
Date: Sun, 9 Sep 2018 12:19:00 -0700
Content-Transfer-Encoding: quoted-printable
Message-Id: <57183BEA-214F-46BD-9FA8-D58162D081BC@amacapital.net>
References: <20180908113411.GA3111@kroah.com>
	<1536418829.22308.1.camel@HansenPartnership.com>
	<20180908153235.GB11120@kroah.com>
	<1536422066.22308.3.camel@HansenPartnership.com>
	<20180909125130.GA16474@kroah.com>
	<CA+55aFwHH7cN0GXcV7trRs1zgdak+_e8-TyXEsXu62G5V_248A@mail.gmail.com>
	<1536503930.3192.2.camel@HansenPartnership.com>
	<6ECFDF7E-2674-4096-BFB5-25243D62913E@amacapital.net>
	<20180909172039.GE22251@thunk.org>
	<9E5C84F3-410E-4177-AA96-FA09A8D53BC6@amacapital.net>
	<20180909185651.GF22251@thunk.org>
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



> On Sep 9, 2018, at 11:56 AM, Theodore Y. Ts'o <tytso@mit.edu> wrote:
>=20
>> On Sun, Sep 09, 2018 at 11:17:20AM -0700, Andy Lutomirski wrote:
>>=20
>> What I want is the opposite of an NDA. I want a gentlemen=E2=80=99s
>> agreement plus an explicit statement that the relevant people *may*
>> talk about the issue among themselves despite any NDAs that might
>> already exist. And that they may release patches when the embargo is
>> up. And that the embargo has an end date, and that the developers
>> may decline an extension.
>=20
> So what you're talking about is some kind of "Memo of Understanding"
> that has no talk about "if this leaks it will Intel will suffer
> millons and billons and zillons of dollars and Intel well sue you
> until your assets are a smoking crater in the ground"?

Yes

>=20
> If there are no consequences to violating the Gentleman's agreement
> (other than not being included the next time *when* another CPU
> vulnerability comes up), then nothing really needs to be signed, since
> it has no legal impact.

Here I disagree. The consequence to *Intel* for signing needs to be clear. I=
f I=E2=80=99m included, and Intel thinks I leaked it or their attorneys get o=
verzealous and complain that I talked to someone at SUSE or whatever or that=
 I *gasp* published a patch on the day the embargo ended and they sue *me* f=
or zillions under my preexisting, then I want to point to this agreement and=
 say =E2=80=9Cno, and by suing me you are in breach of this contract=E2=80=9D=
.

>=20
> I'd certainly support such a thing, but in my view it's really no
> different from Linus's #2:
>=20
>   2. Force industry to adopt new norms that actually work well with open
>      source.
> If the MOU with no teeth is enough to save the lawyer's face, that
> would be great.
>=20

That too.=20=
