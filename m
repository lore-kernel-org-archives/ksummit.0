Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 42D54901
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Jul 2017 11:37:06 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EC091140
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Jul 2017 11:37:04 +0000 (UTC)
Date: Fri, 7 Jul 2017 14:36:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170707113650.ee6oys5u4vq5hgdi@mwanda>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<20170706144028.46a2mt2mdzpt6ip7@mwanda>
	<CA+55aFyPQeMYUafR32parh=jGU0O8prn5vhOhhW+WBU-LbR4HQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+55aFyPQeMYUafR32parh=jGU0O8prn5vhOhhW+WBU-LbR4HQ@mail.gmail.com>
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

On Thu, Jul 06, 2017 at 09:41:36AM -0700, Linus Torvalds wrote:
> On Thu, Jul 6, 2017 at 7:40 AM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > People have mentioned "make oldconfig" but I've never had a lot of luck
> > with that.  It always just prints "* Restart config..." and deletes my
> > config.
> 
> Really?
> 

Argh.  You're right.  I'm an idiot.  It's actually working fine, but it
asked so many questions I thought it was broken.

regards,
dan carpenter
