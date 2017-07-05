Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 19E1AB5E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 18:42:46 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 80488F3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 18:42:45 +0000 (UTC)
Date: Wed, 5 Jul 2017 20:42:45 +0200
From: Greg KH <greg@kroah.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20170705184245.GA22044@kroah.com>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<a462fb3b-a6d4-e969-b301-b404981de224@roeck-us.net>
	<20170705153259.GA7265@kroah.com>
	<20170705115219.02370220@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170705115219.02370220@gandalf.local.home>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Carlos O'Donell <carlos@redhat.com>, linux-api@vger.kernel.org,
	Thorsten Leemhuis <linux@leemhuis.info>,
	Shuah Khan <shuahkh@osg.samsung.com>
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

On Wed, Jul 05, 2017 at 11:52:19AM -0400, Steven Rostedt wrote:
> > So take Carlos's advice, start small, do it for your subsystem if you
> 
> Yes, lets start small. What do you think about all reproducers getting
> into selftests? If it's not 100% reproducing, then it's up to the
> individual, but any test that can trigger a bug 100% should be added.

That would be great.  One could argue that we should be adding the
"stack guard" testing apps to the selftest tree now, as a number of us
have them floating around in their test directories at the moment.

> I'd like to expand selftests to include configs too. If there's a
> config that triggers a bug, that should be added to a list of "configs"
> to be tested as well.

So a test needs a specific configuration?  We need a way to specify that
in a generic fashion so that all tests don't have to duplicate that
logic.  Time to write a helper function to parse /proc/config.gz :)

thanks,

greg k-h
