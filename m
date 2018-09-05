Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BEB49D9A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 00:27:30 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0049.hostedemail.com
	[216.40.44.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B51138B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 00:27:29 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave06.hostedemail.com (Postfix) with ESMTP id 141358015715
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:59:35 +0000 (UTC)
Message-ID: <11c23ee895802b2f9e82bd90e23d6a30fe1f060c.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Greg KH <greg@kroah.com>, Takashi Iwai <tiwai@suse.de>
Date: Wed, 05 Sep 2018 07:59:30 -0700
In-Reply-To: <20180905142046.GA8396@kroah.com>
References: <s5hbm9ccbie.wl-tiwai@suse.de>
	<20180905135528.ase6evcv7rlwufyr@mwanda> <s5h4lf4ca7t.wl-tiwai@suse.de>
	<20180905142046.GA8396@kroah.com>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Wed, 2018-09-05 at 16:20 +0200, Greg KH wrote:
> I always push code to the
> subsystem-specific maintainers when they are to "graduate", I never
> merge things behind maintainers backs.

Recently, there was an attempt to move code from 'staging'
to a more mainline tree that needed to be reviewed by the
nominal subsystem maintainer.

https://www.spinics.net/lists/netdev/msg520443.html

I believe the nominal maintainer(s) should be involved
somewhat earlier than that.
