Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BA08188D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 May 2018 16:38:23 +0000 (UTC)
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0112.outbound.protection.outlook.com [104.47.41.112])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 255872C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 May 2018 16:38:23 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Message-ID: <20180501163818.GD1468@sasha-vm>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <86E8C4986260EF4295B63073D067B2CB@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Greg KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Date: Tue, 01 May 2018 16:38:23 -0000

Working on AUTOSEL, it became even more obvious to me how difficult it is f=
or a
patch to get a proper review. Maintainers found it difficult to keep up wit=
h
the upstream work for their subsystem, and reviewing additional -stable pat=
ches
put even more load on them which some suggested would be more than what the=
y
can handle.

While AUTOSEL tries to understand if a patch fixes a bug, this was a bit la=
te:
the bug was already introduced, folks already have to deal with it, and the
kernel is broken. I was wondering if I can do a similar process to AUTOSEL,=
 but
teach the AI about bug-introducing patches.

When someone fixes a bug, he would describe the patch differently than he w=
ould
if he was writing a new feature. This lets AUTOSEL build on different commi=
t
message constructs, among various inputs, to recognize bug fixes. However,
people are unaware that they introduce a bug, so the commit message for bug
introducing patches is essentially the same as for commits that don't intro=
duce
a bug. This meant that I had to try and source data out of different source=
s.

Few of the parameters I ended up using are:
 - -next data (days spent in -next, changes in the patch between -next tree=
s)
 - Mailing list data (was this patch ever sent to a ML? How long before it =
was
   merged? How many replies did it get? ...)
 - Author/commiter/maintainer chain data. Just like sports, some folks are =
more
   likely to produce better results than others. This goes beyond just "ski=
ll",
but also looks at things such as whether the author patches a subsystem he'=
s
"familiar with" (=3D=3D subsystem where most of his patches usually go), or=
 is he
modifying a subsystem he never sent a patch for.
 - Patch complexity metrics - various code metrics to indicate how "complex=
" a
   patch is. Think 100 lines of whitespace fixes vs 100 lines that
significantly changes a subsystem.
 - Kernel process correctness - I tried using "violations" of the kernel
   process (patch formatting, correctness of the mailing to lkml, etc) as a=
n
indicator of how familiar the author is with the kernel, with the presumpti=
on
that folks who are newer to kernel development are more likely to introduce
bugs

Running an initial iteration on a set of commits made two things very obvio=
us
to me:

1. -rc releases suck. seriously suck. The quality of commits that went in -=
rc
cycles was much worse that merge window commit:
 - All commits had the same chance of introducing a bug whether they came i=
n a
   merge window or an -rc cycle. This means that -rc commits mostly end up
replacing obvious bugs with less obvious ones.
 - While the average merge window commit changes, on average, 3x more lines
   than an -rc commit, the chances of a bug introduced per patch is the sam=
e,
which means that bugs-per-line metric of code is much higher with -rc patch=
es.
 - A merge window commit spent 50% more days, on average, in -next than a -=
rc
   commit.
 - The number of -rc commits that never saw any mailing list or has never b=
een
   replied to on a mailing list was **way** higher than merge window commit=
s.
 - For some reason, the odds of a -rc commit to be targetted for -stable is
   over 20%, while for merge window commits it's about 3%. I can't quite
explain why that happens, but this would suggest that -rc commits end up
hurting -stable pretty badly.

2. Maintainers need to stop writing patches, commiting them, and pushing th=
em
in without reviews.  In -rc cycles there is quite a large number of commits
that were either written by maintainers, commited, and merged upstream the =
same
day. These patches are very likely to introduce a new bug.


I don't really have a proposal beyond "tighten up -rc cycles", but I think =
it's
a discussion worth having. We have enough data to show what parts of kernel
development work, and what parts are just hurting us.

I'd be happy to gather more data if someone has an idea he wants to look
into. The data used for this work is based on:

 - v4.4..v4.16 (just becuase it's as far as linux-next-history goes).
 - "bugs" are commits that were mentioned in a Fixes: tag of a later
   commit.
 - "stable commits" are commits that made it to a -stable tree.
