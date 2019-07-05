Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CD8BBE1E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 16:17:05 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 76AB087E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 16:17:05 +0000 (UTC)
Date: Fri, 5 Jul 2019 18:17:01 +0200
From: Greg KH <greg@kroah.com>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20190705161701.GB8626@kroah.com>
References: <20190703013557.GQ11506@sasha-vm>
	<87lfxc1ta4.fsf@concordia.ellerman.id.au>
	<s5hwogwy3g0.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <s5hwogwy3g0.wl-tiwai@suse.de>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel process
 automation and improvement
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 05, 2019 at 04:13:35PM +0200, Takashi Iwai wrote:
> 
> FWIW, SUSE tracks the possible upstream fixes by parsing Fixes tag
> regularly, so it's proven to be useful.

Yeah, it's the fixes tag parsing that I know I use (well, should use
more often than I do).  I think Sasha runs that type of script more
often than I do.

thanks,

greg k-h
