Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9A1468D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 02:19:52 +0000 (UTC)
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 147861D9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 02:19:52 +0000 (UTC)
Received: by oio137 with SMTP id 137so34374123oio.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Aug 2015 19:19:51 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <2111196.TG1k3f53YQ@avalon>
References: <2111196.TG1k3f53YQ@avalon>
Date: Thu, 20 Aug 2015 19:19:51 -0700
Message-ID: <CAKdAkRQLGRqMT-CJz6FemPqyo78wFrM6Kc=pR_BKxqLZqEzjQA@mail.gmail.com>
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Cc: Shuah Khan <shuah.kh@samsung.com>, Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org, Tejun Heo <tj@kernel.org>
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

On Fri, Jul 31, 2015 at 8:14 AM, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> Hello,
>
> It recently came to my attention that the way devm_kzalloc() is used by most
> drivers is broken. I've raised the topic on LKML (see
> http://lkml.org/lkml/2015/7/14/741) in the hope that my findings were simply
> wrong, but it turned out I was unfortunately right. As the topic spans lots of
> subsystems I believe it would be a good technical topic for the Kernel Summit.

<skip>

Just realized another fun fact: most busses execute
dev_pm_domain_detach() in bus' remove() method, but devm-managed
resources (including interrupts and such) are only released in driver
core, which happens after bus' remove() method returns. So we may end
up shutting off PM domain of a device that is still active and may
generate interrupts, etc.

Fun, huh?

Thanks.

-- 
Dmitry
