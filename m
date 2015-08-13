Return-Path: <cl@linux.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CE4C23EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Aug 2015 15:40:23 +0000 (UTC)
Received: from resqmta-ch2-05v.sys.comcast.net
	(resqmta-ch2-05v.sys.comcast.net [69.252.207.37])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 73FA91AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Aug 2015 15:40:23 +0000 (UTC)
Date: Thu, 13 Aug 2015 10:40:20 -0500 (CDT)
From: Christoph Lameter <cl@linux.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1439404681.2825.67.camel@HansenPartnership.com>
Message-ID: <alpine.DEB.2.11.1508131036260.26691@east.gentwo.org>
References: <20150812111552.0f7e5fe7@urahara>
	<20150812182103.GA20106@infradead.org>
	<1439404681.2825.67.camel@HansenPartnership.com>
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Christoph Hellwig <hch@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] userspace infrastructure services
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 12 Aug 2015, James Bottomley wrote:

> Perhaps we should look first at how CRIU got it right and then discuss
> how we might use those same principles to fix other projects, like DPDK.

Well one thing is to look at the existing implementation of the
APIs that are already available in the IBverbs/RMDA and cover both
networking as well as storage. They already separate the control and the
data transfer areas. Kernel provides control but gets out of the way of
data transfers. Arguably this could be cleaner but here is an existing way
of doing this that we already support and that has a decade long history
of use in the industry.

This is not about minimal gains but being able to get more than
just a fraction of the possible performance out of high end devices.
