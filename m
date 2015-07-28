Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6A2E0483
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 21:38:09 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D84221DF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 21:38:08 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 59DEA20C11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 17:38:07 -0400 (EDT)
Date: Tue, 28 Jul 2015 14:38:05 -0700
From: Greg KH <greg@kroah.com>
To: josh@joshtriplett.org
Message-ID: <20150728213805.GA8786@kroah.com>
References: <20436.1438090619@warthog.procyon.org.uk>
	<20150728183610.GB5307@cloud>
	<1438109061.5441.202.camel@HansenPartnership.com>
	<20150728185428.GD5307@cloud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150728185428.GD5307@cloud>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>, mcgrof@gmail.com,
	ksummit-discuss@lists.linuxfoundation.org, jkkm@jkkm.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 28, 2015 at 11:54:28AM -0700, josh@joshtriplett.org wrote:
> > So in that case, what's the advantage of separating the firmware from
> > the driver?  If we can't update it without updating the driver, we could
> > just build it in and save a huge amount of hassle.
> 
> Licensing, which is a large part of why we have request_firmware to
> begin with.  Let's not make distribution kernel maintainers' lives more
> difficult than they already are.

Not true at all, please talk with some lawyers about this.

Or, to be clear, the lawyers I have discussed this with have no issues
at all with it.  Yours might differ.  Insert joke about 2 lawyers and 3
opinions and all that...

thanks,

greg k-h
