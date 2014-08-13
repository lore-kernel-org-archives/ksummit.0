Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D718A523
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 16:12:02 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0F61020347
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 16:12:02 +0000 (UTC)
Message-ID: <53EB8E4F.9090008@roeck-us.net>
Date: Wed, 13 Aug 2014 09:11:59 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Linus Walleij <linus.walleij@linaro.org>,
	Grant Likely <grant.likely@secretlab.ca>
References: <53E38ED5.9000300@samsung.com>
	<53E43365.50809@hitachi.com>	<53E8CF03.6020308@samsung.com>
	<53E8EB93.8030301@hitachi.com>	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
	<CACRpkdZL_1Enxd2dTnaEvZkHuCfV08f74ZOqFqaRtEdyMmwtvA@mail.gmail.com>
In-Reply-To: <CACRpkdZL_1Enxd2dTnaEvZkHuCfV08f74ZOqFqaRtEdyMmwtvA@mail.gmail.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: shuah.kh@samsung.com, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Rob Landley <rob@landley.net>,
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

On 08/13/2014 01:35 AM, Linus Walleij wrote:
> On Tue, Aug 12, 2014 at 3:00 PM, Grant Likely <grant.likely@secretlab.ca> wrote:
>> On Tue, 12 Aug 2014 01:13:07 +0900, Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com> wrote:
>
>>> I see, for that purpose, installing testcase may not fit.
>>> BTW, how would it cover cross-build?
>>
>> I'm interested in this as well. I'm working on a tool that crossbuilds a
>> very simple busybox rootfs and boots in QEMU for as many architectures
>> as possible. I want to make it easy to sanity test all the major
>> architectures. Right now it does little more than boot to a login
>> prompt, but I'd like to get the kselftests into it also.
>
> Hm that sounds like a goal similar to what Rob Landley has
> described as one goal for Aboriginal Linux as well.
> http://landley.net/aboriginal/about.html
>

Yes, and to some degree buildroot.

Rob's attempts to support multiple architectures also shows its limitations.
For example, his m68k images don't work, at least not for me, because the
machine he uses (q800) is not supported in qemu 1.6 or 2.0 or 2.1.
I have been unable to find a working combination of kernel configuration,
qemu version, qemu command line, and root file system for m68k. Presumably
that must exist, because qemu supports m68k, I just have not been able
to figure out how to make it work.

For my own qemu runtime tests, I ended up collecting root file systems and
kernel configurations from all over the place. And then there is the problem
of qemu command line parameters, where each target and architecture requires
its own set of options, and it is sometimes all but impossible to find a
working set of parameters for a given target/architecture combination.

Guenter
