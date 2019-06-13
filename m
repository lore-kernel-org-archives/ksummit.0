Return-Path: <martin.petersen@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 47E15AAE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 15:04:01 +0000 (UTC)
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E67B763D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 15:04:00 +0000 (UTC)
To: James Bottomley <James.Bottomley@HansenPartnership.com>
From: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
	<1560436507.3329.12.camel@HansenPartnership.com>
Date: Thu, 13 Jun 2019 11:03:53 -0400
In-Reply-To: <1560436507.3329.12.camel@HansenPartnership.com> (James
	Bottomley's message of "Thu, 13 Jun 2019 07:35:07 -0700")
Message-ID: <yq18su51q92.fsf@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
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


James,

> It depends: every patch you do to an old driver comes with a risk of
> breakage.  What we've found is even apparently sane patches cause
> breakage which isn't discovered until months later when someone with
> the hardware actually tests.

My pet peeve is with the constant stream of seemingly innocuous
helper-interface-of-the-week changes. Such as "Use kzfoobar() instead of
kfoobar() + memset()". And then a year later somebody decides kzfoobar()
had a subtle adverse side-effect and now we all need to switch to
kpzfoobar().

I appreciate that some of these helpers may have merit in terms of
facilitating static code checkers, etc. But other than that, I really
fail to see the value of this constant churn.

The devil is always in the details. It's almost inevitably these obvious
five-liners that cause regressions down the line.

So why do we keep doing this?

-- 
Martin K. Petersen	Oracle Linux Engineering
