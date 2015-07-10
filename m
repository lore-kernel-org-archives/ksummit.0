Return-Path: <adobriyan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A7D50B13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 14:28:10 +0000 (UTC)
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A574FE3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 14:28:09 +0000 (UTC)
Received: by laar3 with SMTP id r3so266892886laa.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 07:28:08 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <559FD066.2060601@osg.samsung.com>
References: <20150707092434.GE11162@sirena.org.uk>
	<CACVxJT8Ae3t9x=jF-xy6NunqZCbgOoaNxy9AqOxuDg8Dx=Tk6g@mail.gmail.com>
	<20150707131411.GI2887@sirena.org.uk>
	<20150707144725.6a19727f@gandalf.local.home>
	<559E4BF7.8050607@hitachi.com>
	<CACVxJT9ogSSPKjKRcaPR_NngrOX=mofxSOAfmo2Kp70gA=ZnrQ@mail.gmail.com>
	<559FD066.2060601@osg.samsung.com>
Date: Fri, 10 Jul 2015 17:28:07 +0300
Message-ID: <CACVxJT8S2LdgVB=WTFJ+0xN6JKBxBo7m4T+QaqtRcmBvGPZ5NA@mail.gmail.com>
From: Alexey Dobriyan <adobriyan@gmail.com>
To: Shuah Khan <shuahkh@osg.samsung.com>
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

On Fri, Jul 10, 2015 at 5:02 PM, Shuah Khan <shuahkh@osg.samsung.com> wrote:
> On 07/10/2015 04:39 AM, Alexey Dobriyan wrote:
>> On Thu, Jul 9, 2015 at 1:24 PM, Masami Hiramatsu
>> <masami.hiramatsu.pt@hitachi.com> wrote:
>>
>>> This may be an off-topic, but I'd like to ask the selftest for tools.
>>> Currently tools/testing/selftests tests the kernel itself, but
>>> there are many tools under tools/, like perf too.
>>>
>>> Those are not configured by the kconfig, but selftests are also needed
>>> for tools. I have a runtests script which is just a bit modified
>>> ftracetest for perf-probe. I'd like to integrate it to selftests
>>> but I'm not sure that is a scope of kselftests.
>>
>> This confusion is partially created by peculiar place where people
>> who wrote testsuite put it.
>>
>> Gentlemen,
>> testsuite should be first class citizen in toplevel test/ directory,
>> command to run it should be "make test" not "make kselftest".
>> Only placing it in very visible place and using names which are intuitive
>> and familiar from userspace (git's t/ directory, glibc "make test") will give
>> hope that other developers will notice it and start using and improving it.
>> Excuse me, but tools/testing/selftests is hopeless.
>
> selftests are intended for kernel developers primarily. If developers
> and users don't want to figure out what are the ways to test, then it
> doesn't matter what the option is named. I would like to hear some
> concrete data on why naming test would make it lot more usable.

Not usable, but visible. Top level implies "important", 3 directories deep
implies some obscure driver you didn't even hear about.

And it's easier to type.

git gets it right:

test: all
        $(MAKE) -C t/ all

    Alexey
