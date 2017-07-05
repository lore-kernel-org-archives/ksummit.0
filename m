Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 447D9C07
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 14:50:32 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B22E83D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 14:50:31 +0000 (UTC)
Message-ID: <1499266228.3668.10.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Steven Rostedt <rostedt@goodmis.org>, Mark Brown <broonie@kernel.org>
Date: Wed, 05 Jul 2017 07:50:28 -0700
In-Reply-To: <20170705103658.226099c6@gandalf.local.home>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<20170705143341.oees22k2snhtmkxo@sirena.org.uk>
	<20170705103658.226099c6@gandalf.local.home>
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

On Wed, 2017-07-05 at 10:36 -0400, Steven Rostedt wrote:
> On Wed, 5 Jul 2017 15:33:41 +0100
> Mark Brown <broonie@kernel.org> wrote:
> 
> > 
> > On Wed, Jul 05, 2017 at 04:06:07PM +0200, Greg KH wrote:
> > 
> > > 
> > > I don't mean to poo-poo the idea, but please realize that around
> > > 75% of the kernel is hardware/arch support, so that means that
> > > 75% of the changes/fixes deal with hardware things (yes, change
> > > is in direct correlation to size of the codebase in the tree,
> > > strange but true).  
> > 
> > Then add in all the fixes for concurrency/locking issues and so on
> > that're hard to reliably reproduce as well...
> 
> All tests should be run with lockdep enabled ;-)  Which a surprising
> few developers appear to do :-p

Lockdep checks the locking hierarchies and makes assumptions about them
which it then validates ... it doesn't tell you if the data you think
you're protecting was accessed outside the lock, which is the usual
source of concurrency problems.  In other words lockdep is useful but
it's not a panacea.

James
