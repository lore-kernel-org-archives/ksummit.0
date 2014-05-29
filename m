Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5A62398F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 18:09:46 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 84D651FDED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 18:09:45 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.mail.srv.osa [10.202.2.44])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 003CE20E4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 14:09:43 -0400 (EDT)
Date: Thu, 29 May 2014 11:13:19 -0700
From: Greg KH <greg@kroah.com>
To: Daniel Phillips <d.phillips@partner.samsung.com>
Message-ID: <20140529181319.GA24218@kroah.com>
References: <53877319.5060407@partner.samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53877319.5060407@partner.samsung.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [topic] Richer internal block API
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 29, 2014 at 10:49:13AM -0700, Daniel Phillips wrote:
> Hi Neil,
> 
> This will be my annual proposal to open a general discussion about improving
> the internal block API, to be capable of doing all the things that the ZFS
> crowd claim are impossible without rampantly violating filesystem/raid
> layering. Attacking this in a storage-specific venue would also be good,
> however I view this issue as being at least as central as a number of topics
> already raised for general consideration.

Why didn't you bring this up at the filesystem summit a few months ago?
That's the best place for it, not at the kernel summit.

> Full disclosure dept: I have an agenda. I want to add the equivalent of
> Raidz etc to Tux3 without reimplementing a logical volume manager in the
> filesystem.

Like btrfs is doing?  :)

greg k-h
