Return-Path: <martin.petersen@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0E0668DC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 03:03:34 +0000 (UTC)
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A226DE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 03:03:33 +0000 (UTC)
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
From: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
	<yq1d0jh1qqa.fsf@oracle.com> <20190613140911.7a338651@coco.lan>
Date: Thu, 13 Jun 2019 23:03:15 -0400
In-Reply-To: <20190613140911.7a338651@coco.lan> (Mauro Carvalho Chehab's
	message of "Thu, 13 Jun 2019 14:09:11 -0300")
Message-ID: <yq1v9x8rhqk.fsf@oracle.com>
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

> Using astyle:
>
> 	$ astyle --indent=force-tab=8 --convert-tabs --style=linux
> --lineend=linux --pad-oper --pad-comma --pad-header
> --align-pointer=name --align-reference=name --break-one-line-headers
> drivers/scsi/gdth_proc.c
>
> A visual inspection on it looked pretty decent to my eyes. The
> automatic tool also reported a lot less issues:

Not questioning that things could be cleaned up and that tools can
help. However, many of these drivers will be removed when we get the
chance so it doesn't seem worthwhile to invest in reformatting and
updating them. Especially if cleaning things up will facilitate *more*
drive-by patches. I'd much rather let stale be stale to make it clear
that a given driver will be dropped from the tree unless somebody shows
a real interest.

While this may come across as a desire to discourage patches completely,
that's not actually the case. But I want patches from somebody who takes
ownership and who is willing to validate things. Using real hardware,
QEMU, output comparison, or interpretive dancing. Doesn't matter.

I am a bit concerned that our emphasis on teaching process to attract
new talent has encouraged a culture of non-committal drive-by cleanups.
Whereas I think there is much to be learned from the process of buying
an obsolete SCSI controller on eBay, beating a driver into shape,
getting the changes merged, and committing to maintaining things going
forward.

-- 
Martin K. Petersen	Oracle Linux Engineering
