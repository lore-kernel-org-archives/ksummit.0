Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E802BACC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 03:35:45 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 397E9775
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 03:35:45 +0000 (UTC)
Date: Fri, 14 Jun 2019 00:35:31 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Message-ID: <20190614003531.7bf551c3@coco.lan>
In-Reply-To: <yq1v9x8rhqk.fsf@oracle.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
	<yq1d0jh1qqa.fsf@oracle.com> <20190613140911.7a338651@coco.lan>
	<yq1v9x8rhqk.fsf@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

Em Thu, 13 Jun 2019 23:03:15 -0400
"Martin K. Petersen" <martin.petersen@oracle.com> escreveu:

> Mauro,
> 
> > Using astyle:
> >
> > 	$ astyle --indent=force-tab=8 --convert-tabs --style=linux
> > --lineend=linux --pad-oper --pad-comma --pad-header
> > --align-pointer=name --align-reference=name --break-one-line-headers
> > drivers/scsi/gdth_proc.c
> >
> > A visual inspection on it looked pretty decent to my eyes. The
> > automatic tool also reported a lot less issues:  
> 
> Not questioning that things could be cleaned up and that tools can
> help. However, many of these drivers will be removed when we get the
> chance so it doesn't seem worthwhile to invest in reformatting and
> updating them. Especially if cleaning things up will facilitate *more*
> drive-by patches. I'd much rather let stale be stale to make it clear
> that a given driver will be dropped from the tree unless somebody shows
> a real interest.
> 
> While this may come across as a desire to discourage patches completely,
> that's not actually the case. But I want patches from somebody who takes
> ownership and who is willing to validate things. Using real hardware,
> QEMU, output comparison, or interpretive dancing. Doesn't matter.
>
> I am a bit concerned that our emphasis on teaching process to attract
> new talent has encouraged a culture of non-committal drive-by cleanups.
> Whereas I think there is much to be learned from the process of buying
> an obsolete SCSI controller on eBay, beating a driver into shape,
> getting the changes merged, and committing to maintaining things going
> forward.

Understood. Yeah, investing time on obsolete drivers is probably
not worth and may attract people to do just cleanup patches. We have
a few such drivers on media that are there only because we don't have
any strong reason to send them to /dev/null. So, basically, they're
waiting for an excuse to be trashed.

We actually do that: from time to time, as we need to change some things
at the core, we decide to move obsoleted to drivers/staging, and, if 
nobody takes any action to claim its maintainership, after a couple
of Kernel releases, we send them to the trash can.

The comments I made are more related to things that the subsystem
maintainers want to keep and may have serious coding style issues.

If there are such kind of code, IMO, it makes sense to use a
tool like astyle, plus checkpatch --fix-inline in order to make the
code to be closer to the current coding style, specially at the
subsystem's core, as this may help to keep the Kernel coding style
coherent among different subsystems, with seems to be the point that
James raised with the "Patch Acceptance Consistency" topic.

Thanks,
Mauro
