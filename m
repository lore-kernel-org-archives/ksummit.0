Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 617DA279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 23:59:33 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C7272138
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 23:59:32 +0000 (UTC)
Date: Tue, 28 Jul 2015 16:59:26 -0700
From: josh@joshtriplett.org
To: Greg KH <greg@kroah.com>
Message-ID: <20150728235926.GB8671@cloud>
References: <20436.1438090619@warthog.procyon.org.uk>
	<20150728183610.GB5307@cloud>
	<1438109061.5441.202.camel@HansenPartnership.com>
	<20150728185428.GD5307@cloud> <20150728213805.GA8786@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150728213805.GA8786@kroah.com>
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

On Tue, Jul 28, 2015 at 02:38:05PM -0700, Greg KH wrote:
> On Tue, Jul 28, 2015 at 11:54:28AM -0700, josh@joshtriplett.org wrote:
> > > So in that case, what's the advantage of separating the firmware from
> > > the driver?  If we can't update it without updating the driver, we could
> > > just build it in and save a huge amount of hassle.
> > 
> > Licensing, which is a large part of why we have request_firmware to
> > begin with.  Let's not make distribution kernel maintainers' lives more
> > difficult than they already are.
> 
> Not true at all, please talk with some lawyers about this.

I didn't say anything about a license violation; I'm talking about
firmware licenses that aren't FOSS, which means distributions like
Debian "main" can't ship them.

- Josh Triplett
