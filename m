Return-Path: <alex.shi@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B47086C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Sep 2016 06:58:26 +0000 (UTC)
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 510E712C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Sep 2016 06:58:26 +0000 (UTC)
Received: by mail-pa0-f48.google.com with SMTP id hm5so15387680pac.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Sep 2016 23:58:26 -0700 (PDT)
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <57C78BE9.30009@linaro.org> <20160902191637.GC6323@sasha-lappy>
	<20160903000518.GN3950@sirena.org.uk> <1656524.OIRTMDr3jV@avalon>
From: Alex Shi <alex.shi@linaro.org>
Message-ID: <57E22F8E.1040801@linaro.org>
Date: Wed, 21 Sep 2016 14:58:22 +0800
MIME-Version: 1.0
In-Reply-To: <1656524.OIRTMDr3jV@avalon>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 09/05/2016 05:28 PM, Laurent Pinchart wrote:
>>> Same as I said before, the risk LSK introduces, IMO, is much greater than
>>> > > rebasing and out-of-tree driver stack.

During the 3 years LSK work, I did get few bug report on LSK by users.
But they are some track bugs in common LTS. None of them in backporting
part.

>> > 
>> > I'm afraid you're very much mistaken if you believe that people are only
>> > working on leaf drivers, or that nothing we do upstream has a meaningful
>> > impact at the system level.
> To provide a real-life example, we recently ran into a scheduler issue in a 
> project I'm working on. The device is a phone running a Qualcomm kernel, and 
> the scheduler is so hacked by the vendor to cover the phone use cases that 
> creating a spinning high priority SCHED_FIFO thread in userspace kills the 
> system instantly. That's the kind of crap vendors tend to ship, and moving to 
> a newer kernel version pretty much means they have no revalidate all the 
> scheduler-related use cases (and add more awful hacks to "fix issues 
> introduced in mainline").

I am not a fun of some scheduler solution. But focus on this can not
explain why many distributions are using 'old' stable kernel. Looking
into product world, could you find some real product are using
'upstream' kernel?

'upstream first' is good for feature development, but isn't good for
product. Many product guys talked to me that the non-upstream porting
didn't cost much and not the reason to pin on some stable kernel. All of
them said that testing and stability was the most cost part. Not only
the regular test case, benchmarks, but also the long time using for some
trick/corner case bugs in whole system.

I doubt the 'keep rebasing on upstream' guys have been really worked on
product?
