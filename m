Return-Path: <alexandre.belloni@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D8365B1F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 08:51:47 +0000 (UTC)
Received: from mail.free-electrons.com (mail.free-electrons.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 48E631A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 08:51:47 +0000 (UTC)
Date: Fri, 21 Apr 2017 10:51:36 +0200
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: Mauro Carvalho Chehab <mchehab@s-opensource.com>
Message-ID: <20170421085136.ei5ek6odkw5kzt4z@piout.net>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<1492633237.3217.50.camel@HansenPartnership.com>
	<20170420072413.11713d39@vento.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170420072413.11713d39@vento.lan>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Doug Ledford <dledford@redhat.com>, David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 20/04/2017 at 07:24:13 -0300, Mauro Carvalho Chehab wrote:
> Em Wed, 19 Apr 2017 13:20:37 -0700
> James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:
> 
> >    1. Since most people agree that these form of notifications are useful,
> >       should we have a standard email for it (or at least a list of things
> >       which should be in that email, like commit-id, tree, maintainer,
> >       mailing list and the version of the kernel it is expected to be
> >       pushed for).
> >    2. Given that we all run ad-hoc infrastructure to produce these emails,
> >       could we get a set of blessed scripts up on kernel.org for all
> >       comers so we can use the central infrastructure rather than rolling
> >       our own.
> 
> I suspect that this very much depends on the way each maintainer handle
> patches. For subsystems like media, where we use patchwork, notification
> comes for free with the tool.
> 

I think patchwork notifications are sent only to people with a patchwork
account so this is not enough for subsystems with a lot of drive-by
contributors.


-- 
Alexandre Belloni, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com
