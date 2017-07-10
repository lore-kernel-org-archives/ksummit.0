Return-Path: <tony.luck@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E475FA92
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Jul 2017 17:15:35 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7803412F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Jul 2017 17:15:35 +0000 (UTC)
From: "Luck, Tony" <tony.luck@intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Linus Torvalds
	<torvalds@linux-foundation.org>
Date: Mon, 10 Jul 2017 17:15:33 +0000
Message-ID: <3908561D78D1C84285E8C5FCA982C28F613009A7@ORSMSX114.amr.corp.intel.com>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<20170706144028.46a2mt2mdzpt6ip7@mwanda>
	<CA+55aFyPQeMYUafR32parh=jGU0O8prn5vhOhhW+WBU-LbR4HQ@mail.gmail.com>
	<20170707113650.ee6oys5u4vq5hgdi@mwanda>
In-Reply-To: <20170707113650.ee6oys5u4vq5hgdi@mwanda>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> Argh.  You're right.  I'm an idiot.  It's actually working fine, but it
> asked so many questions I thought it was broken.

I run:

$ yes "" | make oldconfig

to just pick the default answer for all the questions.  It works
almost all of the time.  Only recent break was when using
a RHEL config as the start point some change in the MPT2SAS
and MPT3SAS bits left me with a kernel with no driver to get to
my root file system.

-Tony
