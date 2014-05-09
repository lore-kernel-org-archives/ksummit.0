Return-Path: <Paul.Gortmaker@windriver.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 03F04ADD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 16:45:36 +0000 (UTC)
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 689CE20362
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 16:45:35 +0000 (UTC)
Message-ID: <536D064C.3050308@windriver.com>
Date: Fri, 9 May 2014 12:46:04 -0400
From: Paul Gortmaker <paul.gortmaker@windriver.com>
MIME-Version: 1.0
To: <paulmck@linux.vnet.ibm.com>, Josh Triplett <josh@joshtriplett.org>
References: <20140502165658.GA1962@jtriplet-mobl1>
	<20140508001624.GA21038@linux.vnet.ibm.com>
In-Reply-To: <20140508001624.GA21038@linux.vnet.ibm.com>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Nominations for Kernel Summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 14-05-07 08:16 PM, Paul E. McKenney wrote:
> On Fri, May 02, 2014 at 09:56:59AM -0700, Josh Triplett wrote:
>> I'd like to nominate the following people:
>>
>> - Tom Zanussi <tom.zanussi@linux.intel.com> - doing extensive work on
>>   shrinking the kernel and embedded userspace to fit in shockingly tiny
>>   spaces.
>> - Julia Lawall <julia.lawall@lip6.fr> - maintainer of cocinelle, the
>>   semantic patch tool, which has collectively saved an incredible amount
>>   of kernel maintainer time and effort.
>> - Andi Kleen <ak@linux.intel.com> - working on LTO and many other kernel
>>   projects.
>>
>> I'd also like to nominate myself; in addition to the kernel tinification
>> topic I've already proposed, I plan to coordinate RCU topics with Paul
>> McKenney.
> 
> Sounds very good!  The RCU topics that occur to me immediately include:
> 
> o	How do we tell compilers about RCU's memory-ordering requirements?
> 	Follow up to http://lwn.net/Articles/586838/ and
> 	https://lwn.net/Articles/588300/.  This could potentially
> 	converge before August, but the odds do not look all that
> 	favorable.  Might be an interesting discussion of the
> 	interaction between the kernel and compiler, though perhaps
> 	in the Chinese sense.  ;-)
> 
> o	What use cases are not supported well, and what should we be
> 	doing to better support them, in RCU or otherwise?  Without
> 	some reasonably controversial proposals, this aspect seems
> 	unlikely to be LKS material.
> 
> o	Can we do a better job of automatically catching RCU usage
> 	bugs?  Or, for that matter, RCU bugs!
> 
> Other thoughts for topics?

It seems, from a user's perspective, that an RCU stall is one
the most user unfriendly things to be on the receiving end of.
Since it trips an NMI to backtrace each core, on a larger system
a person is faced with screens and screens of (mostly irrelevant)
backtrace.  I'm not sure what to suggest to improve things, and
maybe there really isn't anything that can be done, but IMHO it
might be worth discussing...

Paul.
--


> 
> 							Thanx, Paul
> 
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
