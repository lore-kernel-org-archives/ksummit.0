Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6F167AB3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 15:26:19 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 58B061F940
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 15:26:18 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 14 May 2014 17:26:20 +0200
Message-ID: <7582809.t9iBxJcjvo@avalon>
In-Reply-To: <20140514115745.GZ12304@sirena.org.uk>
References: <1872038.43ncqEMWSx@avalon> <1904209.2bUKgQ0eOo@vostro.rjw.lan>
	<20140514115745.GZ12304@sirena.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Mark Brown <broonie@sirena.org.uk>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday 14 May 2014 12:57:45 Mark Brown wrote:
> On Wed, May 14, 2014 at 02:11:25PM +0200, Rafael J. Wysocki wrote:
> > On Monday, May 12, 2014 09:31:53 PM Mark Brown wrote:
> > > On Mon, May 12, 2014 at 10:27:14PM +0200, Laurent Pinchart wrote:
> > > > That solves the probe time dependencies, but unfortunately not the
> > > > runtime PM dependencies.
> > > 
> > > It also solves the system suspend dependencies.
> > 
> > Well, I'm not sure about that.  How does it do that, exactly?
> 
> Since the core device probe is deferred until everything it depends on
> is ready it'll get pushed along the device list so that it appears after
> everything it needs and hence is suspended first.

That might solve (part of) the master vs. components dependencies (and even in 
that case I'm pretty sure that there will be cases where the master needs to 
be suspended first and cases where th slave(s) need to be suspended first), 
but it doesn't handle inter-slaves dependencies.

In the V4L subsystem we've implemented an explicit power management API that 
"slaves" (called subdevices in V4L) must implement, to be called by the 
master. That's of course more of a workaround than a perfect (or even good) 
solution.

-- 
Regards,

Laurent Pinchart
