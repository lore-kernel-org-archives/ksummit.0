Return-Path: <SRS0=19W6=6I=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 704B07A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 14:56:54 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C4F0C151
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 14:56:53 +0000 (UTC)
Date: Wed, 5 Jul 2017 10:56:51 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20170705105651.5da9c969@gandalf.local.home>
In-Reply-To: <1499266228.3668.10.camel@HansenPartnership.com>
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
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Carlos O'Donell <carlos@redhat.com>, linux-api@vger.kernel.org,
	Shuah Khan <shuahkh@osg.samsung.com>,
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

On Wed, 05 Jul 2017 07:50:28 -0700
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

> On Wed, 2017-07-05 at 10:36 -0400, Steven Rostedt wrote:
> > On Wed, 5 Jul 2017 15:33:41 +0100
> > Mark Brown <broonie@kernel.org> wrote:
> >  =20
> > >=20
> > > On Wed, Jul 05, 2017 at 04:06:07PM +0200, Greg KH wrote:
> > >  =20
> > > >=20
> > > > I don't mean to poo-poo the idea, but please realize that around
> > > > 75% of the kernel is hardware/arch support, so that means that
> > > > 75% of the changes/fixes deal with hardware things (yes, change
> > > > is in direct correlation to size of the codebase in the tree,
> > > > strange but true). =C2=A0 =20
> > >=20
> > > Then add in all the fixes for concurrency/locking issues and so on
> > > that're hard to reliably reproduce as well... =20
> >=20
> > All tests should be run with lockdep enabled ;-)=C2=A0=C2=A0Which a sur=
prising
> > few developers appear to do :-p =20
>=20
> Lockdep checks the locking hierarchies and makes assumptions about them
> which it then validates ... it doesn't tell you if the data you think

We should probably look at adding infrastructure that helps in that.
RCU already has a lot of there to help know if data is being protected
by RCU or not.

Hmm, maybe we could add a __rcu like type that we can associate
protected data with, where a config can associate access to a variable
with a lock being held?

> you're protecting was accessed outside the lock, which is the usual
> source of concurrency problems. =C2=A0In other words lockdep is useful but
> it's not a panacea.

Still not an excuse to not have lockdep enabled during tests.

-- Steve
