Return-Path: <martin.petersen@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B20E7949
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 14:53:42 +0000 (UTC)
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 54284711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 14:53:42 +0000 (UTC)
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
From: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
Date: Thu, 13 Jun 2019 10:53:33 -0400
In-Reply-To: <20190613104930.7dc85e13@coco.lan> (Mauro Carvalho Chehab's
	message of "Thu, 13 Jun 2019 10:49:30 -0300")
Message-ID: <yq1d0jh1qqa.fsf@oracle.com>
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


Mauro,

> Yet, we do enforce the current coding practices to all new code
> we receive.

The problem in SCSI is that standalone new code is rare. Almost every
patch changes existing code.

Mixing code with tabs for indentation with old code that uses for
instance two spaces results in code that is very hard to follow. That's
why the preference is to stick to the existing style of a given file.

Also, attempts to use code formatters to produce sensible results have
failed. Many of the drivers include tables or carefully formatted
comments or data structures. So without a human involved, automatic code
formatting produces complete junk.

-- 
Martin K. Petersen	Oracle Linux Engineering
