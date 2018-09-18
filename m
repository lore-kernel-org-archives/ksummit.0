Return-Path: <BATV+a9f02984112a0e0b7f84+5504+infradead.org+hch@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 37AEEE88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 15:27:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DAA7179F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 15:27:15 +0000 (UTC)
Date: Tue, 18 Sep 2018 08:27:11 -0700
From: Christoph Hellwig <hch@infradead.org>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Message-ID: <20180918152711.GA12609@infradead.org>
References: <20180905150315.GA10819@linux.vnet.ibm.com>
	<20180905115008.22e3d21f@gandalf.local.home>
	<20180905162007.GO4225@linux.vnet.ibm.com>
	<1536165914.3627.17.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809052119580.15880@cbobk.fhfr.pm>
	<1536176428.3627.28.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809062152330.15880@cbobk.fhfr.pm>
	<yq1bm8urker.fsf@oracle.com>
	<CAMuHMdXbrJHe_4z5hZO3p-pKS0iU3yjzt5PgP3yzPifhfCb3XA@mail.gmail.com>
	<yq15zz2rgrl.fsf@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <yq15zz2rgrl.fsf@oracle.com>
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

On Tue, Sep 18, 2018 at 11:01:50AM -0400, Martin K. Petersen wrote:
> Yeah. I thought about doing what Jens does, splitting core and drivers
> into separate branches. However, compared to block I have so few SCSI
> core updates that I am not convinced it's worth it. Core changes only
> amount to a couple percent of the total number of commits every release.

I did that for the SCSI tree a long time ago, and it did not work out
at all as the few core changes are usually required by driver changes.

Note that I've not really seen the split recently in the block tree
either, probably for the same reason.
