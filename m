Return-Path: <dan.j.williams@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 83AA248E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 23:13:59 +0000 (UTC)
Received: from mail-qc0-f182.google.com (mail-qc0-f182.google.com
	[209.85.216.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F29E91FAA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 23:13:58 +0000 (UTC)
Received: by mail-qc0-f182.google.com with SMTP id e16so3069640qcx.27
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 16:13:58 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 15 May 2014 16:13:58 -0700
Message-ID: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
From: Dan Williams <dan.j.williams@gmail.com>
To: ksummit-discuss@lists.linuxfoundation.org
Content-Type: text/plain; charset=UTF-8
Cc: Dan J Williams <dan.j.williams@intel.com>
Subject: [Ksummit-discuss] [CORE TOPIC] [nomination] Move Fast and Oops
	Things
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

What would it take and would we even consider moving 2x faster than we
are now?  A cursory glance at Facebook's development statistics [1]
shows them handling more developers, more commits, and a higher rate
of code growth than kernel.org [2].  As mentioned in their development
process presentation, "tools" and "culture" enable such a pace of
development without the project flying apart.  Assuming the response
to the initial question is not "we're moving fast enough, thank you
very much, go away", what would help us move faster?  I submit that
there are three topics in this space that have aspects which can only
be productively discussed in a forum like kernel summit:

1/ Merge Karma: Collect patch review and velocity data for a
maintainer to answer questions like "am I pushing too much risk
upstream?", "from cycle to cycle am I maintaining a consistent
velocity?", "should I modulate the scope of the review feedback I
trust?".  I think where proposals like this have fallen over in the
past was with the thought that this data could be used as a weapon by
toxic contributors, or used to injure someone's reputation.  Instead
this would be collected consistently (individually?), for private use
and shared in a limited fashion at forums like kernel summit to have
data to drive "how are we doing as a community?" discussions.

2/ Gatekeeper: Saying "no" is how we as a kernel community mitigate
risk and it is healthy for us to say "no" early and often.  However,
the only real dimension we currently have to say "no" is "no, I won't
merge your code".  The staging-tree opened up a way to give a
qualified "no" by allowing new drivers a sandbox to get in shape for
moving into the kernel-tree-proper while still being available to end
users.  The idea with a Facebook-inspired Gatekeeper system is to have
another way to say "no" while still merging code.  Consider a facility
more fine-grained than the recently deprecated CONFIG_EXPERIMENTAL,
and add run-time modification capability.  Similar to loading a
staging driver, overriding a Gatkeeper-variable (i.e. where a
maintainer has explicitly said "no") taints the kernel.  This then
becomes a tool for those situations where there is value / need in
distributing the code, while still saying "no" to its acceptability in
its current state.

3/ LKP and Testing:  If there was a generic way for tools like LKP to
discover and run per-subsystem / driver unit tests I am fairly
confident LKP would already be sending the community test results. LKP
is the closest we have to Facebook-Perflab (automated regression
testing environment), and it's one of the best tools we have for
moving development faster without increasing risk in the code we
deliver.  Has the time come for a coordinated unit-test culture in
Linux kernel development?

This topic proposal is a self-nomination (dan.j.williams@intel.com)
for attending Kernel Summit, and I also nominate Fengguang Wu
(fengguang.wu@intel.com) to participate in any discussions that
involve LKP.

[1]: http://www.infoq.com/presentations/Facebook-Release-Process
[2]: http://www.linuxfoundation.org/publications/linux-foundation/who-writes-linux-2013
