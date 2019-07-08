Return-Path: <sashal@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C5F10295A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 18:08:15 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 88523880
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 18:08:15 +0000 (UTC)
Date: Mon, 8 Jul 2019 14:08:13 -0400
From: Sasha Levin <sashal@kernel.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20190708180813.GQ10104@sasha-vm>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
	<20190708110208.GN10104@sasha-vm>
	<20190708123733.GC8576@sirena.org.uk>
	<102219fd-4ba0-e1ff-b2e3-9a0a43392c4c@roeck-us.net>
	<s5h7e8swq87.wl-tiwai@suse.de> <20190708151040.GB1548@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20190708151040.GB1548@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel process
 automation and improvement
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 08, 2019 at 05:10:40PM +0200, Greg KH wrote:
>Well, I think the conversation will go just like it has in the past for
>this issue:
>	"We need to have someone track regressions!"
>	"X said they would do it but they need to be paid, any company
>	willing to sponsor this?"
>	{crickets}
>
>We know we need this, we have at least one talented and capable person
>to do the work, but no company is willing to step up and fund it :(

Maybe I am not clear on the role of the LF here, but why can't we get
the LF to self-fund a regression tracking project for the kernel?

Getting funding for something like this from companies is difficult.
It's hard to sell the value of something like this to managers even
though to us it's obviously *critical* (see the KernelCI case for
example), and even if a certain company secure funding, LF's method of
spinning up projects and trying to get them funded individually just
doesn't work.

--
Thanks,
Sasha
