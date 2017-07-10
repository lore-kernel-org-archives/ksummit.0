Return-Path: <alexandre.belloni@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 39FA0360
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Jul 2017 17:33:48 +0000 (UTC)
Received: from mail.free-electrons.com (mail.free-electrons.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9459FA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Jul 2017 17:33:47 +0000 (UTC)
Date: Mon, 10 Jul 2017 19:33:35 +0200
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: "Luck, Tony" <tony.luck@intel.com>
Message-ID: <20170710173335.4ksnso6dzaekoxz4@piout.net>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<20170706144028.46a2mt2mdzpt6ip7@mwanda>
	<CA+55aFyPQeMYUafR32parh=jGU0O8prn5vhOhhW+WBU-LbR4HQ@mail.gmail.com>
	<20170707113650.ee6oys5u4vq5hgdi@mwanda>
	<3908561D78D1C84285E8C5FCA982C28F613009A7@ORSMSX114.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3908561D78D1C84285E8C5FCA982C28F613009A7@ORSMSX114.amr.corp.intel.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>, Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 10/07/2017 at 17:15:33 +0000, Luck, Tony wrote:
> > Argh.  You're right.  I'm an idiot.  It's actually working fine, but it
> > asked so many questions I thought it was broken.
> 
> I run:
> 
> $ yes "" | make oldconfig
> 

I know the yes trick works for kernels older than 3.7 but maybe people
should start using make olddefconfig ;)


-- 
Alexandre Belloni, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com
