Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B6CA785D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 23:32:27 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 04D22201AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 23:32:21 +0000 (UTC)
Date: Thu, 29 May 2014 01:32:18 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: Dan Williams <dan.j.williams@intel.com>
In-Reply-To: <CAPcyv4jOzqu8g2gEhAf2tdNY0P=D-p6L8kz_zX9WgqPh-d8C_w@mail.gmail.com>
Message-ID: <alpine.LNX.2.00.1405290127010.17241@pobox.suse.cz>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140525222923.GW15585@mwanda> <1401119598.3303.6.camel@dabdike>
	<alpine.LNX.2.00.1405271634080.28869@pobox.suse.cz>
	<1401224020.14454.92.camel@dabdike>
	<alpine.LNX.2.00.1405272316000.17241@pobox.suse.cz>
	<yq1zji2hif7.fsf@sermon.lab.mkp.net>
	<CAPcyv4jOzqu8g2gEhAf2tdNY0P=D-p6L8kz_zX9WgqPh-d8C_w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Wed, 28 May 2014, Dan Williams wrote:

> Isn't the fundamental problem:
> 
> HW Vendor: "Are you saying you may hold up driver updates for an
> indefinite period of time?"
> 
> Kernel community: "Yes"
> 
> HW Vendor: "Ok, we'll keep sending our official updates direct to
> customers as an out-of-tree tarball and let that 'upstream-thing'
> happen in the background."

This puts customers into an unfortunate position, as their OS vendor is 
not going to support them with some "random" version of the driver being 
linked into OS vendor's kernel. Hence I would expect the customers to 
start asking HW vendor questions (especially if OS vendor is able to 
explain the situation to the customer properly).

-- 
Jiri Kosina
SUSE Labs
