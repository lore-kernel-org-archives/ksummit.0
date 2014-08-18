Return-Path: <rob@landley.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DB20A912
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 03:08:16 +0000 (UTC)
Received: from mail-oa0-f51.google.com (mail-oa0-f51.google.com
	[209.85.219.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CF9741F746
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 03:08:15 +0000 (UTC)
Received: by mail-oa0-f51.google.com with SMTP id o6so3664108oag.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 17 Aug 2014 20:08:15 -0700 (PDT)
Message-ID: <53F16E14.6030507@landley.net>
Date: Sun, 17 Aug 2014 22:08:04 -0500
From: Rob Landley <rob@landley.net>
MIME-Version: 1.0
To: Guenter Roeck <linux@roeck-us.net>,
	Linus Walleij <linus.walleij@linaro.org>,
	Grant Likely <grant.likely@secretlab.ca>
References: <53E38ED5.9000300@samsung.com>
	<53E43365.50809@hitachi.com>	<53E8CF03.6020308@samsung.com>
	<53E8EB93.8030301@hitachi.com>	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
	<CACRpkdZL_1Enxd2dTnaEvZkHuCfV08f74ZOqFqaRtEdyMmwtvA@mail.gmail.com>
	<53EB8E4F.9090008@roeck-us.net>
In-Reply-To: <53EB8E4F.9090008@roeck-us.net>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: shuah.kh@samsung.com, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] kselftest - What's in 3.17 and plans for 3.18
 and beyond
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

The most interesting email conversations occur when the machine with all
my email filters is in the shop...

On 08/13/2014 11:11 AM, Guenter Roeck wrote:
> On 08/13/2014 01:35 AM, Linus Walleij wrote:
>> On Tue, Aug 12, 2014 at 3:00 PM, Grant Likely
>> <grant.likely@secretlab.ca> wrote:
>>> On Tue, 12 Aug 2014 01:13:07 +0900, Masami Hiramatsu
>>> <masami.hiramatsu.pt@hitachi.com> wrote:
>>
>>>> I see, for that purpose, installing testcase may not fit.
>>>> BTW, how would it cover cross-build?
>>>
>>> I'm interested in this as well. I'm working on a tool that crossbuilds a
>>> very simple busybox rootfs and boots in QEMU for as many architectures
>>> as possible. I want to make it easy to sanity test all the major
>>> architectures. Right now it does little more than boot to a login
>>> prompt, but I'd like to get the kselftests into it also.
>>
>> Hm that sounds like a goal similar to what Rob Landley has
>> described as one goal for Aboriginal Linux as well.
>> http://landley.net/aboriginal/about.html
>>
> 
> Yes, and to some degree buildroot.

Aboriginal is intentionally building the simplest system capable of
rebuilding itself under itself, with an emphasis on native compiling
from there.

(It's sort of in pieces on the floor at the moment as I switch from
uClibc to musl, which breaks rather a lot of subtle assumptions and
requires everything to be debugged again. Oh well.)

I'd happily make it work with other people's toolchains, but I've never
managed to beat a working _native_ toolchain out of buildroot, it cross
compiles everything and then the resulting system is not expected to be
a development environment. Building on an emulated target system is
apparently not most people's idea of fun.

> Rob's attempts to support multiple architectures also shows its
> limitations.

Some of this is the limitations of the toolchain I'm using, which is the
last GPLv2 release of gcc and binutils. I don't mess with GPLv3 code
unless it's for work, it is _never_ fun.

I keep hoping http://ellcc.org or similar will approach reasonably
functional, but so far that one isn't even using http://lld.llvm.org
instead of binutils, so...

(Also, the llvm build is checking for gcc 4.7 at compile time and
refuses to build on anything older. Yes, llvm has incestuous
dependencies on gcc.)

> For example, his m68k images don't work, at least not for me, because the
> machine he uses (q800) is not supported in qemu 1.6 or 2.0 or 2.1.

Laurent Vivier is working on a qemu fork to add support for that, but
neither he nor I have had time to put into it in forever.

It's something like git://gitorious.org/qemu-m68k/qemu-m68k branch
refs/heads/q800

(My dayjob has nothing to do with anything interesting, I'm paid to work
on a a company's fork of a vendor's bsp fork of a really old kernel. For
the new board, we just upgraded _to_ a version that's only 4 years old.
When they finally ship there will be a nominal compliance tarball put on
a website somewhere that nobody will ever look at or care about. I keep
meaning to put up a patreon to see if people would be willing to sponsor
me to spend all my time on actually _interesting_ stuff like this, but
the chances are low enough I haven't bothered.)

> I have been unable to find a working combination of kernel configuration,
> qemu version, qemu command line, and root file system for m68k. Presumably
> that must exist, because qemu supports m68k, I just have not been able
> to figure out how to make it work.

QEMU does not support m68k, qemu supports coldfire which is a nommu
subset of m68k. But people have used the aranym emulator to fake an
atari machine that _has_ run the root filesystems I've been building.
(With a different kernel config, and a largeish patch for aranym devices
that since went upstream. But it showed the basics were right.)

The problem with using aranym is my setup expects a certain pile of
devices. If /dev/console goes to stdin/stdout than it's easy to script
the sucker with tcl/expect and log the output with "tee". If you have a
virtual network card you can move the heavy lifting of compilation
outside the emulator with distcc hooked up to the cross compiler
(_without_ reintroducing the horrible complexity of cross compiling
because configure and make and linking and header preprocessing and such
all run natively inside the emulator where there's only a single build
context.) You need at least 256 megs of ram for 64 bit gcc to function.
It's really convenient to have three emulated hard drives (one for the
root filesystem, one for writeable space on /home, and one for the
source control and build scripts on /mnt. I described that setup in
http://landley.net/aboriginal/control-images and there are example build
control images there.)

Now that my initmpfs patches are in, I'm moving the
simple-root-filesystem to initmpfs so I can use network mounts instead
of filesystem images for all that... but the emulated network card
becomes a bit of a bottleneck the. The emulated hard drives tend to
fling data around faster. (Also I wanted to use v9fs but the v9fs
developers went ABSOLUTELY INSANE and accepted an IBM patch that broke
things so badly Red Hat yanked the 9p source code out of their kernel.)

http://sourceforge.net/p/v9fs/mailman/message/31629549/

http://scientificlinuxforum.org/index.php?showtopic=2858

> For my own qemu runtime tests, I ended up collecting root file systems and
> kernel configurations from all over the place. And then there is the
> problem
> of qemu command line parameters, where each target and architecture
> requires
> its own set of options, and it is sometimes all but impossible to find a
> working set of parameters for a given target/architecture combination.

Tell me about it. I collect them, and my system images document them. I
was in the process of trying to get Alpha to work when musl got close
enough to 1.0 that switching over became a higher priority, and now
there's the chicken and egg problem of adding musl support and getting
an emulated development enviornment working...

Mostly it's just "dayjob eats my time/energy, I do what I can in the
time I have left".

> Guenter

Rob
