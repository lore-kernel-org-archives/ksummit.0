Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0B621B5D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Apr 2017 16:17:49 +0000 (UTC)
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 335B710A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Apr 2017 16:17:48 +0000 (UTC)
Received: by mail-oi0-f50.google.com with SMTP id w12so28818062oiw.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Apr 2017 09:17:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAKMK7uHNDT4UBKCDH=RJs90+FW53nB0nQ2Ggc6p=T9QFU=kLPA@mail.gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CAK8P3a2F-C+Mfijbjb2CfDMvO2dgSDhNowx1NJ2=qgRdpDLk0g@mail.gmail.com>
	<CAKMK7uF8to7iTSK9YgM0+KGbsj3_iMRjVHHd7zVa5Xzc5ftOGQ@mail.gmail.com>
	<CAK8P3a1dOv2YNALgD+tr-C76wR_esP3FJmYZ7wi3Ee_-fzgpfQ@mail.gmail.com>
	<CAKMK7uHNDT4UBKCDH=RJs90+FW53nB0nQ2Ggc6p=T9QFU=kLPA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 24 Apr 2017 18:17:45 +0200
Message-ID: <CACRpkdb5HVcr6aSJwc2cyFVx435ycWCvEeVrs3OEjvrCK54jTg@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Doug Ledford <dledford@redhat.com>,
	David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Apr 20, 2017 at 3:46 PM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:

> Might just be good to chat a bit about when exactly a topic branch is
> called for, and when exactly merging through each separate tree is
> better. I get a bit the feeling that merging through separate trees is
> done to make sure platforms use all the infrastructure correctly
> (which is the topic below), but it seems like DT managed to get there
> without merging things stricly only through a DT tree.

What has been mentioned about Kconfig symbols being merged in
one place and then turned on in a merge commit is just part of it
really. To me the big pain is always API/file dependencies.

The typical case where we have to have a immutable topic branch
is when there is a new API (or just a header file really) added in one
patch and then a slew of patches need that API are sprinkled all over
the kernel, so they by necessity need to base on this nexus commit.

Essentially it happens when developers need an API from subsystem
A in place to do changes in subsystems B, C, D... Also they seldom have
patience to wait for a kernel cycle before making use of the API change,
instead one finger on the fastforward button at all times. (I don't blame them,
I am one of them.)

Typical cases:
<linux/mfd/*.h>
<dt-bindings/*.h>

I think Lee Jones could contribute to discussions around this, as he's
had the painful job to coordinate queue and quite a few of these hurdles
due to the nature of MFD as a connection nexus for misc.

One thing he does is queue an immutable topic branch, announce it and
let all affected subsystems pull it in, so that we (e.g. GPIO) can then
refactor or apply local fixes in "our" subsystem from that point, even during
the development cycle. It is pretty neat.

Yours,
Linus Walleij
