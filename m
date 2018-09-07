Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F352AE85
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 20:58:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A272B7C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 20:58:14 +0000 (UTC)
Date: Fri, 7 Sep 2018 17:58:06 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <20180907175806.29be76c9@coco.lan>
In-Reply-To: <f8060a24-812b-ea81-dcf6-fb587cdf485e@kernel.dk>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm> <20180907042754.GL5098@thunk.org>
	<20180907145639.GG16300@sasha-vm>
	<f8060a24-812b-ea81-dcf6-fb587cdf485e@kernel.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Fri, 7 Sep 2018 09:07:41 -0600
Jens Axboe <axboe@kernel.dk> escreveu:

> On 9/7/18 8:56 AM, Sasha Levin via Ksummit-discuss wrote:
> > On Fri, Sep 07, 2018 at 12:27:54AM -0400, Theodore Y. Ts'o wrote:  
> >> As far as users testing Linux-next --- I'm willing to try running
> >> anything past, say, -rc3 on my laptop.  But running linux-next?  Heck,
> >> no!  That's way too scary for me.  
> > 
> > That's why linux-next has a pending-fixes branch. IMO it makes more
> > sense to run that than a random -rcX release.  
> 
> I'm pretty convinced that linux-next is very useful as integration
> testing. On numerous occasions I learn of conflicts that will impact me
> for the merge window, and Stephen is great at providing merge fixes that
> helps everybody out. I'm much less convinced that it's useful for
> runtime testing. It's extremely rare that I get a bug report on
> linux-next, whereas I get them after patches have been merged into
> Linus's tree all the time. Nobody is going to be running that
> pending-fixes branch.

Same applies here: the stuff I usually get from linux-next bots
are usually due to some random config that, and, while it is nice
to fix, there's no real impact in practice, as it usually means 
building a driver for an architecture where it doesn't apply, or
a weird mix of modules/builtin drivers with no users.

Yet, I always wait for a patch to be merged at next before sending
upstream, although I usually don't wait for a long time after
-next in order to send stuff upstream, as I don't expect users
to actually test what's at -next.

Thanks,
Mauro
