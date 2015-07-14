Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2A731267
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 18:02:03 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 03637AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 18:02:01 +0000 (UTC)
Date: Tue, 14 Jul 2015 21:01:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Greg KH <greg@kroah.com>
Message-ID: <20150714180104.GC5835@mwanda>
References: <20150710181409.GA30145@treble.redhat.com>
	<1436576450.27924.59.camel@stgolabs.net>
	<20150712034824.GA4236@treble.hsd1.ky.comcast.net>
	<20150712052317.GB15346@x>
	<20150712122823.GA4366@treble.redhat.com>
	<20150713140113.GB4341@mwanda>
	<20150713143331.GA21079@quack.suse.cz>
	<20150713162439.GI4289@mwanda> <20150714043803.GA3290@sudip-PC>
	<20150714151618.GA27755@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150714151618.GA27755@kroah.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	jic23@jic23.retrosnub.co.uk, ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 14, 2015 at 08:16:18AM -0700, Greg KH wrote:
> Or even more important, how in the world will the maintainer be adding
> these tags in a simple manner?  It's a manual thing for me to do today,
> which is a pain, and given that I have no "state" of previous patches
> remembering what happened in previous versions, I don't know how I would
> be expected to keep track of all of this.
> 
> So whatever scheme people come up with, please remember that it has to
> be easy to actually implement...

It's like Reported-by: the patch sender adds it when they write the
patch (re-write it in this case).

regards,
dan carpenter
