Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 266E78D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 10 May 2018 03:15:08 +0000 (UTC)
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0114.outbound.protection.outlook.com [104.47.41.114])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F295667F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 10 May 2018 03:15:06 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Date: Thu, 10 May 2018 03:15:04 +0000
Message-ID: <20180510031502.GF8514@sasha-vm>
References: <20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
	<20180509090346.GY13402@sirena.org.uk>
	<20180509204727.7ff38021@canb.auug.org.au>
In-Reply-To: <20180509204727.7ff38021@canb.auug.org.au>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <3F0A648CE2FCFC45A44A5B624EAB0DEE@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Greg KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 09, 2018 at 08:47:27PM +1000, Stephen Rothwell wrote:
>On Wed, 9 May 2018 18:03:46 +0900 Mark Brown <broonie@kernel.org> wrote:
>>
>> On Wed, May 09, 2018 at 10:47:57AM +0200, Daniel Vetter wrote:
>> > On Wed, May 9, 2018 at 10:44 AM, Mark Brown <broonie@kernel.org> wrote=
:
>>
>> > > I think this is an excellent idea, copying in Stephen for his input.
>> > > I'm currently on holiday but unless someone convinces me it's a terr=
ible
>> > > idea I'm willing to at least give it a go on a trial basis once I'm =
back
>> > > home.
>>
>> > Since Stephen merges all -fixes branches first, before merging all the
>> > -next branches, he already generates that as part of linux-next. All
>> > he'd need to do is push that intermediate state out to some
>> > linux-fixes branch for consumption by test bots.
>
>Good idea ... I will see what I can do.

This is very interesting! I'm curious how the statistics will look when
we'll compare patches that didn't go through this tree, patches that
spent minimal time in this tree, and patches that has spent some time
in the tree before being merged in Linus's tree.

Would this be something we would want to point actual users to, rather
than just bots? If every commit in next-fixes is essentially queued up
for Linus at some point, users might as well test out next-fixes instead
of -rc.

>> True.  It's currently only those -fixes branches that people have asked
>> him to merge separately which isn't as big a proportion of trees as have
>> them (perhaps fortunately given people's enthusiasm for fixes branches
>> that don't merge cleanly with their development branches) so we'd also
>> need to encourage people to add them separately.
>
>I currently have 44 such fixes branches.  More welcome!

I've tried looking at git for bigger subsystems, and a few branches that
would fit this description, and are not in -next are:

git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git perf/urgent
git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git sched/urgent
git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git x86/urgent
git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git timers/urgent
git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git irq/urgent
git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git core/urgent
git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git efi/urgent
git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git locking/urgent
git.kernel.dk/linux-block.git for-linus
git.kernel.org/pub/scm/linux/kernel/git/s390/linux.git fixes
git.kernel.org/pub/scm/linux/kernel/git/mszeredi/fuse.git for-linux
git.kernel.org/pub/scm/linux/kernel/git/iwlwifi/iwlwifi-fixes.git master
git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi.git fixes
git.kernel.org/pub/scm/linux/kernel/git/mellanox/linux.git queue-rc
git.kernel.org/pub/scm/linux/kernel/git/jikos/hid.git for-linus
git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git ftrace/urge=
nt

Would it make sense to ping the respective maintainers to ack the
inclusion of these branches?

There are a few other trees where the fixes branch has a name that
depends on the release, we can ask them to also create a simple fixes
branch so that next-fixes could merge it in?

git.kernel.org/pub/scm/fs/xfs/xfs-linux.git xfs-4.17-fixes
git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git for-linux-4.17-rc1
git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git v4.17/fix=
es=
