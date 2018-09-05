Return-Path: <andrew@lunn.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A03931427
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:35:16 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 470F47A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:35:15 +0000 (UTC)
Date: Wed, 5 Sep 2018 16:51:10 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Greg KH <greg@kroah.com>
Message-ID: <20180905145110.GC28719@lunn.ch>
References: <s5hbm9ccbie.wl-tiwai@suse.de>
	<20180905135528.ase6evcv7rlwufyr@mwanda>
	<s5h4lf4ca7t.wl-tiwai@suse.de> <20180905142046.GA8396@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180905142046.GA8396@kroah.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] How can we treat staging
 drivers better?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> Look at what moved out this, and the past, kernel releases for examples
> (I can't remember the names at the moment, sorry).  Another driver just
> got moved last week into the networking tree, so that's another success
> story.

I tend to look at all new network drivers, and i was involved in that
one.

In general, there is no interaction between people working on network
drivers in staging and netdev. So i have no idea what network drivers
are currently in staging. There are no requests to review them to help
get them up to mainline quality. Generally, the first time netdev
hears of them is when somebody submits a patch moving the driver. And
often that patch is created with git format-patch -M, so all we see
are renames, not the actual code. That makes it impossible to actual
review the patch.

So i think it would be useful to add some hints to the documentation
about how to get out of staging. When to get the target subsystem
involved, how to ask for reviews, how to submit it to the target
subsystem, etc.

	Andrew
