Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 331E0523
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 02:50:08 +0000 (UTC)
Received: from mho-02-ewr.mailhop.org (mho-02-ewr.mailhop.org [204.13.248.72])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8A64B1FD4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 02:50:07 +0000 (UTC)
Date: Thu, 15 May 2014 22:50:01 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <20140516025001.GU27822@titan.lakedaemon.net>
References: <5367D989.1000504@linaro.org>
	<1399581426.11946.12.camel@deadeye.wl.decadent.org.uk>
	<20140509151043.GC15523@thunk.org> <4440149.cMfuUKn6MV@wuerfel>
	<20140509223315.GA5725@thin> <536D6FE2.5050503@zytor.com>
	<20140515121859.BEC80C40B0E@trevor.secretlab.ca>
	<5374F758.7020204@zytor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5374F758.7020204@zytor.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	John Stultz <john.stultz@linaro.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 15, 2014 at 10:20:24AM -0700, H. Peter Anvin wrote:
> On 05/15/2014 05:18 AM, Grant Likely wrote:
> > 
> > And yet still, once deployed will never get updated. :-(
> > 
> 
> That is a whole separate problem.  I'm not quite convinced that it will
> work that way... maybe ubiquitous upgrades will be a solved problem by then.

With the infrastructure to support verification, which brings in key
management.  Otherwise, it'll be an easy attack surface.  I'm not
optimistic...

The alternative is to make the devices so trivially disposable that
outdated/vulnerable devices are rejected from the network.  The user
then orders a replacement.

thx,

Jason.
