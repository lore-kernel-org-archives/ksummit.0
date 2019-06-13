Return-Path: <martin.petersen@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D9EB115A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 19:57:16 +0000 (UTC)
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 71FD1711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 19:57:16 +0000 (UTC)
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
From: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
	<1560436507.3329.12.camel@HansenPartnership.com>
	<20190613142621.6a934377@coco.lan>
	<1560451292.3329.51.camel@HansenPartnership.com>
	<20190613161141.41f90b83@coco.lan>
Date: Thu, 13 Jun 2019 15:57:03 -0400
In-Reply-To: <20190613161141.41f90b83@coco.lan> (Mauro Carvalho Chehab's
	message of "Thu, 13 Jun 2019 16:11:41 -0300")
Message-ID: <yq1o931s1gw.fsf@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
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


Mauro,

> Yeah, a tool or a CI bot test with would help to identify
> binary-identical changes would be really helpful, as this could help a
> lot maintainers to decide either to take or not cleanup patches
> (including those coccinelle stuff) without requiring hardware testing.

That would be extremely helpful. I would love to make that a requirement
for SCSI acceptance.

-- 
Martin K. Petersen	Oracle Linux Engineering
