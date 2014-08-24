Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5119A92B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 24 Aug 2014 18:47:49 +0000 (UTC)
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 27AD92022E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 24 Aug 2014 18:47:48 +0000 (UTC)
Received: by mail-vc0-f179.google.com with SMTP id hq11so14034468vcb.24
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 24 Aug 2014 11:47:47 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <53FA30CC.9020404@roeck-us.net>
References: <20140819163621.GA15109@linux.vnet.ibm.com>
	<CACxGe6vUXr_uqLG_98oAgbcjddsNgXWdGMrtJ8t23tQ1+z5iag@mail.gmail.com>
	<20140823081245.GA16949@localhost>
	<CACxGe6s76N3eL5LK5HnLgMGHp3tJKsBBcsP-JYHFkCH+XjUWWg@mail.gmail.com>
	<CAMuHMdUJhghbOS0JiMidxLjNXe-Gofheb0A1pB_8kJemtak-6w@mail.gmail.com>
	<53FA30CC.9020404@roeck-us.net>
Date: Sun, 24 Aug 2014 11:47:47 -0700
Message-ID: <CAOesGMi31DbacOdrCidzLLs04whnzdkoQFhjaTZwFgyiVd8nng@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
To: Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset=UTF-8
Cc: Segher Boessenkool <segher@kernel.crashing.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Fwd: Rough notes from testing unconference
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Aug 24, 2014 at 11:37 AM, Guenter Roeck <linux@roeck-us.net> wrote:
> On 08/24/2014 11:15 AM, Geert Uytterhoeven wrote:
>>
>> On Sun, Aug 24, 2014 at 7:12 PM, Grant Likely <grant.likely@secretlab.ca>
>> wrote:
>>>
>>> Cross building the kernel isn't the problem. That's easy. Getting a
>>> rootfs and the tests into the rootfs can be hard, depending on the
>>> platform (a problem for some embedded targets).
>>
>>
>> In the past, I have used OpenWRT to build the rootfs for the test
>> target.
>>
> I very much prefer Grant's direct method - it ensures that the available
> test code is automatically integrated into the root file system, and that
> there are no architecture / target dependencies.
>
> For my part I have used various means to create root file systems for my
> own tests, depending on the architecture. I see it as significant
> improvement
> to have it all together in a single place, in our control, and to have it
> as simple as possible.

Yep. Unfortunately, having a cross-toolchain that includes libc is a
significant complexity improvement over just having one that can build
a kernel. I wouldn't mind having pre-built rootfs:es available just
like we have toolchains today, but that won't help me when it comes to
building the kselftest binaries.

I have traditionally been using Segher's buildall
(http://git.infradead.org/users/segher/buildall.git) to build and
populate toolchains locally, and that will no longer be enough. Unless
someone convinces Segher to improve his scripts, of course. :)


-Olof
