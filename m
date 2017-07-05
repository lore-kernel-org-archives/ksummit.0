Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4C7CAB6A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 15:36:58 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9DEFA171
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 15:36:57 +0000 (UTC)
Message-ID: <1499269015.3668.25.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Steven Rostedt <rostedt@goodmis.org>, Guenter Roeck <linux@roeck-us.net>
Date: Wed, 05 Jul 2017 08:36:55 -0700
In-Reply-To: <20170705112707.54d7f345@gandalf.local.home>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<a462fb3b-a6d4-e969-b301-b404981de224@roeck-us.net>
	<20170705112707.54d7f345@gandalf.local.home>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Carlos O'Donell <carlos@redhat.com>, linux-api@vger.kernel.org,
	Shuah Khan <shuahkh@osg.samsung.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Thorsten Leemhuis <linux@leemhuis.info>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] & [TECH TOPIC] Improve
 regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2017-07-05 at 11:27 -0400, Steven Rostedt wrote:
> On Wed, 5 Jul 2017 08:16:33 -0700
> Guenter Roeck <linux@roeck-us.net> wrote:
> 
> > 
> > The reproducers for several of the usb fixes I submitted recently
> > took hours of stress test to reproduce the underlying problems. I
> > have one more to fix which takes days to reproduce, if at all (I
> > have seen that problem only two or three times during weeks of
> > stress test). Due to the nature of the problems, reproducing
> > them heavily depended on the underlying hardware. None of the
> > reproducers can guarantee that the problem is fixed; they are
> > intended to show the problem, not that it is fixed. This happens a
> > lot with race conditions - in many cases it is impossible to prove
> > that the problem is fixed; one can only prove that it still exists.
> > 
> > Echoing what you said, I have no idea how it would even be possible
> > to write unit tests to verify if the problems I fixed are really
> > fixed.
> > 
> > Several of the fixes I have submitted are based on single-instance
> > error logs with no reproducer. Many others are compile time fixes
> > or fix problems found with code inspection (manual or automatic).
> > 
> > If we start shaming people for not providing unit tests, all we'll
> > accomplish is that people will stop providing bug fixes.
> 
> I need to be clearer on this. What I meant was, if there's a bug
> where someone has a test that easily reproduces the bug, then if
> there's not a test added to selftests for said bug, then we should
> shame those into doing so.
> 
> A bug that is found by inspection or hard to reproduce test cases are
> not applicable, as they don't have tests that can show a regression.
> 
> And I'm betting that those bugs are NOT REGRESSIONS! Most likely are
> bugs that always existed, but because of the unpredictable hitting of
> the bug (as you said, it required hours of stress tests to
> reproduce), the bug was not previously hit during development. That's
> not a regression, that's a feature.
> 
> Are we tracking regressions or just simply bugs?

A lot of device driver regressions are bugs that previously existed in
the code but which didn't manifest until something else happened.  A
huge number of locking and timing issues are like this.  The irony is
that a lot of them go from race always being won (so bug never noticed)
to race being lost often enough to make something unusable.  To a user
that ends up being a kernel regression because it's a bug in the
current kernel which they didn't see previously which makes it unusable
for them.

I've got to vote with my users here: that's a regression not a
"feature".

James
