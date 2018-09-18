Return-Path: <axboe@kernel.dk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E5419CAB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 15:34:53 +0000 (UTC)
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C0A6475B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 15:34:52 +0000 (UTC)
Received: by mail-it0-f66.google.com with SMTP id p79-v6so3832640itp.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 08:34:52 -0700 (PDT)
To: Christoph Hellwig <hch@infradead.org>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
References: <20180905150315.GA10819@linux.vnet.ibm.com>
	<20180905115008.22e3d21f@gandalf.local.home>
	<20180905162007.GO4225@linux.vnet.ibm.com>
	<1536165914.3627.17.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809052119580.15880@cbobk.fhfr.pm>
	<1536176428.3627.28.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809062152330.15880@cbobk.fhfr.pm>
	<yq1bm8urker.fsf@oracle.com>
	<CAMuHMdXbrJHe_4z5hZO3p-pKS0iU3yjzt5PgP3yzPifhfCb3XA@mail.gmail.com>
	<yq15zz2rgrl.fsf@oracle.com> <20180918152711.GA12609@infradead.org>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <a1d4fed2-3aa3-a590-e6e4-c6ba20f3185d@kernel.dk>
Date: Tue, 18 Sep 2018 09:34:48 -0600
MIME-Version: 1.0
In-Reply-To: <20180918152711.GA12609@infradead.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
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

On 9/18/18 9:27 AM, Christoph Hellwig wrote:
> On Tue, Sep 18, 2018 at 11:01:50AM -0400, Martin K. Petersen wrote:
>> Yeah. I thought about doing what Jens does, splitting core and drivers
>> into separate branches. However, compared to block I have so few SCSI
>> core updates that I am not convinced it's worth it. Core changes only
>> amount to a couple percent of the total number of commits every release.
> 
> I did that for the SCSI tree a long time ago, and it did not work out
> at all as the few core changes are usually required by driver changes.
> 
> Note that I've not really seen the split recently in the block tree
> either, probably for the same reason.

Yeah exactly, I basically stopped doing that as the most active driver
was NVMe, and for quite a while that also helped drive core changes.
Since they went hand in hand, there wasn't much point in doing the split
branches anymore, in fact it was harmful.

I'd love to start doing it again, and I may do that, since we've now got
less feature additions that end up depending on core changes.

-- 
Jens Axboe
