Return-Path: <fengguang.wu@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C39F483D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 02:26:22 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 5973B286
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 02:26:22 +0000 (UTC)
Date: Fri, 29 Jul 2016 10:26:18 +0800
From: Fengguang Wu <fengguang.wu@intel.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20160729022618.GA12912@wfg-t540p.sh.intel.com>
References: <20160725190125.GS5537@wotan.suse.de> <5486315.Z6uhQZYKqJ@avalon>
	<20160728205324.GB5642@wfg-t540p.sh.intel.com>
	<2443703.ScQNYO34Bz@avalon>
	<20160728230713.GB18980@wfg-t540p.sh.intel.com>
	<20160728220011.68180496@grimm.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20160728220011.68180496@grimm.local.home>
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

On Thu, Jul 28, 2016 at 10:00:11PM -0400, Steven Rostedt wrote:
>On Fri, 29 Jul 2016 07:07:13 +0800
>Fengguang Wu <fengguang.wu@intel.com> wrote:
>
>
>> Such a status web page would be similar to the email notification
>> with no much extra contents, except that it's always there for your
>> polling. If that'd be valuable to you and some few other developers,
>> I'd be glad to push forward the Web UI feature.
>>
>> I need your understand that there are severe limitations what useful
>> contents we can provide due to the nature of merge-test-bisect. For
>> example, there will be no build logs specific for your branches/commits
>> because the extensive build tests are possible only because your code
>> are tested together with a large number of random others. For the same
>> reason there will be no error/warnings available for browsing before
>> the noisy error/warnings are bisected down. If we expose the unclassified
>> noisy error messages and encourage developers to browse through them
>> and do a guess work "are they likely caused by my commits?", we may be
>> wasting the highly valued developer time.
>>
>> btw, maybe some maintainers are already informed: 0-day statistics
>> show that ~60% errors can be reported in 2 hours, ~90% errors are
>> reported in 24 hours and there are 1% errors reported after 1 week.
>>
>> As we extend test coverage aggressively, there are no longer clear
>> moment that we can claim all tests for a branch are complete. The
>> actual build/boot tests may well go on for over a week, covering
>> thousands of kconfigs. The more time consuming functional/performance
>> tests may go on for a month. That's made possible and cost effective
>> thanks to the merge-test-bisect methodology.
>>
>> So the safe bet is to wait for 1 day's tests before sending out patches.
>> The BUILD SUCCESS notification serves as an indication 0-day robot is
>> not sleeping through. My personal style suggestion would be to stay
>> relaxed, take time and avoid polling. :)
>>
>
>I'm signed up to the BUILD_SUCCESS notification, but there's been times
>where they never showed up, probably due to the issues you mentioned.
>What would be really useful, is just a status page of what commit has
>been pulled into testing, and if it finished successful or not. It
>doesn't need to display anything else but where it is in the test.
>
>For example, if there's a web page of my git repo, I could see:
>
> branch ftrace commit SHA1-A - finished failed
> branch ftrace commit SHA1-B - finished success
> branch ftrace commit SHA1-C - running
>
>Something like that, where I can see that your tests have picked up my
>lasted push, and if I should be waiting for an email notification or
>not.
>
>Make sense?

Yes that makes good sense. A more structured layout could be

trace
├── for-next
│   ├── 97f8827a8c7963756ae7d3ee898675b4667eca73
│   └── HEAD -> 97f8827a8c7963756ae7d3ee898675b4667eca73
└── ftrace
    ├── core
    │   ├── 501c2375253c0795048f48368e0b3e8b2f6646dc
    │   ├── 78aebca2c955c1c5aeb48e12645e13fe3c3461f2
    │   ├── 7fa8b7171a638ad896acabd9a17183b75b70aeb4
    │   ├── 8329e818f14926a6040df86b2668568bde342ebf
    │   ├── de9be5961936523e6cc3a1358b166e4efb42595b
    │   ├── fc54f5a288feb132d089404ef5748725ac669a5c
    │   └── HEAD -> 78aebca2c955c1c5aeb48e12645e13fe3c3461f2
    └── urgent
        ├── 0ded5174e976e2b2a354fe38abf1ebf4492c6dc3
        ├── 90d6c42c7766fe63c724a6ec7758a85b6231b08b
        └── HEAD -> 90d6c42c7766fe63c724a6ec7758a85b6231b08b

Each end node contains log messages showing all the progresses that
have been made.

If necessary, symlinks (like HEAD commit's patch-file-name) could be
created at top level to make it more convenient to navigate. Such
symlinks can be auto deleted after 1 day (when people are less
unlikely to look at its status).

Thanks,
Fengguang
