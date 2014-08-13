Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 06369681
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 08:35:55 +0000 (UTC)
Received: from mail-oa0-f50.google.com (mail-oa0-f50.google.com
	[209.85.219.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6C3482028D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 08:35:54 +0000 (UTC)
Received: by mail-oa0-f50.google.com with SMTP id g18so8100155oah.37
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 01:35:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140812130043.4894DC40C5C@trevor.secretlab.ca>
References: <53E38ED5.9000300@samsung.com> <53E43365.50809@hitachi.com>
	<53E8CF03.6020308@samsung.com> <53E8EB93.8030301@hitachi.com>
	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
Date: Wed, 13 Aug 2014 10:35:53 +0200
Message-ID: <CACRpkdZL_1Enxd2dTnaEvZkHuCfV08f74ZOqFqaRtEdyMmwtvA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Grant Likely <grant.likely@secretlab.ca>
Content-Type: text/plain; charset=UTF-8
Cc: shuah.kh@samsung.com, Rob Landley <rob@landley.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
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

On Tue, Aug 12, 2014 at 3:00 PM, Grant Likely <grant.likely@secretlab.ca> wrote:
> On Tue, 12 Aug 2014 01:13:07 +0900, Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com> wrote:

>> I see, for that purpose, installing testcase may not fit.
>> BTW, how would it cover cross-build?
>
> I'm interested in this as well. I'm working on a tool that crossbuilds a
> very simple busybox rootfs and boots in QEMU for as many architectures
> as possible. I want to make it easy to sanity test all the major
> architectures. Right now it does little more than boot to a login
> prompt, but I'd like to get the kselftests into it also.

Hm that sounds like a goal similar to what Rob Landley has
described as one goal for Aboriginal Linux as well.
http://landley.net/aboriginal/about.html

If such cross builds are triggered from git pushes akin to how
Fengguang's 0-day is already working we are in a positive
flow I think.

Yours,
Linus Walleij
