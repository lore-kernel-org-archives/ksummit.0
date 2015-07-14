Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 23F989FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 20:17:34 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id A6C7F16A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 20:17:33 +0000 (UTC)
Message-ID: <1436905046.2445.54.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Steven Rostedt <rostedt@goodmis.org>
Date: Tue, 14 Jul 2015 23:17:26 +0300
In-Reply-To: <20150714092955.2d28984b@gandalf.local.home>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150713202818.23310729@lwn.net>
	<1436871795.2445.8.camel@HansenPartnership.com>
	<20150714092955.2d28984b@gandalf.local.home>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Tue, 2015-07-14 at 09:29 -0400, Steven Rostedt wrote:
> On Tue, 14 Jul 2015 12:03:15 +0100
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> 
> > No harm comes to us from running regression fixes into -next and thus in
> > the 0day tests because they eventually get into the correct kernel and
> > the benefit is that bogus fixes may be picked up by the tests.  Why
> > would we not incubate for a while in -next when there's no down side and
> > plenty of upside?
> 
> Mark Brown mentioned the down side. Depending on what the bug is,
> especially if it breaks Linus's build, or causes some other major
> breakage, to wait in next means that Linus's tree (that everyone is
> based on) will be broken for that long too. Which could stop other
> types of testing of Linus's tree.

If you followed process in the first place, how could you possibly break
the build except for some corner case configuration which can wait for
the fix?  linux-next and 0day pick up this kind of breakage fairly
instantly.  If you wait before sending a pull, you'll see the reports in
time to correct.

> In fact, I have a series of tests I run before pushing any patch to
> Linus. If my tests break because of other breakage in Linus's tree, I
> have to stop what I'm doing and find those bugs before I can proceed.
> With v4.2-rc1, I found 3 bugs that I had to fix or find workarounds
> before I could push my fixes to Linus.

I'd encourage maintainers to run tests (I do).  But I wouldn't encourage
them to think that their tests are the pinnacle of testing ... hence the
process should be everything through our standard test suite by
publishing a for-next branch before sending a pull.

> I've been trying to get time to test against -next before the merge
> window opens, because my tests usually discover these there. But I
> don't always have time to do so.

Well, the more, the merrier.  If you have a suite of tests, just package
it up and send it off to Fengguang if you don't have time to run it.

James


> -- Steve
> 
> 
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
