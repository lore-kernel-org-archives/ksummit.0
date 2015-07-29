Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BAE90279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 00:17:05 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2F1C7174
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 00:17:05 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 7BD2521381
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 20:17:04 -0400 (EDT)
Date: Tue, 28 Jul 2015 17:17:03 -0700
From: Greg KH <greg@kroah.com>
To: josh@joshtriplett.org
Message-ID: <20150729001703.GA17116@kroah.com>
References: <20436.1438090619@warthog.procyon.org.uk>
	<20150728183610.GB5307@cloud>
	<1438109061.5441.202.camel@HansenPartnership.com>
	<20150728185428.GD5307@cloud> <20150728213805.GA8786@kroah.com>
	<20150728235926.GB8671@cloud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150728235926.GB8671@cloud>
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

On Tue, Jul 28, 2015 at 04:59:26PM -0700, josh@joshtriplett.org wrote:
> On Tue, Jul 28, 2015 at 02:38:05PM -0700, Greg KH wrote:
> > On Tue, Jul 28, 2015 at 11:54:28AM -0700, josh@joshtriplett.org wrote:
> > > > So in that case, what's the advantage of separating the firmware from
> > > > the driver?  If we can't update it without updating the driver, we could
> > > > just build it in and save a huge amount of hassle.
> > > 
> > > Licensing, which is a large part of why we have request_firmware to
> > > begin with.  Let's not make distribution kernel maintainers' lives more
> > > difficult than they already are.
> > 
> > Not true at all, please talk with some lawyers about this.
> 
> I didn't say anything about a license violation; I'm talking about
> firmware licenses that aren't FOSS, which means distributions like
> Debian "main" can't ship them.

As the person who made the kernel in Debian "not-free" well over a
15 years ago because of some people "feeling" that you can't bundle a
binary image inside the kernel image, I strongly object to that opinion,
and consulted legal council on this very topic, as I stated.

If Debian, or other distros, wish to take a different legal stance,
wonderful, but again, this is up to them, but note that it is not such a
clear "licensing" issue as you might think.

If a company wants to have their firmware used on Linux, it is quite
easy for them to license it in a way that allows the binary to be
distributed.  And as you are wanting to get them to now sign the
firmware image, they must already wish to work with us to make that
happen, so I don't understand your objection here.

anyway, way off-topic, let's just drop it...

greg k-h
