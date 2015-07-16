Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C1A88ACC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 18:14:40 +0000 (UTC)
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4170C147
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 18:14:40 +0000 (UTC)
Received: by obbop1 with SMTP id op1so51961867obb.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 11:14:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150715160347.GB12543@kroah.com>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<20150713185118.GK11162@sirena.org.uk>
	<CAOesGMhFNjK2V23ZRN=KOfsYc=JawLwWf_x7wvHzBjP0UpbW7A@mail.gmail.com>
	<20150715160347.GB12543@kroah.com>
Date: Thu, 16 Jul 2015 11:14:39 -0700
Message-ID: <CAOesGMi4RHpEwZ=rFtO+ML74k0ks8hivSBT1pa=OwQqRUB=JDQ@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset=UTF-8
Cc: Sasha Levin <sasha.levin@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 15, 2015 at 9:03 AM, Greg KH <greg@kroah.com> wrote:
> On Wed, Jul 15, 2015 at 10:52:13AM -0400, Olof Johansson wrote:
>> On Mon, Jul 13, 2015 at 2:51 PM, Mark Brown <broonie@kernel.org> wrote:
>> > On Mon, Jul 13, 2015 at 02:21:32PM -0400, Steven Rostedt wrote:
>> >
>> >> I disagree. I thought next was a place to have integration of new
>> >> development, and not just a place to test. Really, how many people test
>> >> next compared to Linus's tree? I trip over bugs all the times in
>> >> Linus's tree that's been in -next for almost a whole release cycle.
>> >
>> >> The only bugs that I find that come from -next is integration issues,
>> >> where an interface changes and another subsystem stumbles over it.
>> >> That's exactly what it was for and what it's good at.
>> >
>> > In the embedded space it's much more common to track -next as people are
>> > often working with multiple subsystems so the integration is important.
>> > Most of my code is developed against -next then moved to topic branches
>> > for submission.
>> >
>> > We also catch quite a lot of issues in -next as a result of the work on
>> > boot testing that kernelci.org and Olof's bots are doing, hopefully
>> > that'll start to build out to include test suites like kselftest (I know
>> > there's work in progress there but no ETA as of yet).  Things get
>> > exposed to a lot more systems and configurations than individual
>> > maintainers have access to which can shake out issues in code that deals
>> > with hardware.
>>
>> I've stopped running -stable releases through the tester. It didn't
>> fit the way I kept track of what's been built very well and it was
>> hard to capture a useful state in which to test.
>>
>> For a while I tried to capture the current-state-of-the-queue from
>> gregkh's public quilt series ever so often, but it's quite churny.
>> There's an -rc that's posted for review but not tagged and not
>> provided as a git branch of applied patches, so it's hard to
>> automatically test just those.
>>
>> That would be the ideal setup for me though -- tagged or branched -rc
>> candidates of stable releases that I'd be happy to put through the
>> build/boot test at my end.
>
> kernelci now handles -rc stable releases, so would this just be a
> duplication of that work?

Great, then I won't waste my time on it.


-Olof
