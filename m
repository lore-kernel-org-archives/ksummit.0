Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5579C273
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 16:14:14 +0000 (UTC)
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CE24A157
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 16:14:13 +0000 (UTC)
Received: by padfo6 with SMTP id fo6so10165274pad.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 09:14:13 -0700 (PDT)
Date: Fri, 21 Aug 2015 09:14:09 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Message-ID: <20150821161409.GA26302@localhost>
References: <2111196.TG1k3f53YQ@avalon>
	<CAKdAkRQLGRqMT-CJz6FemPqyo78wFrM6Kc=pR_BKxqLZqEzjQA@mail.gmail.com>
	<alpine.DEB.2.10.1508210805500.2566@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1508210805500.2566@hadrien>
Cc: Tejun Heo <tj@kernel.org>, Shuah Khan <shuah.kh@samsung.com>,
	Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
 or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 21, 2015 at 08:07:09AM -0700, Julia Lawall wrote:
> On Thu, 20 Aug 2015, Dmitry Torokhov wrote:
> 
> > On Fri, Jul 31, 2015 at 8:14 AM, Laurent Pinchart
> > <laurent.pinchart@ideasonboard.com> wrote:
> > > Hello,
> > >
> > > It recently came to my attention that the way devm_kzalloc() is used by most
> > > drivers is broken. I've raised the topic on LKML (see
> > > http://lkml.org/lkml/2015/7/14/741) in the hope that my findings were simply
> > > wrong, but it turned out I was unfortunately right. As the topic spans lots of
> > > subsystems I believe it would be a good technical topic for the Kernel Summit.
> >
> > <skip>
> >
> > Just realized another fun fact: most busses execute
> > dev_pm_domain_detach() in bus' remove() method, but devm-managed
> > resources (including interrupts and such) are only released in driver
> > core, which happens after bus' remove() method returns. So we may end
> > up shutting off PM domain of a device that is still active and may
> > generate interrupts, etc.
> 
> Can the PM call be devmified too?

I think they have to. I think everything in bus(es) code has to be
devm-ified if we want to allow devm in drivers.

> 
> What is there too the "etc"?  Would it be better to just remove the devm
> functions related to interrupts?  They seem to cause a lot of subtle
> problems.

And regulators, clocks, gpios... Even if we won't have interrupt coming
in someone may submit request to the device (userspace for example) and
we still may try accessing powered off or half-powered-off hardware.

Thanks.

-- 
Dmitry
