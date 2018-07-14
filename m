Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C682F86A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Jul 2018 18:37:53 +0000 (UTC)
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3CF93798
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Jul 2018 18:37:53 +0000 (UTC)
Received: by mail-pf0-f193.google.com with SMTP id v15-v6so4326185pff.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Jul 2018 11:37:53 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
To: Pavel Machek <pavel@ucw.cz>, Willy Tarreau <w@1wt.eu>
References: <20180501163818.GD1468@sasha-vm>
	<20180501194450.GD10479@thunk.org> <20180501200019.GA7397@sasha-vm>
	<20180501205448.GE10479@thunk.org> <20180501220228.GD7397@sasha-vm>
	<20180502043017.GA11938@1wt.eu> <20180502194139.GA18390@sasha-vm>
	<20180502200229.GA12729@1wt.eu>
	<20180714173812.xhfwtcijlxebmn2k@devuan>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <e1198cd9-9113-d231-d15a-31ac5224b3b1@roeck-us.net>
Date: Sat, 14 Jul 2018 11:37:50 -0700
MIME-Version: 1.0
In-Reply-To: <20180714173812.xhfwtcijlxebmn2k@devuan>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/14/2018 10:38 AM, Pavel Machek wrote:
> Hi!
> 
>>> The way I see it, if a commit can get one or two tested-by, it's a good
>>> alternative to a week in -next.
>>
>> Agreed. Even their own actually. And I'm not kidding. Those who run large
>> amounts of tests on certain patches could really mention is in tested-by,
>> as opposed to the most common cases where the code was just regularly
>> tested.
> 
> Actually, it would be cool to get "Tested: no" and "Tested: compile"
> tags in the commit mesages. Sometimes it is clear from the context
> that patch was not tested (treewide update of time to 64bit), but
> sometime it is not.
> 
> This is especially problem for -stable, as it seems that lately
> patches are backported from new version without any testing.


When I started my own testing some five years ago, most architectures
did not even build in stable releases. At that time, the only tests being
done on stable release candidates were a number of build tests, and most
of the results were ignored.

Today, we have 0day, kernelci, kerneltests, Linaro's LKFT, and more, plus
several merge and boot tests done by individuals. Stable release candidates
are build tested on all supported architectures, with hundreds of configurations.
Each stable release candidate is boot tested on qemu with more than 150
configurations on each architecture supported by qemu. A substantial amount of
boot tests run on real hardware. On key architectures, more sophisticated tests
such as kerneltests and LTP ensure that no new regressions are introduced.

What is new is that many more patches are being applied and backported
to stable releases, at least to degree due to Sasha's scripts, but also due
to tools like syzbot running on older kernels and finding problems which
have been fixed upstream, but the fix has not been backported.

At the same time, stable release test coverage has been improved substantially
over the last few years. I am _much_ more confident with stable releases
than I used to be a few of years ago.

Sure, there are regressions. However, the regression rate is very low (last
time I checked it was around 0.1% to 0.3% per stable release for us). Sure,
I would like to further reduce regression rate, to improve stability but also
because each and every regression is used by someone to argue that stable releases
would be unreliable. However, this is more a matter of perception than reality.
Reality is that more than 90% of all CVEs are fixed in stable releases by the time
they are published as affecting a stable release. Reality is that a substantial
percentage of problems reported by syzbot _are_ being fixed in stable releases.
Reality is that, by the time bugs are reported from the field, it is more and
more likely that we find out that the bug has already been fixed in a later
release due to a stable release merge.

Given all that, I think it is quite misleading to claim that the number of
patches applied to stable releases would create additional problems, or that
patches would be applied "without any testing". On the contrary, I would argue
that the additional testing now being performed _enabled_ us to apply more
patches (bug fixes) to stable releases.

Sure, testing is still far from perfect and needs to be improved. However,
requiring that every patch applied to stable releases be tested individually
(where ? on all affected architectures ?) would be the wrong direction.
What we need to do is to further improve test coverage. We should have no
regressions, but we need to get there by improving test coverage, not by
demanding explicit per-patch and per-release testing (which would be all
but impossible anyway - no one has the infrastructure necessary to test
a patch on all affected architectures).

I would encourage everyone interested in kernel testing to attend the
kernel test sessions at Linux Plumbers and ELC later this year to discuss
concerns and possible solutions.

Thanks,
Guenter
