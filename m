Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6428D68
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 15:07:23 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4EB5DA7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 15:07:21 +0000 (UTC)
Date: Fri, 21 Aug 2015 08:07:09 -0700 (PDT)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
In-Reply-To: <CAKdAkRQLGRqMT-CJz6FemPqyo78wFrM6Kc=pR_BKxqLZqEzjQA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1508210805500.2566@hadrien>
References: <2111196.TG1k3f53YQ@avalon>
	<CAKdAkRQLGRqMT-CJz6FemPqyo78wFrM6Kc=pR_BKxqLZqEzjQA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Thu, 20 Aug 2015, Dmitry Torokhov wrote:

> On Fri, Jul 31, 2015 at 8:14 AM, Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> > Hello,
> >
> > It recently came to my attention that the way devm_kzalloc() is used by most
> > drivers is broken. I've raised the topic on LKML (see
> > http://lkml.org/lkml/2015/7/14/741) in the hope that my findings were simply
> > wrong, but it turned out I was unfortunately right. As the topic spans lots of
> > subsystems I believe it would be a good technical topic for the Kernel Summit.
>
> <skip>
>
> Just realized another fun fact: most busses execute
> dev_pm_domain_detach() in bus' remove() method, but devm-managed
> resources (including interrupts and such) are only released in driver
> core, which happens after bus' remove() method returns. So we may end
> up shutting off PM domain of a device that is still active and may
> generate interrupts, etc.

Can the PM call be devmified too?

What is there too the "etc"?  Would it be better to just remove the devm
functions related to interrupts?  They seem to cause a lot of subtle
problems.

julia
