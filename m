Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 15ABBB68
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 14:37:26 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A907EE3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 14:37:25 +0000 (UTC)
Date: Fri, 10 Jul 2015 17:36:41 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Darren Hart <dvhart@infradead.org>
Message-ID: <20150710143641.GW4341@mwanda>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150709193718.GD9169@vmdeb7>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 09, 2015 at 12:37:18PM -0700, Darren Hart wrote:
> I spend a highly disproportionate amount of my time, relative to measurable
> quality impact to the kernel, going over the nuances of submitting patches.
> 
> 1) Must have a complete commit message
> 2) DCO goes above the ---
> 3) Include a patch changelog, do so below ---
> 4) Cc maintainers :-)
> 5) Checkpatch... checkpatch... checkpatch...
> 6) Compiler warnings
> 7) CodingStyle :-)
> 8) Use ascii or utf8 character encodings
> 

The same people who don't run checkpatch.pl will also not opt in to your
QC system.

You should create a procmail filter to processes patches.  If the patch
fails then it changes the subject from [patch] to [fail] and stores a
response (compile warnings etc) in a directory.  Then you trigger a
macro in mutt and it mails the response.

Or you could just create a generic form letter like Greg does.

regards,
dan carpenter
