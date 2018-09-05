Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 32FD01404
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:03:23 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DA4A57E7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:03:22 +0000 (UTC)
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w85Ewpgu077408 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 5 Sep 2018 11:03:22 -0400
Received: from e15.ny.us.ibm.com (e15.ny.us.ibm.com [129.33.205.205])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2magp9tbn3-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 11:03:21 -0400
Received: from localhost
	by e15.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Wed, 5 Sep 2018 11:03:20 -0400
Date: Wed, 5 Sep 2018 08:03:15 -0700
From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
To: Mark Brown <broonie@kernel.org>
Reply-To: paulmck@linux.vnet.ibm.com
References: <1536142432.8121.6.camel@HansenPartnership.com>
	<20180905113715.GJ9781@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180905113715.GJ9781@sirena.org.uk>
Message-Id: <20180905150315.GA10819@linux.vnet.ibm.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Wed, Sep 05, 2018 at 12:37:15PM +0100, Mark Brown wrote:
> On Wed, Sep 05, 2018 at 11:13:52AM +0100, James Bottomley wrote:
> 
> > The first suggestion is that kernel builds are pretty much automated
> > and we try to make every commit buildable, so could we automate the
> > machinery that allows a customer to do bisection simply by installing a
> > kernel package? (we here, obviously means the distro, but going from
> > git bisect to kernel package would be the useful link).
> 
> Improving bisectability would obviously help with other testing efforts
> too - we have existing users, Guillaume Tucker implemented automated
> bisection support in KernelCI which is incredibly useful providing one
> can actually bisect.  Right now it works pretty well a lot of the time
> but there are cases where it gets messy, especially when you add boot
> issues onto the buildability ones.

I am one of those strange people who rebase in order to improve
bisectability.  But one reason I can do that is that I have relatively
few patches, and it gets harder the more patches I am carrying.  I suppose
that someone (not me!) could rebase -stable to make it more bisectable,
but that sounds difficult, painful, and error-prone.  Could added tooling
make bisection work better?  Sounds valuable, but non-trivial.

In some of my bisection efforts, I have had to apply fix patches to
fix various unrelated bugs.  I suppose that this could be automated,
for example by tracking which fix-patches are needed at which potential
bisection points, though this sounds like a large effort.  Of course,
automated backporting of patches would make it easier, and much else
easier as well.  ;-)

							Thanx, Paul
