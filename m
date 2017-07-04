Return-Path: <linux@leemhuis.info>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4F95B5AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Jul 2017 19:03:28 +0000 (UTC)
Received: from wp227.webpack.hosteurope.de (wp227.webpack.hosteurope.de
	[80.237.132.234])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5635B8D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Jul 2017 19:03:26 +0000 (UTC)
To: Steven Rostedt <rostedt@goodmis.org>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
From: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
Date: Tue, 4 Jul 2017 21:03:22 +0200
MIME-Version: 1.0
In-Reply-To: <20170703123025.7479702e@gandalf.local.home>
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 8bit
Cc: linux-api@vger.kernel.org, Shuah Khan <shuahkh@osg.samsung.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

On 03.07.2017 18:30, Steven Rostedt wrote:
> On Sun, 2 Jul 2017 19:51:43 +0200
> Thorsten Leemhuis <linux@leemhuis.info> wrote:
>>  * How to get subsystems maintainer involved more in regression tracking
>> to better make sure that reported regressions are tracked and not
>> forgotten accidentally.
> We should push harder for all reproducer tests to be put into
> selftests. I try to do that myself [...]
> [...]
> By adding reproducing tests to selftests, we can easily see what
> regressions are still there.
> [...]
> What is selftests?  (Jeopardy answer for all of the above ;-)

Sure, writing and running selftests is a good idea. But as you said
yourself in the later part of your mail: it won't help much in
situations where the kernel (or a selftest) needs to run on a certain
hardware or a specific (and maybe rare or complex) configuration. Sadly
a lot of the regressions in my recent reports were of this kind afaics :-/

In fact I got the impression that most of the regressions that might get
caught by selftests were directly handled by the subsystem maintainer
and never made it to me or my reports -- and thus I can't ask
maintainers to write selftests. *If* I got better aware of those
problems I (a) could make sure they are not forgotten and (b) sooner or
later could publicly state something like "hey, you had ten regressions
recently in your subsystem where writing a selftest might have been a
good idea, but you didn't even write one -- why?" (if we want something
like that).

> […]
>>  * how to make the Linux kernel development so good that the mainstream
>> distros stop their kernel forks and do what they do with Firefox: Ship
>> the latest stable version (users get a new version with new features
>> every few weeks) or a longterm branch (makes a big version jump about
>> once a year; see Firefox ESR).

Hehe, I maybe left the field "regression tracking" to much here and
wandered too far into QA territory.

> This wont ever happen (famous last words). Distros want "stable
> kernels" with new features. 

Ha, yes, it's a long shot (and maybe more a vague idea to work towards
to). And maybe Debian stable and RHEL will always use the model they use
today. But Fedora, rolling release distros (Tumbleweed, Arch, ...), and
some others are updating to the latest Linux kernel release every few
weeks already and it works fine for them. Maybe we can get Ubuntu and
others to follow sooner or later.

Sure, for some people a version jump to a major new kernel release will
sound crazy, but when Linus introduced the current development scheme  a
lot of people also said "that will never fly" -- that was 13 years ago
now and it works quite well. The situation was similar with Firefox as well.

> That's not what stable is about.

That afaics (disclaimer: English is not my mother tongue) depends on the
interpretation of the word, as it can mean "nothing changes" or "rock
solid/reliable" (even when two people have a "stable relationship" it
does not mean that nothing changes between them...).

>> Ugh, pretty long mail. Sorry about that. Maybe I shouldn't have looked
>> so closely into LWN.net articles about regression tracking and older
>> discussions about it.
> Anyway, I know that selftests are not the answer for everything, but
> anything that has a way to reproduce a bug should be added to it. Sure,
> it may depend on various hardware and/or file systems and different
> configs, but if we have a central location to place all bug reproducing
> tests (which we do have), then we should utilize it.
> When it's in the kernel tree, it will be used much more often.

+1

Ciao, Thorsten
