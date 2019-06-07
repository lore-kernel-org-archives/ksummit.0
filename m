Return-Path: <martin.petersen@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 66A6C1881
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Jun 2019 20:14:59 +0000 (UTC)
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 029B4895
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Jun 2019 20:14:55 +0000 (UTC)
To: Dan Williams <dan.j.williams@intel.com>
From: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
Date: Fri, 07 Jun 2019 16:14:46 -0400
In-Reply-To: <CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	(Dan Williams's message of "Thu, 6 Jun 2019 11:26:20 -0700")
Message-ID: <yq17e9xi24p.fsf@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
	Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


Dan,

> That said, I do think moving forward with the document would be
> necessary pre-work for this conversation. Just the act of putting
> subsystem specific policies in writing even if they differ would go
> along way towards making the lives of contributors less fraught with
> arbitrary peril.

I think part of the problem is that some subsystems are older than
others.

It is much easier to enforce your favorite bike shed/Xmas tree if the
code is very similar and developed by like-minded people. Or written in
this millennium.

Whereas in SCSI I have 25+ years of changes in coding practices,
numerous vendor drivers influenced by styles in various other operating
systems, etc. to deal with.

I try to enforce current best practices on core code because that is a
very limited subset. And one which I can micro-manage. But trying to
enforce similar rules on old crusty stuff which probably has no active
maintainer is fraught with error. Plus things become completely
unreadable if you start mixing new and 25+ year old style inside a
single file.

So I am perfectly OK with having policies. But communicating and
enforcing them on a per-subsystem basis is too coarse a granularity for
the reality I have to deal with. Consequently, I think your MAINTAINERS
tagging idea is a good approach.

-- 
Martin K. Petersen	Oracle Linux Engineering
