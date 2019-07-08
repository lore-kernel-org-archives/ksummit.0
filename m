Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 391BD26D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 21:31:53 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E8817826
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 21:31:52 +0000 (UTC)
Date: Mon, 8 Jul 2019 23:31:45 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Greg KH <greg@kroah.com>
In-Reply-To: <20190708151040.GB1548@kroah.com>
Message-ID: <nycvar.YFH.7.76.1907082324440.5899@cbobk.fhfr.pm>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
	<20190708110208.GN10104@sasha-vm>
	<20190708123733.GC8576@sirena.org.uk>
	<102219fd-4ba0-e1ff-b2e3-9a0a43392c4c@roeck-us.net>
	<s5h7e8swq87.wl-tiwai@suse.de> <20190708151040.GB1548@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Mon, 8 Jul 2019, Greg KH wrote:

> Well, I think the conversation will go just like it has in the past for
> this issue:
> 	"We need to have someone track regressions!"
> 	"X said they would do it but they need to be paid, any company
> 	willing to sponsor this?"
> 	{crickets}

SUSE has actually been funding this for quite some time (back when Rafael 
was doing it), but it's really tricky.

We of course realize it's very important long-term activity, from which 
everybody profits.

At the same time, you need somebody who *really deeply* understands 
everything inside and around the kernel development, otherwise you get 
more harm and chaos than added value out of the whole excercise.

And if you have such a person (like we had Rafael), it's unlikely that 
person would want to do that work forever, and the funding company is also 
losing brainpower in other, more development-related areas (like PM in 
Rafael's case) at the same time.

So it's not as simple as "hey, you, company making money on linux, go pay 
someone to do this".

If I remember correctly (Rafael for sure would remember better), there 
were some attempts to have the regression tracking made by someone much 
more juniorish, but that person got of course immediately overwhelmed.

Thanks,

-- 
Jiri Kosina
SUSE Labs
