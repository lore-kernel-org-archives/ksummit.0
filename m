Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2D858910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 23:47:30 +0000 (UTC)
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 84F052033D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 23:47:29 +0000 (UTC)
Received: by mail-ve0-f181.google.com with SMTP id pa12so13444829veb.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 16:47:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.00.1405290127010.17241@pobox.suse.cz>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140525222923.GW15585@mwanda> <1401119598.3303.6.camel@dabdike>
	<alpine.LNX.2.00.1405271634080.28869@pobox.suse.cz>
	<1401224020.14454.92.camel@dabdike>
	<alpine.LNX.2.00.1405272316000.17241@pobox.suse.cz>
	<yq1zji2hif7.fsf@sermon.lab.mkp.net>
	<CAPcyv4jOzqu8g2gEhAf2tdNY0P=D-p6L8kz_zX9WgqPh-d8C_w@mail.gmail.com>
	<alpine.LNX.2.00.1405290127010.17241@pobox.suse.cz>
Date: Wed, 28 May 2014 16:47:28 -0700
Message-ID: <CAPcyv4h1cWP4NArSqN6ZB8scN89_DtRt88oG7KdXyY7peEwoJw@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
To: Jiri Kosina <jkosina@suse.cz>
Content-Type: text/plain; charset=UTF-8
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

On Wed, May 28, 2014 at 4:32 PM, Jiri Kosina <jkosina@suse.cz> wrote:
> On Wed, 28 May 2014, Dan Williams wrote:
>
>> Isn't the fundamental problem:
>>
>> HW Vendor: "Are you saying you may hold up driver updates for an
>> indefinite period of time?"
>>
>> Kernel community: "Yes"
>>
>> HW Vendor: "Ok, we'll keep sending our official updates direct to
>> customers as an out-of-tree tarball and let that 'upstream-thing'
>> happen in the background."
>
> This puts customers into an unfortunate position, as their OS vendor is
> not going to support them with some "random" version of the driver being
> linked into OS vendor's kernel. Hence I would expect the customers to
> start asking HW vendor questions (especially if OS vendor is able to
> explain the situation to the customer properly).
>

I've been on both sides of the producer/consumer coin.  For
environments that roll their own kernel upstream acceptance is
preferred, but not necessarily required.  Also, for the enterprise
storage driver I worked on its dependency on core libraries turned out
to be a liability.  OS vendors sometimes have a different update
cadences for common components vs standalone drivers.  Customers are
caught in the gap and exert pressure, to whomever will listen, to get
their hardware to "just work (TM)".
