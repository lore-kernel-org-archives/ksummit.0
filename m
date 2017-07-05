Return-Path: <SRS0=19W6=6I=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0B326C7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 15:43:20 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 102A4A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 15:43:18 +0000 (UTC)
Date: Wed, 5 Jul 2017 11:43:16 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20170705114316.424a9e28@gandalf.local.home>
In-Reply-To: <1499268748.3668.20.camel@HansenPartnership.com>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<20170705143341.oees22k2snhtmkxo@sirena.org.uk>
	<20170705103658.226099c6@gandalf.local.home>
	<1499266228.3668.10.camel@HansenPartnership.com>
	<20170705105651.5da9c969@gandalf.local.home>
	<1499267389.3668.16.camel@HansenPartnership.com>
	<20170705112047.23ee09f6@gandalf.local.home>
	<1499268748.3668.20.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Carlos O'Donell <carlos@redhat.com>, linux-api@vger.kernel.org,
	Shuah Khan <shuahkh@osg.samsung.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Thorsten Leemhuis <linux@leemhuis.info>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] & [TECH TOPIC] Improve
 regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 05 Jul 2017 08:32:28 -0700
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:


> > openSuSE has it enabled? I hope not for its production config, as
> > lockdep has a huge performance penalty. =20
>=20
> Then, surely, it's the last thing we want when tracking down race
> conditgions since it will alter timings dramatically.

It's to be run when you want to make sure locking order is at least not
an issue. And it's not about running when tracking down race
conditions, its to be run when developing new code.


>=20
> > I'm thinking you don't have it enabled. What config are you looking
> > at? The actual config that does the testing of locks is
> > CONFIG_PROVE_LOCKING, which selects LOCKDEP to be compiled in. =20
>=20
> This is what it has:
>=20
> jejb@jarvis:~/git/linux-build> grep LOCKDEP /boot/config-4.4.73-18.17-def=
ault=C2=A0
> CONFIG_LOCKDEP_SUPPORT=3Dy

That means your architecture supports it, it's not enabled.

-- Steve
