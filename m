Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E1421A89
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 14:10:13 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id A9A9E2030F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 14:10:11 +0000 (UTC)
Message-ID: <1401977409.2207.7.camel@dabdike.int.hansenpartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 05 Jun 2014 07:10:09 -0700
In-Reply-To: <CAMuHMdVG+vinqgLgNCgNqNUpSb4RDWFMJ=UsAL0+2RbXnjefig@mail.gmail.com>
References: <537F3551.2070104@hitachi.com> <20140528153702.GU23991@suse.de>
	<20140528185748.GA30673@kroah.com>
	<CACRpkdbcgADHq1g3Ys9U5i69nPdrRX-C2u61qUgQ_NfS2bE4CQ@mail.gmail.com>
	<20140605002331.GB24037@kroah.com> <20140605065455.GM10819@suse.de>
	<CAMuHMdVG+vinqgLgNCgNqNUpSb4RDWFMJ=UsAL0+2RbXnjefig@mail.gmail.com>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: chrubis@suse.cz, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2014-06-05 at 10:30 +0200, Geert Uytterhoeven wrote:
> On Thu, Jun 5, 2014 at 8:54 AM, Mel Gorman <mgorman@suse.de> wrote:
> > There is a hazard that someone bisecting the tree would need to be careful
> > to not bisect LTP instead.
> 
> That may actually be a good reason not to import LTP...
> I'd imagine you usually want to bisect the kernel to find when a regression
> was introduced in the syscall API.

I agree with this.  One of the things we might like to ask to be fixed
about bisect is the ability to exclude paths.  You can do a git bisect
with every top level directory except test, but it's a bit cumbersome.

> Is there a reason not to run the latest version of LTP (unless bisecting
> LTP ;-)? The syscall API is supposed to be stable.

I think not, and we have strong reasons for wanting to run the latest
LTP against every kernel (including stable ones), not just the version
in the test directory, so in practise, it looks like this doesn't meet
the changes with the kernel test for inclusion.  On the other hand,
having the tests available is also useful.   Perhaps we just need a
tests repo which pulls from all our other disparate tests so there's one
location everyone knows to go for the latest?

James
