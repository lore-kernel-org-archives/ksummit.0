Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8484682D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Jun 2014 09:17:47 +0000 (UTC)
Received: from mail7.hitachi.co.jp (mail7.hitachi.co.jp [133.145.228.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id CB74E1F952
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Jun 2014 09:17:45 +0000 (UTC)
Received: from mlsv3.hitachi.co.jp (unknown [133.144.234.166])
	by mail7.hitachi.co.jp (Postfix) with ESMTP id 88A8F37AC2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Jun 2014 18:17:45 +0900 (JST)
Received: from vshuts01.hitachi.co.jp (vshuts01.hitachi.co.jp [10.201.6.83])
	by mfilter03.hitachi.co.jp (Switch-3.3.4/Switch-3.3.4) with ESMTP id
	s569HaVn003472 for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 6 Jun 2014 18:17:45 +0900
Message-ID: <53918734.1060102@hitachi.com>
Date: Fri, 06 Jun 2014 18:17:40 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
References: <537F3551.2070104@hitachi.com> <20140528153702.GU23991@suse.de>
	<20140528185748.GA30673@kroah.com>
	<CACRpkdbcgADHq1g3Ys9U5i69nPdrRX-C2u61qUgQ_NfS2bE4CQ@mail.gmail.com>
	<20140605002331.GB24037@kroah.com> <20140605065455.GM10819@suse.de>
	<CAMuHMdVG+vinqgLgNCgNqNUpSb4RDWFMJ=UsAL0+2RbXnjefig@mail.gmail.com>
	<1401977409.2207.7.camel@dabdike.int.hansenpartnership.com>
In-Reply-To: <1401977409.2207.7.camel@dabdike.int.hansenpartnership.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

(2014/06/05 23:10), James Bottomley wrote:
> On Thu, 2014-06-05 at 10:30 +0200, Geert Uytterhoeven wrote:
>> On Thu, Jun 5, 2014 at 8:54 AM, Mel Gorman <mgorman@suse.de> wrote:
>>> There is a hazard that someone bisecting the tree would need to be careful
>>> to not bisect LTP instead.
>>
>> That may actually be a good reason not to import LTP...
>> I'd imagine you usually want to bisect the kernel to find when a regression
>> was introduced in the syscall API.
> 
> I agree with this.  One of the things we might like to ask to be fixed
> about bisect is the ability to exclude paths.  You can do a git bisect
> with every top level directory except test, but it's a bit cumbersome.
> 
>> Is there a reason not to run the latest version of LTP (unless bisecting
>> LTP ;-)? The syscall API is supposed to be stable.
> 
> I think not, and we have strong reasons for wanting to run the latest
> LTP against every kernel (including stable ones), not just the version
> in the test directory, so in practise, it looks like this doesn't meet
> the changes with the kernel test for inclusion.  On the other hand,
> having the tests available is also useful.   Perhaps we just need a
> tests repo which pulls from all our other disparate tests so there's one
> location everyone knows to go for the latest?

I agree. I guess that may be a script of chef or something like, which
pulls tests from other repos and build it. But in that case, why can't we
put it in the kernel tree itself?

Thank you,

-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
