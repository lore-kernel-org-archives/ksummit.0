Return-Path: <shuahkh@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 961D5B1D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 15:54:19 +0000 (UTC)
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 476B5EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 15:54:19 +0000 (UTC)
Message-ID: <559FEAA9.4050008@osg.samsung.com>
Date: Fri, 10 Jul 2015 09:54:17 -0600
From: Shuah Khan <shuahkh@osg.samsung.com>
MIME-Version: 1.0
To: Steven Rostedt <rostedt@goodmis.org>
References: <20150707092434.GE11162@sirena.org.uk>
	<CACVxJT8Ae3t9x=jF-xy6NunqZCbgOoaNxy9AqOxuDg8Dx=Tk6g@mail.gmail.com>
	<20150707131411.GI2887@sirena.org.uk>
	<20150707144725.6a19727f@gandalf.local.home>
	<559E4BF7.8050607@hitachi.com>
	<CACVxJT9ogSSPKjKRcaPR_NngrOX=mofxSOAfmo2Kp70gA=ZnrQ@mail.gmail.com>
	<559FD066.2060601@osg.samsung.com>
	<20150710110522.4b0878cf@gandalf.local.home>
In-Reply-To: <20150710110522.4b0878cf@gandalf.local.home>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Tyler Baker <tyler.baker@linaro.org>, Mark Brown <broonie@sirena.org.uk>,
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

On 07/10/2015 09:05 AM, Steven Rostedt wrote:
> On Fri, 10 Jul 2015 08:02:14 -0600
> Shuah Khan <shuahkh@osg.samsung.com> wrote:
> 
>>>
>>> I think primary use case is this:
>>> * user builds and reboots into kernel with his custom config,
>>> * user runs "make test" from fresh build directory,
>>> * test harness runs everything runnable and maybe reports necessary
>>>   config options to run more
>>>
>>> /proc/kconfig.gz should be kept strictly for runtime config.
>>>
>>
>> We do have ktest for that. Maybe ktest could include kselftest
>> run in its default boot test.
> 
> I could have an option to have ktest run the kselftests, but the user
> would still need to be able to update configs to tell ktest where the
> tests are. Ktest doesn't assume to be run from the repo (I never do
> that).
> 

Right. Thanks for clarifying it. We have a small number of tests that
depend on a specific kernel config option. Those tests are supposed to
exit gracefully and let the rest of the tests run when the config option
they depend on, isn't enabled. User needs to make a conscious choice on
which tests they want to run. In other words, it is users responsibility
to ensure that the kernel is built correctly to run a desired test. Just
like ktest, the responsibility to pick the right config falls outside
the kselftest framework. Kselftest run will test the parts of the kernel
it can test based on the current configuration.

thanks,
-- Shuah

-- 
Shuah Khan
Sr. Linux Kernel Developer
Open Source Innovation Group
Samsung Research America (Silicon Valley)
shuahkh@osg.samsung.com | (970) 217-8978
