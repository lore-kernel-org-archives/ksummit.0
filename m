Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 35CA698F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  1 Jun 2014 02:35:02 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 97FCE20337
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  1 Jun 2014 02:35:01 +0000 (UTC)
Date: Sat, 31 May 2014 19:34:58 -0700
From: Greg KH <greg@kroah.com>
To: Daniel Phillips <d.phillips@partner.samsung.com>
Message-ID: <20140601023458.GA5243@kroah.com>
References: <53877319.5060407@partner.samsung.com>
	<20140529181319.GA24218@kroah.com>
	<538778C5.7010505@partner.samsung.com>
	<20140529182341.GA6410@kroah.com>
	<53877FBD.7060003@partner.samsung.com>
	<20140529234311.GB12450@kroah.com>
	<538A5B64.10203@partner.samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <538A5B64.10203@partner.samsung.com>
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

On Sat, May 31, 2014 at 03:44:52PM -0700, Daniel Phillips wrote:
> On 05/29/2014 04:43 PM, Greg KH wrote:
> >...you know how this all works, we don't have to have meetings in order to
> >do design decisions that are "large".
> 
> 
> Perhaps there is something wrong with that approach. Certainly in regards to
> how to bridge the gap between what we now have for logical volume support,
> and what we should have, or what BSD has, that approach is demonstrably a
> perennial failure. After all these years, we still have dm and md as
> separate islands, no usable snapshotting block device, and roughly zero
> interaction between filesystems and volume managers.

People have talked about this for over a very long time.  I've seen
Neil give numerous presentations about this for what, a decade now?

It must not be important enough for anyone to actually do the work.  Or,
more likely, no one has been able to convince a company to sponsor the
work.  So perhaps, it isn't that major of a thing that is needed to be
done?

> The larger issue would be, why is there no design process in Linux for
> large design issues?

There is, an "evolutionary" process.  If you take a look at a 4 or 5
year old kernel, major things have happened.  It's just that if you are
in the middle of it all, it doesn't look like "large" things have
changed.

thanks,

greg k-h
