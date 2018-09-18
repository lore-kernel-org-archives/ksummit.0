Return-Path: <martin.petersen@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E2E6AE78
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 15:02:02 +0000 (UTC)
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8D6DE7DC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 15:02:02 +0000 (UTC)
To: Geert Uytterhoeven <geert@linux-m68k.org>
From: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <1536142432.8121.6.camel@HansenPartnership.com>
	<20180905113715.GJ9781@sirena.org.uk>
	<20180905150315.GA10819@linux.vnet.ibm.com>
	<20180905115008.22e3d21f@gandalf.local.home>
	<20180905162007.GO4225@linux.vnet.ibm.com>
	<1536165914.3627.17.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809052119580.15880@cbobk.fhfr.pm>
	<1536176428.3627.28.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809062152330.15880@cbobk.fhfr.pm>
	<yq1bm8urker.fsf@oracle.com>
	<CAMuHMdXbrJHe_4z5hZO3p-pKS0iU3yjzt5PgP3yzPifhfCb3XA@mail.gmail.com>
Date: Tue, 18 Sep 2018 11:01:50 -0400
In-Reply-To: <CAMuHMdXbrJHe_4z5hZO3p-pKS0iU3yjzt5PgP3yzPifhfCb3XA@mail.gmail.com>
	(Geert Uytterhoeven's message of "Tue, 18 Sep 2018 16:12:31 +0200")
Message-ID: <yq15zz2rgrl.fsf@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Distribution kernel
	bugzillas considered harmful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


Geert,

> You could start using topic branches (for core, and per driver/vendor),
> and recreate your for-next branch as a merge of all topic branches on a
> daily basis. If one patch series turns out to be bad, at least the commit
> IDs in the other topic branches will remain stable.

Yeah. I thought about doing what Jens does, splitting core and drivers
into separate branches. However, compared to block I have so few SCSI
core updates that I am not convinced it's worth it. Core changes only
amount to a couple percent of the total number of commits every release.

For topic branches to be truly effective I'd need a separate branch per
driver. Not impossible, but it seems like a pretty big hammer...

-- 
Martin K. Petersen	Oracle Linux Engineering
