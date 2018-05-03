Return-Path: <tony@atomide.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C8FD4483
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 23:15:41 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 8432D67D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 23:15:41 +0000 (UTC)
Date: Thu, 3 May 2018 16:09:05 -0700
From: Tony Lindgren <tony@atomide.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20180503230905.GA98604@atomide.com>
References: <20180501194450.GD10479@thunk.org> <20180501200019.GA7397@sasha-vm>
	<20180501205448.GE10479@thunk.org>
	<20180501211551.GI2714@sirena.org.uk>
	<CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180503224217.GR2714@sirena.org.uk>
Cc: Greg KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

* Mark Brown <broonie@kernel.org> [180503 22:44]:
> On Wed, May 02, 2018 at 08:52:29PM -0700, Guenter Roeck wrote:
> 
> > As for -next, me and others stopped reporting bugs in it, because when we do
> > we tend to get flamed for the "noise". Is anyone aware (or cares) that mips
> > and nds32 images don't build ? Soaking clothes in an empty bathtub won't make
> > them wet, and bugs in code which no one builds, much less tests or uses, won't
> > be found.
> 
> You've been flamed for testing -next?  That's not been my experience and
> frankly it's pretty horrifying that it's happening.  Testing is pretty
> much the whole point of -next existing in the first place so you have to
> wonder why people are putting their trees there if they don't want
> testing.  I have seen a few issues with people reporting bugs on old
> versions of -next but otherwise...

Yes I agree testing Linux next is very important. That's the best way for
maintainers to ensure a usable -rc1 after a merge window. And then for
the -rc cycle, there not much of need for chasing bugs to get things working.

Bugs reported for Linux next often seem to get fixed or reverted faster
compared to the -rc cycle too. I think that's because people realize that
their code will not get merged until it's been fixed.

So some daily testing of Linux next can save a lot scrambling after the
merge window :)

Users don't usually upgrade kernels until after later -rc releases or only
after major releases so that probably explains some of the -rc cycle fixes.

Regards,

Tony
