Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5F2A483D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 02:00:16 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0140.hostedemail.com
	[216.40.44.140])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4A3C2276
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 02:00:14 +0000 (UTC)
Date: Thu, 28 Jul 2016 22:00:11 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Fengguang Wu <fengguang.wu@intel.com>
Message-ID: <20160728220011.68180496@grimm.local.home>
In-Reply-To: <20160728230713.GB18980@wfg-t540p.sh.intel.com>
References: <20160725190125.GS5537@wotan.suse.de> <5486315.Z6uhQZYKqJ@avalon>
	<20160728205324.GB5642@wfg-t540p.sh.intel.com>
	<2443703.ScQNYO34Bz@avalon>
	<20160728230713.GB18980@wfg-t540p.sh.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Fri, 29 Jul 2016 07:07:13 +0800
Fengguang Wu <fengguang.wu@intel.com> wrote:


> Such a status web page would be similar to the email notification
> with no much extra contents, except that it's always there for your
> polling. If that'd be valuable to you and some few other developers,
> I'd be glad to push forward the Web UI feature.
> 
> I need your understand that there are severe limitations what useful
> contents we can provide due to the nature of merge-test-bisect. For
> example, there will be no build logs specific for your branches/commits
> because the extensive build tests are possible only because your code
> are tested together with a large number of random others. For the same
> reason there will be no error/warnings available for browsing before
> the noisy error/warnings are bisected down. If we expose the unclassified
> noisy error messages and encourage developers to browse through them
> and do a guess work "are they likely caused by my commits?", we may be
> wasting the highly valued developer time.
> 
> btw, maybe some maintainers are already informed: 0-day statistics
> show that ~60% errors can be reported in 2 hours, ~90% errors are
> reported in 24 hours and there are 1% errors reported after 1 week.
> 
> As we extend test coverage aggressively, there are no longer clear
> moment that we can claim all tests for a branch are complete. The
> actual build/boot tests may well go on for over a week, covering
> thousands of kconfigs. The more time consuming functional/performance
> tests may go on for a month. That's made possible and cost effective
> thanks to the merge-test-bisect methodology.
> 
> So the safe bet is to wait for 1 day's tests before sending out patches.
> The BUILD SUCCESS notification serves as an indication 0-day robot is
> not sleeping through. My personal style suggestion would be to stay
> relaxed, take time and avoid polling. :)
> 

I'm signed up to the BUILD_SUCCESS notification, but there's been times
where they never showed up, probably due to the issues you mentioned.
What would be really useful, is just a status page of what commit has
been pulled into testing, and if it finished successful or not. It
doesn't need to display anything else but where it is in the test.

For example, if there's a web page of my git repo, I could see:

 branch ftrace commit SHA1-A - finished failed
 branch ftrace commit SHA1-B - finished success
 branch ftrace commit SHA1-C - running

Something like that, where I can see that your tests have picked up my
lasted push, and if I should be waiting for an email notification or
not.

Make sense?

-- Steve
