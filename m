Return-Path: <bamvor.zhangjian@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1DC0398C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 Sep 2016 03:25:37 +0000 (UTC)
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 95533150
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 Sep 2016 03:25:36 +0000 (UTC)
Received: by mail-it0-f52.google.com with SMTP id c198so58226485ith.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 07 Sep 2016 20:25:36 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160906145748.GC11557@kernel.org>
References: <0e76826b-6552-e880-42fc-17be0c5bf3fe@infradead.org>
	<1473023702.25374.119.camel@decadent.org.uk>
	<20160906145748.GC11557@kernel.org>
From: Bamvor Zhang Jian <bamvor.zhangjian@linaro.org>
Date: Thu, 8 Sep 2016 11:25:35 +0800
Message-ID: <CAFy1USQ+uZdyjaZmytUiJhq5jeXfVwV4NxOUNGmHDQsaa2k=bA@mail.gmail.com>
To: Arnaldo Carvalho de Melo <acme@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: Michal Marek <mmarek@suse.cz>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Bamvor Zhang Jian <bamvor.zhangjian@linaro.org>,
	Jiri Olsa <jolsa@kernel.org>, Arjan van de Ven <arjan@linux.intel.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] tools/Makefile: Fix Many Many
 problems and inconsistencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 6 September 2016 at 22:57, Arnaldo Carvalho de Melo <acme@kernel.org> wrote:
> Em Sun, Sep 04, 2016 at 10:15:02PM +0100, Ben Hutchings escreveu:
>> [Slowly catching up on ksummit-discuss]
>>
>> On Mon, 2016-08-01 at 20:46 -0700, Randy Dunlap wrote:
>> > and subdir Makefiles.
>> >
>> > Examples:
>> >
>> > Use/honor O=outputdir consistently instead of building in <kerneltree>/tools.
>> > (check/compare kernel commit bf35182ffcd00d8b36d56210ffdac110e5624d7d)
>> >
>> > Honor MAKEFLAGS (well, they aren't even passed to tools/Makefile AFAICT.
>> > from an execution log:
>> > make LDFLAGS= MAKEFLAGS="" O=/local/lnx/kernel/lnx-47/TOOLS subdir=tools -C ../tools/ all
>> >
>> > Use make's "findstring" correctly (see patch below)
>> >
>> > There are lots of other problems unless I have just had too much too drink tonight,
>> > so here's the TECH TOPIC:
>> >
>> > In a 1.5 hour code crunch session, get a bunch of interested people together to fix
>> > a lot of problems quickly.  Then I will be a guinea pig tester.  :)
>> [...]
>>
>> I don't know how much can be done in that time.  I've had some
>> recurring pains in packaging tools/:
>>
>> 1. Many different build systems
>>    - Inconsistent support for configuration variables (not just 'O')
>>    - usbip isn't included in a recursive build, presumably because
>>      it uses autotools
>
>Right, that needs improving, I haven't looked at anything outside
>tools/{arch,build,lib,include,objtool,perf}
I am working on enable O= support for kselftest(tools/testing/selftest).
Kbuild or tools/build/Makefile.include seems too heavy for kselftest.
Those Makefile could easily link lots of objects to single binary,
while in kselftest, almost all the single binary is compiled from one
single source respectively, I could redirect the output directory
through the explicit rules.
If there is a plan to build a generic build system(at least for tools),
I hope kselftest could be counted in. Then I could suspend my work and
waiting for this solutions.
>
>> 2. Tools include UAPI headers in one of two ways, neither of which is
>>    reliable:
>>    - Assume the current headers are on the system include path
>>    - Include unprocessed UAPI headers through a relative path
>>
>>    The right thing to do is to run 'make headers_install' and add
>>    usr/ to the front of the system include path.  But we'd want a
>>    way to avoid re-doing that when the UAPI headers haven't changed.
>
>Again, haven't checked outside the above list of directories, by now,
>tools/perf/ doesn't use anything outside tools/, are you talking about
>other tools that touch kernel source files outside tools/?
E.g. tools/gpio and some testcases in tools/testing/selftest


Regards

Bamvor

>
>> 3. Tools frequently fail to build in stable releases (sometimes on
>>    specific architectures) - seems like tools/ is not covered by CI
>>    or it's ignored
>
> The list above I've been running over a set of docker image
> repositories, now publicly available, each with a set of tags for distro
> releases and cross build environments.
>
> https://hub.docker.com/r/acmel/linux-perf-tools-build-alpine
> https://hub.docker.com/r/acmel/linux-perf-tools-build-android-ndk
> https://hub.docker.com/r/acmel/linux-perf-tools-build-archlinux
> https://hub.docker.com/r/acmel/linux-perf-tools-build-centos
> https://hub.docker.com/r/acmel/linux-perf-tools-build-debian
> https://hub.docker.com/r/acmel/linux-perf-tools-build-fedora
> https://hub.docker.com/r/acmel/linux-perf-tools-build-mageia
> https://hub.docker.com/r/acmel/linux-perf-tools-build-opensuse
> https://hub.docker.com/r/acmel/linux-perf-tools-build-ubuntu
>
>> This last point is more of a core topic though.
>>
>> Ben.
>>
>> --
>> Ben Hutchings
>> Once a job is fouled up, anything done to improve it makes it worse.
>
>
>
>> _______________________________________________
>> Ksummit-discuss mailing list
>> Ksummit-discuss@lists.linuxfoundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>
