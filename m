Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B96D983D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 17:15:12 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A1B62236
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 17:15:11 +0000 (UTC)
Date: Thu, 28 Jul 2016 10:15:06 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Fengguang Wu <fengguang.wu@intel.com>
Message-ID: <20160728171506.GA23015@roeck-us.net>
References: <20160725190125.GS5537@wotan.suse.de>
	<20160727144114.GA2273@wfg-t540p.sh.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160727144114.GA2273@wfg-t540p.sh.intel.com>
Cc: dvyukov@google.com, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Nominating Fengguang Wu - 0-day
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 27, 2016 at 10:41:14PM +0800, Fengguang Wu wrote:
> On Mon, Jul 25, 2016 at 09:01:25PM +0200, Luis R. Rodriguez wrote:
> >
> >It surprises Fengguang Wu <fengguang.wu@intel.com> hasn't been nominated yet,
> >so I'd like to nominate him. The mechanical process should probably include in
> >the future a scrape for top Reported-by contributors.
> 
> Thanks for your appreciations, Luis!
> 
> >Fengguang's 0-day infrastructure is invaluable to day to day kernel
> >development, having him present would be great for any questions that may come
> >up.
> 
> I'd be glad to answer questions and more importantly, collect
> feedbacks on where and how to improve the 0-day infrastructure.
> 
> There are 2 major parts in 0-day: build tests and runtime tests.
> While build tests will be continuously improved, there may be a lot
> more to be desired for runtime tests, which should be my main focus
> in the coming year.
> 
For runtime test improvements: We should discuss if and how to integrate
kasan/syzkaller testing, and/or if it would make sense to set up a separate
test bed for that purpose (to avoid overloading 0day).

Thanks,
Guenter

> >Getting a statistical overview / update of impact / any major architectural
> >changes of the 0-day infrastructure would also be very useful.
> 
> Sure if there are interests.
> 
> >If maintainers
> >are not yet using 0-day it would be great to hear why. If your contributors are
> >not using 0-day (I know some of you exist) I'd like to know why you don't use it,
> >I often run into issues on linux-next which at times I have to fix, if 0-day
> >would have been used a folowup fix would not have been needed.
> 
> 0-day tries to monitor as many git trees as possible, so that fresh
> code can be tested before they land maintainer trees and linux-next.
> To achieve better early code coverage, we periodically check if there
> are new git trees showing up in git.kernel.org, in mainline git log
> or mentioned in LKML emails. And add the newly discovered ones
> unsolicited. :)
> 
> That said, it's still possible errors hit linux-next. Sometimes it may
> be due to bug in 0-day or temporarily out of service. The solution
> would be to improve 0-day system's stability and add more self-tests
> to the system. Quick feedbacks about build/boot errors missed by 0-day
> would also be highly appreciated.
> 
> Thanks,
> Fengguang
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
