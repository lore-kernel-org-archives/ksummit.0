Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 46B20724
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 14:19:23 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8B9DE23A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 14:19:22 +0000 (UTC)
Date: Wed, 3 Aug 2016 16:19:37 +0200
From: Greg KH <greg@kroah.com>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20160803141937.GA9180@kroah.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<871t27s1i8.fsf@intel.com> <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 03, 2016 at 03:48:29PM +0200, Jiri Kosina wrote:
> Has anything changed in the process that'd just make patches like this one 
> to be not merged these days?

We have Guenter's test-bot that has helped out immensely here with this.

It seems most of these can all come down to "we need more testing",
which of course we do, no one can ever argue about that.  It's just that
almost[1] no one is willing to step up and do the work beyond what we
are currently doing, which is sad...

thanks,

greg k-h

[1] The people that are doing stable tree testing are doing a great job,
    Guenter, Shuah, kernelci, my build-bot, 0-day, etc.  I rely on them
    to do the majority of the testing of stable kernels as on my own I
    have very limited resources to do so.
