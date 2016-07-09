Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B03678D9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  9 Jul 2016 15:13:57 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B298518E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  9 Jul 2016 15:13:56 +0000 (UTC)
Message-ID: <1468058721.2557.9.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, "Rafael J. Wysocki"
	<rjw@rjwysocki.net>
In-Reply-To: <20160709004352.GK28589@dtor-ws>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net> <20160709001046.GH28589@dtor-ws>
	<91774112.AKkGksYjl6@vostro.rjw.lan> <20160709004352.GK28589@dtor-ws>
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 09 Jul 2016 19:05:21 +0900
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linux-foundation.org,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2016-07-08 at 17:43 -0700, Dmitry Torokhov wrote:
> On Sat, Jul 09, 2016 at 02:37:40AM +0200, Rafael J. Wysocki wrote:
> > I tend to think that all known bugs should be fixed, at least 
> > because once they have been fixed, no one needs to remember about 
> > them any more. :-)
> > 
> > Moreover, minor fixes don't really introduce regressions that often
> 
> Famous last words :)

Actually, beyond the humour, the idea that small fixes don't introduce
regressions must be our most annoying anti-pattern.  The reality is
that a lot of so called fixes do introduce bugs.  The way this happens
is that a lot of these "obvious" fixes go through without any deep
review (because they're obvious, right?) and the bugs noisily turn up
slightly later.  The way this works is usually that some code
rearrangement is sold as a "fix" and later turns out not to be
equivalent to the prior code ... sometimes in incredibly subtle ways. I
think we should all be paying much more than lip service to the old
adage "If it ain't broke don't fix it".

James
