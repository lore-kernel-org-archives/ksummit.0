Return-Path: <mchehab@s-opensource.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 65C146C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 10:33:37 +0000 (UTC)
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 5E1F779
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 10:33:36 +0000 (UTC)
Date: Thu, 20 Apr 2017 07:24:13 -0300
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20170420072413.11713d39@vento.lan>
In-Reply-To: <1492633237.3217.50.camel@HansenPartnership.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<1492633237.3217.50.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Miller <davem@davemloft.net>, Doug Ledford <dledford@redhat.com>,
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

Em Wed, 19 Apr 2017 13:20:37 -0700
James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:

>    1. Since most people agree that these form of notifications are useful,
>       should we have a standard email for it (or at least a list of things
>       which should be in that email, like commit-id, tree, maintainer,
>       mailing list and the version of the kernel it is expected to be
>       pushed for).
>    2. Given that we all run ad-hoc infrastructure to produce these emails,
>       could we get a set of blessed scripts up on kernel.org for all
>       comers so we can use the central infrastructure rather than rolling
>       our own.

I suspect that this very much depends on the way each maintainer handle
patches. For subsystems like media, where we use patchwork, notification
comes for free with the tool.

Thanks,
Mauro
