Return-Path: <fengguang.wu@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E979492B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 13:20:53 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6075C1E7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 13:20:53 +0000 (UTC)
Date: Thu, 28 Jul 2016 21:20:49 +0800
From: Fengguang Wu <fengguang.wu@intel.com>
To: Vinod Koul <vinod.koul@intel.com>
Message-ID: <20160728132049.GA30540@wfg-t540p.sh.intel.com>
References: <20160725190125.GS5537@wotan.suse.de>
	<20160725202343.GJ11405@piout.net>
	<20160726031007.GH9681@localhost> <1781582.RPTOZ0rvdq@avalon>
	<20160726085646.GQ9681@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20160726085646.GQ9681@localhost>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Nominating Fengguang Wu - 0-day
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 26, 2016 at 02:26:46PM +0530, Vinod Koul wrote:
>On Tue, Jul 26, 2016 at 11:16:40AM +0300, Laurent Pinchart wrote:
>> Hello,
>>
>> On Tuesday 26 Jul 2016 08:40:07 Vinod Koul wrote:
>> > On Mon, Jul 25, 2016 at 10:23:43PM +0200, Alexandre Belloni wrote:
>> > > On 25/07/2016 at 21:01:25 +0200, Luis R. Rodriguez wrote :
>> > >> It surprises Fengguang Wu <fengguang.wu@intel.com> hasn't been nominated
>> > >> yet, so I'd like to nominate him. The mechanical process should
>> > >> probably include in the future a scrape for top Reported-by
>> > >> contributors.
>> > >
>> > > That's a good point.
>> > >
>> > >> Fengguang's 0-day infrastructure is invaluable to day to day kernel
>> > >> development, having him present would be great for any questions that
>> > >> may come up. Getting a statistical overview / update of impact / any
>> > >> major architectural changes of the 0-day infrastructure would also be
>> > >> very useful. If maintainers are not yet using 0-day it would be great
>> > >> to hear why. If your contributors are not using 0-day (I know some of
>> > >> you exist) I'd like to know why you don't use it, I often run into
>> > >> issues on linux-next which at times I have to fix, if 0-day would have
>> > >> been used a folowup fix would not have been needed.
>> >
>> > I am using it a lot :)
>> >
>> > > Well, I think it would also help to know how the patch/git tree
>> > > selection is done. Lately, I've been receiving less reports from 0-day
>> > > and some issues were found by Arnd's autobuilders after hitting
>> > > linux-next. I used to get report of compilation breakage 10-15 minutes
>> > > after the patch submission.
>>
>> I second that. 0-day is an amazing tool, but relying on it requires developers
>> to trust that the tool will perform its job as expected. A proper
>> understanding of the logic behind patch/git tree selection would be very
>> valuable, as well as how the build bot handles its 500+ kernel configurations.
>
>Agreed, although in his report he does mention the tree used, but would be
>great if the logic is Documented somewhere.

Yeah, sorry the Documentation could be improved.

The 600+ git trees 0-day monitors are tracked here:

https://git.kernel.org/cgit/linux/kernel/git/wfg/lkp-tests.git/tree/repo/linux

Thanks,
Fengguang
