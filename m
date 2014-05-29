Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4BED2990
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 18:20:11 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D52901FA28
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 18:20:10 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.mail.srv.osa [10.202.2.42])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 6EFFB2136F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 14:20:05 -0400 (EDT)
Date: Thu, 29 May 2014 11:23:41 -0700
From: Greg KH <greg@kroah.com>
To: Daniel Phillips <d.phillips@partner.samsung.com>
Message-ID: <20140529182341.GA6410@kroah.com>
References: <53877319.5060407@partner.samsung.com>
	<20140529181319.GA24218@kroah.com>
	<538778C5.7010505@partner.samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <538778C5.7010505@partner.samsung.com>
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

On Thu, May 29, 2014 at 11:13:25AM -0700, Daniel Phillips wrote:
> On 05/29/2014 11:13 AM, Greg KH wrote:
> >On Thu, May 29, 2014 at 10:49:13AM -0700, Daniel Phillips wrote:
> >>Hi Neil,
> >>
> >>This will be my annual proposal to open a general discussion about improving
> >>the internal block API, to be capable of doing all the things that the ZFS
> >>crowd claim are impossible without rampantly violating filesystem/raid
> >>layering. Attacking this in a storage-specific venue would also be good,
> >>however I view this issue as being at least as central as a number of topics
> >>already raised for general consideration.
> >Why didn't you bring this up at the filesystem summit a few months ago?
> >That's the best place for it, not at the kernel summit.
> Sorry, I did not have time to participate this year. I wonder though, why
> power management is regarded as a summit-worthy topic, but core
> functionality of the block layer is not.

power management covers the whole tree, the block layer is "just" the
block layer.

> >>Full disclosure dept: I have an agenda. I want to add the equivalent of
> >>Raidz etc to Tux3 without reimplementing a logical volume manager in the
> >>filesystem.
> >Like btrfs is doing?  :)
> >
> >greg k-h
> Not like btrfs is doing, the opposite really.

Good, post patches then :)

greg k-h
