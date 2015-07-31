Return-Path: <sasha.levin@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EFB6F279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:49:55 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7D2AFE9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:49:55 +0000 (UTC)
Message-ID: <55BBB53D.9020501@oracle.com>
Date: Fri, 31 Jul 2015 13:49:49 -0400
From: Sasha Levin <sasha.levin@oracle.com>
MIME-Version: 1.0
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Greg KH <greg@kroah.com>
References: <55BAE39F.9060705@oracle.com>	
	<CAErSpo52d5DEp_KuVoQXm4DsVakemDboLUysy6_vHL6+-xgRJw@mail.gmail.com>	
	<20150731165915.GA4995@roeck-us.net>
	<20150731170825.GA2721@kroah.com>
	<1438363601.2179.49.camel@HansenPartnership.com>
In-Reply-To: <1438363601.2179.49.camel@HansenPartnership.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/31/2015 01:26 PM, James Bottomley wrote:
> Other than to confuse us all over minute details, is there a reason for
> this difference to exist?  I realise right at the moment dev_dbg can be
> configured off by a variety of symbols and dev_printk(KERN_DEBUG) can't,
> conversely dev_printk doesn't pick up the location information and
> dev_dbg does, but there's no reason all that couldn't be harmonised so
> we didn't have to have arguments about which to use (and endless patches
> switching from one to the other)?

I suppose it's a good sub-topic: deciding which one of the 3.5 methods
to print debug information we should be using across the kernel and
remove the other 2.5.


Thanks,
Sasha
