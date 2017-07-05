Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 52C33BD4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 15:32:31 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CF24C171
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 15:32:30 +0000 (UTC)
Message-ID: <1499268748.3668.20.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Steven Rostedt <rostedt@goodmis.org>
Date: Wed, 05 Jul 2017 08:32:28 -0700
In-Reply-To: <20170705112047.23ee09f6@gandalf.local.home>
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
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On Wed, 2017-07-05 at 11:20 -0400, Steven Rostedt wrote:
> On Wed, 05 Jul 2017 08:09:49 -0700
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> 
>  
> > 
> > > 
> > > > 
> > > > you're protecting was accessed outside the lock, which is the
> > > > usual source of concurrency problems.  In other words lockdep
> > > > is useful but it's not a panacea.  
> > > 
> > > Still not an excuse to not have lockdep enabled during tests.  
> > 
> > OK, what makes you think lockdep isn't enabled?  Since Kconfig is
> > so complex, I usually use a distro config ... they have it enabled
> > (or at least openSUSE does), so it's enabled for everything I do.
> 
> openSuSE has it enabled? I hope not for its production config, as
> lockdep has a huge performance penalty.

Then, surely, it's the last thing we want when tracking down race
conditgions since it will alter timings dramatically.

> I'm thinking you don't have it enabled. What config are you looking
> at? The actual config that does the testing of locks is
> CONFIG_PROVE_LOCKING, which selects LOCKDEP to be compiled in.

This is what it has:

jejb@jarvis:~/git/linux-build> grep LOCKDEP /boot/config-4.4.73-18.17-default 
CONFIG_LOCKDEP_SUPPORT=y

James
