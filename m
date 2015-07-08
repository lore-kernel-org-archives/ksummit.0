Return-Path: <jic23@jic23.retrosnub.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8A67B982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 07:58:22 +0000 (UTC)
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk [178.18.118.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A2F211BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 07:58:21 +0000 (UTC)
References: <201507080121.41463.PeterHuewe@gmx.de>
	<CA+5PVA4YON79=wrSTfQ8TJrQNOuLShvaVA1_+BDcTxrmVe_hcQ@mail.gmail.com>
	<CAJKOXPfnwUX5fdBg1EDJSGgrNGXb3AmrK8tXokxqHw=XYzhddA@mail.gmail.com>
	<201507080905.00051.PeterHuewe@gmx.de>
In-Reply-To: <201507080905.00051.PeterHuewe@gmx.de>
From: jic23@jic23.retrosnub.co.uk
To: Peter =?utf-8?B?SMO8d2U=?= <PeterHuewe@gmx.de>
Date: Wed, 08 Jul 2015 08:52:53 +0100
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Message-Id: <20150708075253.606BA4306F@saturn.retrosnub.co.uk>
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Peter H=C3=BCwe writes:=20

> Am Mittwoch, 8. Juli 2015, 04:03:04 schrieb Krzysztof Koz=C5=82owski:
>>=20
>> Before doing some work there is always a cause, an answer to "why I am
>> doing this"? Employer may pay for my commits but would he pay for
>> reviewing time? That is his decision and it would be difficult to
>> change policies inside companies.=20
>>=20
>> Other reason for doing open source work may be the fame. Being
>> recognizable, getting better job offers, doing tasks which are
>> sensible and meaningful for someone. Currently probably most of the
>> fame goes to authors and maintainers. For example in the form of `git
>> log --author/committer=3D` or LWN articles about statistics.=20
>>=20
>> How to get more reviews from such people (when employer does not pay
>> for it)? Give them fame! :)
>=20
> Exactly!=20
> This is also what Rafael wrote in the other mail:=20
>=20
>> Most of the time there's a little to no recognition for doing that wor=
k
>> and, quite frankly, writing code is more rewarding than that for the
>> majority of people anyway.
> =20
>=20
> So changing our fame-statistics from commits to reviews and tested by m=
ight=20
> change the situation a bit.
> -> The next LWN stats and coverage should probably focus on the reviewe=
d-by /=20
> tested-by stats.=20
> People love to be on some "top 10" lists - and also they can show somet=
hing=20
> like that to their bosses.

I think we also need to encourage multiple sign offs from one person
on drivers sometimes.   Often you'll get a 'I tested this and also
reviewed it' but as I'm the author / maintainer of the original driver
I'll Ack it.  Perhaps these cases should have all 3 tags in the commit.=20

>=20
> "I've been a kernel reviewer and tester" -- meh, who cares
> "I've been a top 100 kernel reviewer and tester over the last X release=
s" --=20
> give him a raise/the job (esp. if kernel is not the core competency of =
the=20
> company :)

I'm very luck in IIO in that I have a core set of very good reviewers
with (I think) a mix of paid and volunteers.  As a volunteer Maintainer
I couldn't cope with the rate of patches without them!=20

One thing that happens fairly often is that I get a very good initial
review in then the reviewer moves on to other patches.  I suspect this
is because they are focusing on where they can do the most productive
work.  Sometimes I go to the effort of chasing them up for an
ack / reviewed by, but often they get no recognition at all.=20

Note I tend to do an additional review (often v3 or later by the
time I get to them) but these guys have done a lot of the leg work.
One of my reviewers specializes in very detailed reviews slightly after
I have applied the patches, but that's another story :)=20

So how to give these incredibly helpful people more recognition?
Do other maintainers add reviewed-by tags sometimes without the reviewer
specifically giving them?  The docs have always said these should
indicate that the reviewer is happy with the result.  In this case the
reviewer may not have looked at the result, but contributed earlier
in the process.=20

Does anyone else actually get these sorts of reviews?=20

> =20
>=20
> =20
>=20
> Another thing I noticed over the last few years (also in corporate), pe=
ople=20
> get really motivated by memorabilia - "tokens of appreciation".
> E.g. I constantly wear my Google T-Shirt which I received for a contrib=
ution=20
> with such proud and so often that it is almost faded --- but still ever=
ytime I=20
> look at it I have a good feeling.=20
>=20
> --> Maybe LF can organize something?
> "Here is a small token of appreciation (t-shirt, cup)  for spending cou=
ntless=20
> hours on reviewing and testing stuff in the Linux kernel -- keep up the =
good=20
> work"=20
>=20
> =20
>=20
> =20
>=20
>> The only way to address this problem I can see is to recognize reviewe=
rs
>> *much* more than we tend to do and not just "encourage" them, because
>> that's way insufficient.
> Yes again!=20
>=20
> What I definitely would also recommend is to organize some 'get togethe=
rs',
> like a miniconf/minisummit at the next conference near you -- and where =
you=20
> grab a beer _together_ with the reviewers / testers afterwards (and may=
be the=20
> maintainer can pay).=20
> This also helps as forms of appreciation.

I'm particularly bad at this.  Have only ever actually met one of
my regular reviewers (out of 6+).  Note that for some subsystems
the conference attendance is actually pretty limited / random and
chances of a actually encountering many of the reviewers is lowish.=20

Guys who put in a few hours a week are the bread and butter or
reviewing for my area, but that may well be all the time they have
as much as they'd like to travel to conferences!=20

Jonathan
