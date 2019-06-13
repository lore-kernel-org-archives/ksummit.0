Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F3662CB0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 15:27:38 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 971E563D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 15:27:38 +0000 (UTC)
Message-ID: <1560439655.3329.22.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Bart Van Assche <bvanassche@acm.org>, "Martin K. Petersen"
	<martin.petersen@oracle.com>
Date: Thu, 13 Jun 2019 08:27:35 -0700
In-Reply-To: <3418df99-ff2b-9a9f-7702-1e272d1cb783@acm.org>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
	<1560436507.3329.12.camel@HansenPartnership.com>
	<yq18su51q92.fsf@oracle.com>
	<3418df99-ff2b-9a9f-7702-1e272d1cb783@acm.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Thu, 2019-06-13 at 08:21 -0700, Bart Van Assche wrote:
> On 6/13/19 8:03 AM, Martin K. Petersen wrote:
> > 
> > James,
> > 
> > > It depends: every patch you do to an old driver comes with a risk
> > > of breakage.  What we've found is even apparently sane patches
> > > cause breakage which isn't discovered until months later when
> > > someone with the hardware actually tests.
> > 
> > My pet peeve is with the constant stream of seemingly innocuous
> > helper-interface-of-the-week changes. Such as "Use kzfoobar()
> > instead of kfoobar() + memset()". And then a year later somebody
> > decides kzfoobar() had a subtle adverse side-effect and now we all
> > need to switch to kpzfoobar().
> > 
> > I appreciate that some of these helpers may have merit in terms of
> > facilitating static code checkers, etc. But other than that, I
> > really fail to see the value of this constant churn.
> > 
> > The devil is always in the details. It's almost inevitably these
> > obvious five-liners that cause regressions down the line.
> > 
> > So why do we keep doing this?
> 
> How about discussing at the kernel summit whether or not patches
> that have not been tested on actual hardware should be ignored?

Might be a bit harsh, but perhaps "must be tested on hardware or
provably not change the binary or be part of a treewide update" might
be a reasonable rule to shoot for.  However, this would
disproportionately affect the security and coccinelle people because
they do one patch at a time stuff for which they definitely don't have
hardware, so for maintained drivers they could submit to the maintainer
for update and testing, but we'd be disallowing their changes for
unmaintained drivers.

James
