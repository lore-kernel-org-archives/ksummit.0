Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4E253721
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Apr 2017 08:43:24 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B5C0318A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Apr 2017 08:43:23 +0000 (UTC)
Date: Wed, 26 Apr 2017 11:42:53 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Bart Van Assche <bart.vanassche@sandisk.com>
Message-ID: <20170426084253.yvxyzb3khh2fej4j@mwanda>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<20188905.kHbMkj7sB6@avalon>
	<CA+55aFxFyX-6y0MH2QivC+GAVThEFNHVKc3DBZJzDBc9JU_nCQ@mail.gmail.com>
	<1834084.5qZ8rLimvk@avalon>
	<1492631703.3217.30.camel@HansenPartnership.com>
	<3f55980c-1e8d-c841-2555-472ed10eb2fc@sandisk.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3f55980c-1e8d-c841-2555-472ed10eb2fc@sandisk.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Doug Ledford <dledford@redhat.com>, David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Apr 25, 2017 at 09:02:12AM -0700, Bart Van Assche wrote:
> We all know that the stability and the long-term success of the Linux
> kernel strongly depend on how well kernel maintainers do their job. What
> I noticed myself is that for some subsystems I contribute to (e.g.
> block, SCSI and RDMA) maintainers provide feedback about patches within
> a very reasonable time. For two other subsystems I contribute to it can
> take weeks or months before adequate feedback is provided. Sorry but I
> don't think that it is acceptable that it takes that long before
> feedback is provided and hence that this is a topic that deserves to be
> discussed during the maintainer summit.
> 

It's Ok to wait weeks.  Months is not OK.

If maintainers are not reading their email then you can try forwarding
the patches through Andrew.

I feel like I haven't had such a huge problem with this recently...  Are
we talking about other arches besides x86 and ARM?  My patches are
normally simple is probably part of the difference.

regards,
dan carpenter
