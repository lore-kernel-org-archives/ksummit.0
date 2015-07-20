Return-Path: <shuahkh@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6CE37267
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 16:39:27 +0000 (UTC)
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id A26DF14B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 16:39:26 +0000 (UTC)
Message-ID: <55AD243C.5020000@osg.samsung.com>
Date: Mon, 20 Jul 2015 10:39:24 -0600
From: Shuah Khan <shuahkh@osg.samsung.com>
MIME-Version: 1.0
To: Mel Gorman <mgorman@suse.de>, Mark Brown <broonie@kernel.org>
References: <20150707092434.GE11162@sirena.org.uk>
	<559BEF61.8050904@roeck-us.net>
	<20150707171819.GF11162@sirena.org.uk>
	<20150720155313.GI2561@suse.de>
In-Reply-To: <20150720155313.GI2561@suse.de>
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 7bit
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	ksummit-discuss@lists.linuxfoundation.org, grant@secretlab.ca,
	Tyler Baker <tyler.baker@linaro.org>, Shuah Khan <shuahkh@osg.samsung.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/20/2015 09:53 AM, Mel Gorman wrote:
> On Tue, Jul 07, 2015 at 06:18:20PM +0100, Mark Brown wrote:
>> On Tue, Jul 07, 2015 at 08:25:21AM -0700, Guenter Roeck wrote:
>>> On 07/07/2015 02:24 AM, Mark Brown wrote:
>>
>>>> The main things I'm aware of that are happening at the minute are
>>>> kselftest development, the 0day tester, plus kernelci.org and the other
>>>> build and boot/test bots that are running against various trees.
>>
>>> Maybe list all known ones as a start ?
>>
>> Off the top of my head the automated ones I'm aware of are Olof's build
>> & boot test, Dan running smatch and I think some other static analysis
>> stuff, someone (not sure who?) running some coccinelle stuff, Coverity
>> and I've got a builder too.
>>
> 
> There is also Marvin which has existed in some shape or form since November
> 2013. It checks once a month for new releases and executes a battery of
> tests on them across a range of machines. The primary purpose of it is
> performance verification and the tests are typically more complex than
> what I'd expect to see in kselftest. There are small amounts of overlap
> with 0-day but generally it's expected that Marvin runs tests that are more
> long-lived. Unlike 0-day, it also does not automatically notify people about
> regressions as some verification work is often required and I did not want
> it generating noise in any inbox.  Technically, it does support automatic
> bisection but it's something I trigger manually when I confirm a problem
> is a performance regression and cannot quickly identify the root cause.
> 
> It actually has been publishing reports for several months
> now but I never mentioned it on the lists. I wrote up
> some details after reading this thread and posted it at
> http://www.csn.ul.ie/~mel/blog/index.php?/archives/23-Continual-testing-of-mainline-kernels.html
> 
> If there was a workshop on testing then I'd be interested in attending and
> discussing what Marvin does if there was interest. Right now, performance
> tends to my area of interest so I'd be interesting is discussing if there
> are areas we are continually getting worse at that are slipping through
> the cracks. Chris proposed a topic in this general area that I think would
> be useful. I've only started looking at mainline kernel performance again
> recently and right now, I'm not aware of a single area where we are getting
> consistently worse. More commonly I see cases where we create problems
> and then later cover them up by fixing something else in the general
> area. Any time I find problems, it's a simple matter of programming and
> time to fix them but it'd be useful to hear what other peoples recent
> experiences have been.
> 

If there is enough interest, I can pull together a session on testing
at the kernel summit. We can discuss kselftest future plans as well as
adding performance tests into the kselftest, and discuss kselftest use
in auotomated test environments.

thanks,
-- Shuahs

-- 
Shuah Khan
Sr. Linux Kernel Developer
Open Source Innovation Group
Samsung Research America (Silicon Valley)
shuahkh@osg.samsung.com | (970) 217-8978
