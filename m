Return-Path: <adobriyan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 076BEAAE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 10:39:26 +0000 (UTC)
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5580D12C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 10:39:25 +0000 (UTC)
Received: by lblf12 with SMTP id f12so20690248lbl.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 03:39:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <559E4BF7.8050607@hitachi.com>
References: <20150707092434.GE11162@sirena.org.uk>
	<CACVxJT8Ae3t9x=jF-xy6NunqZCbgOoaNxy9AqOxuDg8Dx=Tk6g@mail.gmail.com>
	<20150707131411.GI2887@sirena.org.uk>
	<20150707144725.6a19727f@gandalf.local.home>
	<559E4BF7.8050607@hitachi.com>
Date: Fri, 10 Jul 2015 13:39:22 +0300
Message-ID: <CACVxJT9ogSSPKjKRcaPR_NngrOX=mofxSOAfmo2Kp70gA=ZnrQ@mail.gmail.com>
From: Alexey Dobriyan <adobriyan@gmail.com>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
Content-Type: text/plain; charset=UTF-8
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

On Thu, Jul 9, 2015 at 1:24 PM, Masami Hiramatsu
<masami.hiramatsu.pt@hitachi.com> wrote:

> This may be an off-topic, but I'd like to ask the selftest for tools.
> Currently tools/testing/selftests tests the kernel itself, but
> there are many tools under tools/, like perf too.
>
> Those are not configured by the kconfig, but selftests are also needed
> for tools. I have a runtests script which is just a bit modified
> ftracetest for perf-probe. I'd like to integrate it to selftests
> but I'm not sure that is a scope of kselftests.

This confusion is partially created by peculiar place where people
who wrote testsuite put it.

Gentlemen,
testsuite should be first class citizen in toplevel test/ directory,
command to run it should be "make test" not "make kselftest".
Only placing it in very visible place and using names which are intuitive
and familiar from userspace (git's t/ directory, glibc "make test") will give
hope that other developers will notice it and start using and improving it.
Excuse me, but tools/testing/selftests is hopeless.

>> Perhaps we should have a central location that each test needs to add
>> the required configuration for it to be properly tested. Then if users
>> want to test various subsystems, they would look in this location for
>> the proper configs (be it a directory that has files of the tests they
>> represent, and contain the configs needed). Then there should be no
>> real barrier for people to run these tests.
>
> /proc/kconfig[.gz]? I think we can add a list of required kconfigs
> for each testcase and indicate it. Moreover, we can include it as
> a part of kconfig and introduce CONFIG_KSELFTEST to enable those
> configs :)

I think primary use case is this:
* user builds and reboots into kernel with his custom config,
* user runs "make test" from fresh build directory,
* test harness runs everything runnable and maybe reports necessary
  config options to run more

/proc/kconfig.gz should be kept strictly for runtime config.
