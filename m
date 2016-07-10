Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 284901BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 10 Jul 2016 01:56:16 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7A568116
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 10 Jul 2016 01:56:15 +0000 (UTC)
Message-ID: <1468115770.2333.15.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Trond Myklebust <trondmy@primarydata.com>
Date: Sun, 10 Jul 2016 10:56:10 +0900
In-Reply-To: <A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net> <20160709001046.GH28589@dtor-ws>
	<91774112.AKkGksYjl6@vostro.rjw.lan> <20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, 2016-07-10 at 01:43 +0000, Trond Myklebust wrote:
> > On Jul 9, 2016, at 21:34, James Bottomley <
> > James.Bottomley@HansenPartnership.com> wrote:
> > 
> > [duplicate ksummit-discuss@ cc removed]
> > On Sat, 2016-07-09 at 15:49 +0000, Trond Myklebust wrote:
> > > > On Jul 9, 2016, at 06:05, James Bottomley <
> > > > James.Bottomley@HansenPartnership.com> wrote:
> > > > 
> > > > On Fri, 2016-07-08 at 17:43 -0700, Dmitry Torokhov wrote:
> > > > > On Sat, Jul 09, 2016 at 02:37:40AM +0200, Rafael J. Wysocki
> > > > > wrote:
> > > > > > I tend to think that all known bugs should be fixed, at
> > > > > > least 
> > > > > > because once they have been fixed, no one needs to remember
> > > > > > about them any more. :-)
> > > > > > 
> > > > > > Moreover, minor fixes don't really introduce regressions
> > > > > > that
> > > > > > often
> > > > > 
> > > > > Famous last words :)
> > > > 
> > > > Actually, beyond the humour, the idea that small fixes don't 
> > > > introduce regressions must be our most annoying anti-pattern. 
> > > >  The 
> > > > reality is that a lot of so called fixes do introduce bugs. 
> > > >  The 
> > > > way this happens is that a lot of these "obvious" fixes go
> > > > through 
> > > > without any deep review (because they're obvious, right?) and
> > > > the 
> > > > bugs noisily turn up slightly later.  The way this works is
> > > > usually 
> > > > that some code rearrangement is sold as a "fix" and later turns
> > > > out 
> > > > not to be equivalent to the prior code ... sometimes in
> > > > incredibly 
> > > > subtle ways. I think we should all be paying much more than lip
> > > > service to the old adage "If it ain't broke don't fix it”.
> > > 
> > > The main problem with the stable kernel model right now is that
> > > we
> > > have no set of regression tests to apply. Unless someone goes in
> > > and
> > > actually tests each and every stable kernel affected by that “Cc:
> > > stable” line, then regressions will eventually happen.
> > > 
> > > So do we want to have another round of “how do we regression test
> > > the
> > > kernel” talks?
> > 
> > If I look back on our problems, they were all in device drivers, so
> > generic regression testing wouldn't have picked them up, in fact
> > most
> > would need specific testing on the actual problem device.  So, I
> > don't
> > really think testing is the issue, I think it's that we commit way
> > too
> > many "obvious" patches.  In SCSI we try to gate it by having a
> > mandatory Reviewed-by: tag before something gets in, but really
> > perhaps
> > we should insist on Tested-by: as well ... that way there's some
> > guarantee that the actual device being modified has been tested.
> 
> That guarantees that it has been tested on the head of the kernel
> tree, but it doesn’t really tell you much about the behaviour when it
> hits the stable trees.

The majority of stable regressions are actually patches with subtle
failures even in the head, so testing on the head properly would have
eliminated them.  I grant there are some problems where the backport
itself is flawed but the head works (usually because of missing
intermediate stuff) but perhaps by insisting on a Tested-by: before
backporting, we can at least eliminate a significant fraction of
regressions.

>  What I’m saying is that we really want some form of unit testing
> that can be run to perform a minimal validation of the patch when it
> hits the older tree.
> 
> Even device drivers have expected outputs for a given input that can
> be validated through unit testing.

Without the actual hardware, this is difficult ...

James

> Cheers
>   Trond
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
