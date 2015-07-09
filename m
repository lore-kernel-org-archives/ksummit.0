Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3CBE1B68
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 10:25:03 +0000 (UTC)
Received: from mail7.hitachi.co.jp (mail7.hitachi.co.jp [133.145.228.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 8E0071BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 10:25:02 +0000 (UTC)
Message-ID: <559E4BF7.8050607@hitachi.com>
Date: Thu, 09 Jul 2015 19:24:55 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: Steven Rostedt <rostedt@goodmis.org>, Mark Brown <broonie@sirena.org.uk>
References: <20150707092434.GE11162@sirena.org.uk>	<CACVxJT8Ae3t9x=jF-xy6NunqZCbgOoaNxy9AqOxuDg8Dx=Tk6g@mail.gmail.com>	<20150707131411.GI2887@sirena.org.uk>
	<20150707144725.6a19727f@gandalf.local.home>
In-Reply-To: <20150707144725.6a19727f@gandalf.local.home>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	Tyler Baker <tyler.baker@linaro.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 2015/07/08 3:47, Steven Rostedt wrote:
> On Tue, 7 Jul 2015 14:14:11 +0100
> Mark Brown <broonie@sirena.org.uk> wrote:
> 
>> On Tue, Jul 07, 2015 at 04:02:13PM +0300, Alexey Dobriyan wrote:
>>> On Tue, Jul 7, 2015 at 12:24 PM, Mark Brown <broonie@kernel.org> wrote:
>>
>>>>  - Should we start carrying config fragments upstream designed to
>>>>    support testing, things like the distro config fragments that keep
>>>>    getting discussed are one example here but there's other things like
>>>>    collections of debug options we could be looking at.
>>
>>> This will gravitate everyone to running the same config which is the opposite
>>> of what you want.
>>
>> Perhaps, perhaps not - it's not an unequivocal thing either way.  The
>> more barriers there are to enabling things the more likely it is that
>> people just won't bother in the first place (or that they'll run into
>> somme problem and give up before they get things working) and it's not
>> clear that having to figure these things out is always a good use of
>> people's time.
> 
> The testing/selftests tests should have three results: PASS, FAIL,
> UNSUPPORTED. The UNSUPPORTED is what should be returned if the kernel
> configuration doesn't have the needed features configured. For example,
> if you run the ftrace selftests without function tracing enabled, all
> the tests that test the function tracer return UNSUPPORTED.

This may be an off-topic, but I'd like to ask the selftest for tools.
Currently tools/testing/selftests tests the kernel itself, but
there are many tools under tools/, like perf too.

Those are not configured by the kconfig, but selftests are also needed
for tools. I have a runtests script which is just a bit modified
ftracetest for perf-probe. I'd like to integrate it to selftests
but I'm not sure that is a scope of kselftests.

> Perhaps we should have a central location that each test needs to add
> the required configuration for it to be properly tested. Then if users
> want to test various subsystems, they would look in this location for
> the proper configs (be it a directory that has files of the tests they
> represent, and contain the configs needed). Then there should be no
> real barrier for people to run these tests.

/proc/kconfig[.gz]? I think we can add a list of required kconfigs
for each testcase and indicate it. Moreover, we can include it as
a part of kconfig and introduce CONFIG_KSELFTEST to enable those
configs :)

Thank you,

> 
> Of course if the test requires certain hardware, or a file system, then
> that should be properly documented.
> 
> -- Steve
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 


-- 
Masami HIRAMATSU
Linux Technology Research Center, System Productivity Research Dept.
Center for Technology Innovation - Systems Engineering
Hitachi, Ltd., Research & Development Group
E-mail: masami.hiramatsu.pt@hitachi.com
