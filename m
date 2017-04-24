Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ED677BE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Apr 2017 17:29:08 +0000 (UTC)
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 450B5170
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Apr 2017 17:29:05 +0000 (UTC)
Received: by mail-vk0-f66.google.com with SMTP id j135so5900346vka.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Apr 2017 10:29:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CACRpkdb5HVcr6aSJwc2cyFVx435ycWCvEeVrs3OEjvrCK54jTg@mail.gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CAK8P3a2F-C+Mfijbjb2CfDMvO2dgSDhNowx1NJ2=qgRdpDLk0g@mail.gmail.com>
	<CAKMK7uF8to7iTSK9YgM0+KGbsj3_iMRjVHHd7zVa5Xzc5ftOGQ@mail.gmail.com>
	<CAK8P3a1dOv2YNALgD+tr-C76wR_esP3FJmYZ7wi3Ee_-fzgpfQ@mail.gmail.com>
	<CAKMK7uHNDT4UBKCDH=RJs90+FW53nB0nQ2Ggc6p=T9QFU=kLPA@mail.gmail.com>
	<CACRpkdb5HVcr6aSJwc2cyFVx435ycWCvEeVrs3OEjvrCK54jTg@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 24 Apr 2017 10:29:02 -0700
Message-ID: <CAOesGMg8nU4+kaM_eMp_AGxzz=mEvLeqppYE8BFW3uLDZu=hmQ@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>, David Miller <davem@davemloft.net>,
	Doug Ledford <dledford@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Apr 24, 2017 at 9:17 AM, Linus Walleij <linus.walleij@linaro.org> wrote:
> On Thu, Apr 20, 2017 at 3:46 PM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
>> Might just be good to chat a bit about when exactly a topic branch is
>> called for, and when exactly merging through each separate tree is
>> better. I get a bit the feeling that merging through separate trees is
>> done to make sure platforms use all the infrastructure correctly
>> (which is the topic below), but it seems like DT managed to get there
>> without merging things stricly only through a DT tree.
>
> What has been mentioned about Kconfig symbols being merged in
> one place and then turned on in a merge commit is just part of it
> really. To me the big pain is always API/file dependencies.
>
> The typical case where we have to have a immutable topic branch
> is when there is a new API (or just a header file really) added in one
> patch and then a slew of patches need that API are sprinkled all over
> the kernel, so they by necessity need to base on this nexus commit.
>
> Essentially it happens when developers need an API from subsystem
> A in place to do changes in subsystems B, C, D... Also they seldom have
> patience to wait for a kernel cycle before making use of the API change,
> instead one finger on the fastforward button at all times. (I don't blame them,
> I am one of them.)
>
> Typical cases:
> <linux/mfd/*.h>
> <dt-bindings/*.h>
>
> I think Lee Jones could contribute to discussions around this, as he's
> had the painful job to coordinate queue and quite a few of these hurdles
> due to the nature of MFD as a connection nexus for misc.
>
> One thing he does is queue an immutable topic branch, announce it and
> let all affected subsystems pull it in, so that we (e.g. GPIO) can then
> refactor or apply local fixes in "our" subsystem from that point, even during
> the development cycle. It is pretty neat.

Yeah, Lee has been doing a good job there (even though we always
double-check about immutable branches to make the producer aware that
we've picked it up). The clk maintainers (Mike/Stephen) have been
doing a good job too where they tend to apply patches on a per-driver
branch that they keep immutable.

In the clk case we've been pushing back against the "add a branch
dependency just to add one numerical define use" that has been common
for incremental changes that affect clk and DT contents, instead
asking people to revisit with a follow-up patch either right after
-rc1 or next release.


-Olof
