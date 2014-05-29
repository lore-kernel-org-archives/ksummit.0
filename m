Return-Path: <martin.petersen@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 64866B1D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 04:01:40 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D2B9E201AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 04:01:37 +0000 (UTC)
To: Dan Williams <dan.j.williams@intel.com>
From: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140525222923.GW15585@mwanda> <1401119598.3303.6.camel@dabdike>
	<alpine.LNX.2.00.1405271634080.28869@pobox.suse.cz>
	<1401224020.14454.92.camel@dabdike>
	<alpine.LNX.2.00.1405272316000.17241@pobox.suse.cz>
	<yq1zji2hif7.fsf@sermon.lab.mkp.net>
	<CAPcyv4jOzqu8g2gEhAf2tdNY0P=D-p6L8kz_zX9WgqPh-d8C_w@mail.gmail.com>
Date: Thu, 29 May 2014 00:01:28 -0400
In-Reply-To: <CAPcyv4jOzqu8g2gEhAf2tdNY0P=D-p6L8kz_zX9WgqPh-d8C_w@mail.gmail.com>
	(Dan Williams's message of "Wed, 28 May 2014 16:25:05 -0700")
Message-ID: <yq1lhtldyhz.fsf@sermon.lab.mkp.net>
MIME-Version: 1.0
Content-Type: text/plain
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

>>>>> "Dan" == Dan Williams <dan.j.williams@intel.com> writes:

Dan,

Dan> Isn't the fundamental problem:

Dan> HW Vendor: "Are you saying you may hold up driver updates for an
Dan> indefinite period of time?"

Dan> Kernel community: "Yes"

There's a big difference between a driver bug fix and "value added"
features that are deemed too ugly to be included upstream.


Dan> HW Vendor: "Ok, we'll keep sending our official updates direct to
Dan> customers as an out-of-tree tarball and let that 'upstream-thing'
Dan> happen in the background."

Well, and thus forcing the customer to void their distro support. I
don't think that's doing anyone a favor.

-- 
Martin K. Petersen	Oracle Linux Engineering
