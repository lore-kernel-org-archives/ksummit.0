Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D0DBB48E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 19:42:21 +0000 (UTC)
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 13452200A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 19:42:21 +0000 (UTC)
Date: Thu, 15 May 2014 15:42:15 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: Rob Herring <robh@kernel.org>
Message-ID: <20140515194215.GR27822@titan.lakedaemon.net>
References: <20140511030009.GO12708@titan.lakedaemon.net>
	<20140511083729.211e9b5f@lwn.net>
	<20140515121546.3A06AC40B0E@trevor.secretlab.ca>
	<CAL_JsqJw11fZBbLVi=xxC559iWdwCMFOJ4XYM-8EjykttoWsOg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqJw11fZBbLVi=xxC559iWdwCMFOJ4XYM-8EjykttoWsOg@mail.gmail.com>
Cc: Linux ARM Kernel <linux-arm-kernel@lists.infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] ARM legacy board DT conversion
 finalization
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 15, 2014 at 01:50:02PM -0500, Rob Herring wrote:
> On Thu, May 15, 2014 at 7:15 AM, Grant Likely <grant.likely@secretlab.ca> wrote:
> > On Sun, 11 May 2014 08:37:29 -0400, Jonathan Corbet <corbet@lwn.net> wrote:
> >> On Sat, 10 May 2014 23:00:09 -0400
> >> Jason Cooper <jason@lakedaemon.net> wrote:
> >>
> >> > So, I'm proposing a session where each sub-arch gives a brief run-down
> >> > of the status of the legacy board conversion, and wraps up with a todo
> >> > list.  After all of the sub-arches have given their status (5 - 10
> >> > minutes each?), we hash out helping each other with the final pieces.
> >>
> >> This *really* looks like an ARM minisummit topic to me; hopefully one
> >> of those is in the works?
> >
> > It does, doesn't it? I wouldn't want this as a main ksummit topic.
> >
> > The problem with ARM minisummits these days is it is very easy to
> > devolve into a nothing-but-dt meeting with a bunch of people sitting
> > around looking either annoyed or bored. We weren't able to pull enough
> > topics together when we tried to do an ARM minisummit at the ELC.
> >
> > Instead of a traditional ARM minisummit, perhaps we should do an ARM
> > platforms minisprint instead. Light on any kind of presentations, but
> > have the right people in the room to try and knock out some of the
> > legacy backlog (which is kind of what Jason described)
> 
> Isn't a large part of the backlog cases of we need DT bindings for X?
> There are cases like moving platforms to common clk, but is there
> anything to discuss for those? Most of those cases need bodies to work
> on them. It seems like the rest of the todo lists could become an all
> DT discussion. I'm not saying it shouldn't happen, just pointing out
> where I think sprint discussions will go.

As gregkh mentioned for the staging tree:

$ ls arch/arm/*/TODO

would be helpful for folks who aren't familiar with an SoC, but can
easily generate patches.  imho, this is work for *after* the proposed
discussion.  We don't currently have a good idea which directories to
deprecate, convert, or leave to bit rot.  Once we do, I think the TODO
list would be helpful.

My main reason for raising this topic was the proximity to LinuxCon.
There's a better chance of getting some distro representation to give us
valuable feedback: "This SoC is quiet, no patches, but is actively used"
and "We thought the kernel guys had a reason for keeping that one."

eg: I know ixp4xx had an active community around it at one time for the
NSLU2, and the Gateworks boards used that SoC.  Are there people still
running it?  Well, my Dad is, but I can fix that if needed. ;-)

thx,

Jason.
