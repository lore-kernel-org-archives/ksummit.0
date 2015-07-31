Return-Path: <davej@codemonkey.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 90597475
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 18:55:06 +0000 (UTC)
Received: from arcturus.aphlor.org (arcturus.aphlor.org [188.246.204.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 248FDE2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 18:55:06 +0000 (UTC)
Date: Fri, 31 Jul 2015 14:17:58 -0400
From: Dave Jones <davej@codemonkey.org.uk>
To: Greg KH <greg@kroah.com>
Message-ID: <20150731181757.GA8747@codemonkey.org.uk>
References: <55BAE39F.9060705@oracle.com>
	<CAErSpo52d5DEp_KuVoQXm4DsVakemDboLUysy6_vHL6+-xgRJw@mail.gmail.com>
	<20150731165915.GA4995@roeck-us.net>
	<20150731170825.GA2721@kroah.com>
	<20150731171500.GC4995@roeck-us.net>
	<CAErSpo5ZDAAJVo7Lm6e2rg3sqvrtsTHRaV9nBDy+SDVMjy8MKw@mail.gmail.com>
	<20150731181245.GA5969@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150731181245.GA5969@kroah.com>
Cc: Sasha Levin <sasha.levin@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 31, 2015 at 11:12:45AM -0700, Greg Kroah-Hartman wrote:
 > On Fri, Jul 31, 2015 at 12:51:53PM -0500, Bjorn Helgaas wrote:
 > > I prefer that a dmesg collected in the simplest possible way, with no
 > > special config or boot flags, be as useful as possible.  So converting
 > > to dynamic debug requires much more thought about which messages
 > > should be always printed and which should become dynamic.
 > 
 > Why would a debugging message ever not be dynamic?  They are there for
 > you to use, and turn off when you are done.  If you want a user to
 > report the output of them, then of course they should be dynamic so they
 > can just write a line to a debugfs file and then start seeing them

This implies a user knows ahead of time what bugs they are going to hit,
and which messages they need to enable.  For hard-to-reproduce bugs,
or bugs that exhibit non-obvious symptoms, this isn't workable.

	Dave
