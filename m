Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id ABE9082D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 23:43:20 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3AF431FD49
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 23:43:20 +0000 (UTC)
Date: Thu, 29 May 2014 16:43:11 -0700
From: Greg KH <greg@kroah.com>
To: Daniel Phillips <d.phillips@partner.samsung.com>
Message-ID: <20140529234311.GB12450@kroah.com>
References: <53877319.5060407@partner.samsung.com>
	<20140529181319.GA24218@kroah.com>
	<538778C5.7010505@partner.samsung.com>
	<20140529182341.GA6410@kroah.com>
	<53877FBD.7060003@partner.samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53877FBD.7060003@partner.samsung.com>
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

On Thu, May 29, 2014 at 11:43:09AM -0700, Daniel Phillips wrote:
> >> Not like btrfs is doing, the opposite really.
> > Good, post patches then :)
> >
> Is that a recommendation to develop a core API extension in a vacuum?

No, do it like any other core api changes, post patches that explain
what you want to do, and people will review them.

Come on, you know how this all works, we don't have to have meetings in
order to do design decisions that are "large".

greg k-h
