Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CC8FFFE2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 13:55:37 +0000 (UTC)
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 70F28713
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 13:55:37 +0000 (UTC)
Date: Wed, 5 Sep 2018 16:55:28 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20180905135528.ase6evcv7rlwufyr@mwanda>
References: <s5hbm9ccbie.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <s5hbm9ccbie.wl-tiwai@suse.de>
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Wed, Sep 05, 2018 at 03:35:53PM +0200, Takashi Iwai wrote:
> The staging driver is a wonderful process to promote the downstream
> code to the upstream, but I have doubt whether it's working really as
> expected for now.
> 
> - Often the drivers live forever in staging although they should have
>   been moved to the upper, properly maintained, subsystems.

The only one that comes to mind is comedi.  I think those guys know that
everyone is fine with them moving the code.

Do you have another example?

> 
> - Code changes in staging are mostly only scratching surfaces, minor
>   code style cleanups, etc, what checkpatch suggests.

That's probably true for the wireless drivers because converting them
to use mac80211 is complicated.  The other drivers seem to be doing
better.

> 
> - There are little communications with the corresponding subsystem;
>   already a few times I was surprised by casually finding a staging
>   driver code by grepping for preparing API changes.

Which ones are you interested in?  I'd always prefer to hand off staging
drivers to an existing subsystem but it's not always clear who that
should be.

regards,
dan carpenter
