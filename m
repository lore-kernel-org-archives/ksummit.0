Return-Path: <rob@landley.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 42010912
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 03:19:02 +0000 (UTC)
Received: from mail-oa0-f54.google.com (mail-oa0-f54.google.com
	[209.85.219.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8C6FE1F746
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 03:19:01 +0000 (UTC)
Received: by mail-oa0-f54.google.com with SMTP id n16so3669385oag.27
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 17 Aug 2014 20:19:00 -0700 (PDT)
Message-ID: <53F170A2.40205@landley.net>
Date: Sun, 17 Aug 2014 22:18:58 -0500
From: Rob Landley <rob@landley.net>
MIME-Version: 1.0
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>,
	Linus Walleij <linus.walleij@linaro.org>
References: <53E38ED5.9000300@samsung.com> <53E43365.50809@hitachi.com>
	<53E8CF03.6020308@samsung.com> <53E8EB93.8030301@hitachi.com>
	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
	<CACRpkdZL_1Enxd2dTnaEvZkHuCfV08f74ZOqFqaRtEdyMmwtvA@mail.gmail.com>
	<53EB9610.1060700@hitachi.com>
In-Reply-To: <53EB9610.1060700@hitachi.com>
Content-Type: text/plain; charset=UTF-8
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



On 08/13/2014 11:45 AM, Masami Hiramatsu wrote:
> (2014/08/13 17:35), Linus Walleij wrote:
>> On Tue, Aug 12, 2014 at 3:00 PM, Grant Likely <grant.likely@secretlab.ca> wrote:
>>> On Tue, 12 Aug 2014 01:13:07 +0900, Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com> wrote:
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
> 
> Hmm, I also consider that the Aboriginal Linux and other busybox-based minimal
> distro may not have "make" on their rootfs. In that case, we need to make self-
> executable binaries and install it with testing "ash" scripts so that it can
> run on busybox. It may be just a technical issue.

Aboriginal Linux has make in the native root filesystem. (Again, last
gplv2 version so it's a touch stale now. Back when I did busybox stuff I
planned to write a make for that, and now I plan to write one for
toybox, but it's a post 1.0 todo item.)

There's also a native-compiler tarball that's just the stuff it adds on
top of the simple-root-filesystem to make the development environment.
(This includes make and bash 2.05b.)

Now that my initmpfs patches are upstream, I'm refactoring things to put
the simple-root-filesystem in initramfs and splice the native-compiler
stuff from hda into the $PATH at runtime, in the init script. But I'm
two kernel releases behind, and should probably ship a 3.15 version
before doing much more development...

Rob

(P.S. Making a stripped down linux from scratch build based on busybox
and uclibc is why I got into busybox development in the first place.
That's why I wound up doing so much work on it I got the maintainership
handed to me for a bit. Now I'm doing it all again in toybox because
Android won't use busybox because it's under the GPL.)
