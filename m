Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 47C17102A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 09:09:16 +0000 (UTC)
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D0EC4E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 09:09:15 +0000 (UTC)
Date: Fri, 14 Jun 2019 12:08:44 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Message-ID: <20190614090807.GJ1893@kadam>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
	<1560436507.3329.12.camel@HansenPartnership.com>
	<yq18su51q92.fsf@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <yq18su51q92.fsf@oracle.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
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

On Thu, Jun 13, 2019 at 11:03:53AM -0400, Martin K. Petersen wrote:
> 
> James,
> 
> > It depends: every patch you do to an old driver comes with a risk of
> > breakage.  What we've found is even apparently sane patches cause
> > breakage which isn't discovered until months later when someone with
> > the hardware actually tests.
> 
> My pet peeve is with the constant stream of seemingly innocuous
> helper-interface-of-the-week changes. Such as "Use kzfoobar() instead of
> kfoobar() + memset()". And then a year later somebody decides kzfoobar()
> had a subtle adverse side-effect and now we all need to switch to
> kpzfoobar().
> 
> I appreciate that some of these helpers may have merit in terms of
> facilitating static code checkers, etc. But other than that, I really
> fail to see the value of this constant churn.
> 
> The devil is always in the details. It's almost inevitably these obvious
> five-liners that cause regressions down the line.
> 
> So why do we keep doing this?
> 

You haven't provided any specifics so it's hard to discuss this...  The
only example I can think of are the memdup_user() conversions where
the function uses "goto out;" error handling.

out:
	kfree(ptr);
	return ret;

The problem is that in the original code if kmalloc() fails and we goto
out then kfree(NULL) is a no-op but in the new code if memdup_user()
fails "ptr" is an error pointer and kfree(ERR_PTR(-EFAULT)) is an Oops.

As a reviewer, any time I see a "goto out;" that raises a red flag for
me because this style of error handling tends to be more buggy.  Choose
a better label name and don't free stuff that wasn't allocated.

The good news is that static analysis will find these bugs so it's
probably been a couple years since one of these have made it to a
released kernel.

regards,
dan carpenter
