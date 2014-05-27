Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 592D2AB3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 May 2014 22:40:27 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 645C0201E1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 May 2014 22:40:25 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 28 May 2014 00:57:30 +0200
Message-ID: <4700397.FLxRVChBLf@vostro.rjw.lan>
In-Reply-To: <alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tuesday, May 27, 2014 07:27:06 PM Luk=C3=A1=C5=A1 Czerner wrote:
> On Sat, 24 May 2014, Wolfram Sang wrote:

[cut]

> >=20
> > Paid reviewers/maintainers (selected people, no hiring offers). The=

> > number of developers increases faster than the number of quality
> > keepers. So, the latter should be given the chance to focus on it, =
if
> > they want to.
>=20
> That does not make much sense to me. In order to review the code you
> need to understand it and if you already understand the code, you
> can write it as well. I do not think that having dedicated reviewers
> is realistic in the long run.

That's correct and dedicated reviewers who don't really write code will=

become less and less reliable over time.  So they will have to be peopl=
e
who actively work on the code *and* review patch submissions from other=

developers.

> However encouraging reviewers by treating reviewed-by tag with equal
> "respect" as signed-off-by seems like the better way.

I would even argue that it should be treated more seriously than sign-o=
ffs.
After all, there are more patches applied (and all of them are signed-o=
ff
by at least one person) than there are commits with the Reviewed-by tag=
.

Rafael
