Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 25F39B1B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 07:01:40 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 50EDFAA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 07:01:38 +0000 (UTC)
Date: Tue, 14 Jul 2015 10:00:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Message-ID: <20150714070042.GD4341@mwanda>
References: <20150708145315.29030a75@gandalf.local.home>
	<20150710181409.GA30145@treble.redhat.com>
	<1436576450.27924.59.camel@stgolabs.net>
	<20150712034824.GA4236@treble.hsd1.ky.comcast.net>
	<20150712052317.GB15346@x>
	<20150712122823.GA4366@treble.redhat.com>
	<20150713140113.GB4341@mwanda>
	<20150713143331.GA21079@quack.suse.cz>
	<20150713162439.GI4289@mwanda> <20150714043803.GA3290@sudip-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150714043803.GA3290@sudip-PC>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	jic23@jic23.retrosnub.co.uk, Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Tue, Jul 14, 2015 at 10:08:03AM +0530, Sudip Mukherjee wrote:
> >The next version of the patch had a process
> > problem which Sudip noticed as well but that still doesn't earn a
> > with-fix-from tag.
> Then will the first reviewer always get the credit? Suppose a hypothetial
> situation where v1 is just having a bug like the one you mentioned,
> reviewer X points that out so he gets "With-fix-from:", but v2 has a more
> serious problem and results in build failure and reviewer Y points that out
> and v3 is the final patch that is accepted. So now who will get
> "With-fix-from:" ?

No no.  Build fixes don't count...  Only runtime bugs.  But, yes, if
there are two bugs you give credit for both.

regards,
dan carpenter
