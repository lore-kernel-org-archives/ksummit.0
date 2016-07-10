Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 64C749C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 10 Jul 2016 01:34:13 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B99151BC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 10 Jul 2016 01:34:12 +0000 (UTC)
Message-ID: <1468114447.2333.12.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Trond Myklebust <trondmy@primarydata.com>
Date: Sun, 10 Jul 2016 10:34:07 +0900
In-Reply-To: <0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net> <20160709001046.GH28589@dtor-ws>
	<91774112.AKkGksYjl6@vostro.rjw.lan> <20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
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

[duplicate ksummit-discuss@ cc removed]
On Sat, 2016-07-09 at 15:49 +0000, Trond Myklebust wrote:
> > On Jul 9, 2016, at 06:05, James Bottomley <
> > James.Bottomley@HansenPartnership.com> wrote:
> > 
> > On Fri, 2016-07-08 at 17:43 -0700, Dmitry Torokhov wrote:
> > > On Sat, Jul 09, 2016 at 02:37:40AM +0200, Rafael J. Wysocki
> > > wrote:
> > > > I tend to think that all known bugs should be fixed, at least 
> > > > because once they have been fixed, no one needs to remember 
> > > > about them any more. :-)
> > > > 
> > > > Moreover, minor fixes don't really introduce regressions that
> > > > often
> > > 
> > > Famous last words :)
> > 
> > Actually, beyond the humour, the idea that small fixes don't 
> > introduce regressions must be our most annoying anti-pattern.  The 
> > reality is that a lot of so called fixes do introduce bugs.  The 
> > way this happens is that a lot of these "obvious" fixes go through 
> > without any deep review (because they're obvious, right?) and the 
> > bugs noisily turn up slightly later.  The way this works is usually 
> > that some code rearrangement is sold as a "fix" and later turns out 
> > not to be equivalent to the prior code ... sometimes in incredibly 
> > subtle ways. I think we should all be paying much more than lip 
> > service to the old adage "If it ain't broke don't fix it”.
> 
> The main problem with the stable kernel model right now is that we
> have no set of regression tests to apply. Unless someone goes in and
> actually tests each and every stable kernel affected by that “Cc:
> stable” line, then regressions will eventually happen.
> 
> So do we want to have another round of “how do we regression test the
> kernel” talks?

If I look back on our problems, they were all in device drivers, so
generic regression testing wouldn't have picked them up, in fact most
would need specific testing on the actual problem device.  So, I don't
really think testing is the issue, I think it's that we commit way too
many "obvious" patches.  In SCSI we try to gate it by having a
mandatory Reviewed-by: tag before something gets in, but really perhaps
we should insist on Tested-by: as well ... that way there's some
guarantee that the actual device being modified has been tested.

James
