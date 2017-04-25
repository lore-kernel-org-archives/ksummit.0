Return-Path: <lee.jones@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 214B7898
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Apr 2017 09:11:05 +0000 (UTC)
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CD49C1A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Apr 2017 09:11:03 +0000 (UTC)
Received: by mail-wm0-f51.google.com with SMTP id r190so90057289wme.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Apr 2017 02:11:03 -0700 (PDT)
Date: Tue, 25 Apr 2017 10:10:58 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20170425091058.qhxkpocnhhd4jysh@dell>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CAK8P3a2F-C+Mfijbjb2CfDMvO2dgSDhNowx1NJ2=qgRdpDLk0g@mail.gmail.com>
	<CAKMK7uF8to7iTSK9YgM0+KGbsj3_iMRjVHHd7zVa5Xzc5ftOGQ@mail.gmail.com>
	<CAK8P3a1dOv2YNALgD+tr-C76wR_esP3FJmYZ7wi3Ee_-fzgpfQ@mail.gmail.com>
	<CAKMK7uHNDT4UBKCDH=RJs90+FW53nB0nQ2Ggc6p=T9QFU=kLPA@mail.gmail.com>
	<CACRpkdb5HVcr6aSJwc2cyFVx435ycWCvEeVrs3OEjvrCK54jTg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRpkdb5HVcr6aSJwc2cyFVx435ycWCvEeVrs3OEjvrCK54jTg@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>, Ingo Molnar <mingo@kernel.org>,
	Doug Ledford <dledford@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

On Mon, 24 Apr 2017, Linus Walleij wrote:
> On Thu, Apr 20, 2017 at 3:46 PM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> 
> > Might just be good to chat a bit about when exactly a topic branch is
> > called for, and when exactly merging through each separate tree is
> > better. I get a bit the feeling that merging through separate trees is
> > done to make sure platforms use all the infrastructure correctly
> > (which is the topic below), but it seems like DT managed to get there
> > without merging things stricly only through a DT tree.
> 
> The typical case where we have to have a immutable topic branch
> is when there is a new API (or just a header file really) added in one
> patch and then a slew of patches need that API are sprinkled all over
> the kernel, so they by necessity need to base on this nexus commit.

[...]

> I think Lee Jones could contribute to discussions around this, as he's
> had the painful job to coordinate queue and quite a few of these hurdles
> due to the nature of MFD as a connection nexus for misc.
> 
> One thing he does is queue an immutable topic branch, announce it and
> let all affected subsystems pull it in, so that we (e.g. GPIO) can then
> refactor or apply local fixes in "our" subsystem from that point, even during
> the development cycle. It is pretty neat.

Multi-Function Devices (drivers/mfd) can waive a complicated web of
cross-subsystem/interdependent function calls, resources and time
sensitive H/W initialisation constraints.  Thus, when working with
such devices, the Maintainers of the children devices and I must work
together to avoid disruption to the user experience.

Our chosen method, or at least the one which causes the least pain, is
immutable branches.  Pull-requests to immutable branches are an
invaluable tool when coordination between 2 or more maintainers is
required.  The use-case does not always allow it, but we do try to
encapsulate all of the dependencies within a single branch, thus
minimising the chance of conflict during the merge-window.  My
MFD pull-request to Linus can contain between 1 and 7 immutable tags.

Although common place, immutable branches are still treated as the
last resort.  If patches can be taken via their respective subsystem
trees without fear of disruption, they are.  Contributors often
attempt to have their *new* cross-subsystem functionality taken in via
a single tree (requiring an immutable branch), purely because it's
convenient and the merge-time becomes deterministic, but we do not
allow that unless there are hard/unavoidable build-time dependencies.

-- 
Lee Jones
Linaro STMicroelectronics Landing Team Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
