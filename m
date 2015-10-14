Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AEAC69A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 15:58:54 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3B20CA5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 15:58:54 +0000 (UTC)
Date: Wed, 14 Oct 2015 11:58:49 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20151014155849.GC17329@thunk.org>
References: <alpine.DEB.2.10.1508210805500.2566@hadrien>
	<20150821161409.GA26302@localhost>
	<20150821165852.GH12027@sirena.org.uk>
	<CAKdAkRRrqCNojwBHQ809APetuC-u1XqwViRVp5fBB2tO+naQ_g@mail.gmail.com>
	<20150821174150.GL12027@sirena.org.uk>
	<20150821175231.GM12027@sirena.org.uk>
	<CAKdAkRSywrXnRdwVyn406qoN1hQbTkFCM34Xt4NaC-ZfZ64MQg@mail.gmail.com>
	<20150821181833.GN12027@sirena.org.uk>
	<20151012183607.GA29127@thunk.org>
	<20151012184454.GA14956@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151012184454.GA14956@sirena.org.uk>
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

On Mon, Oct 12, 2015 at 07:44:54PM +0100, Mark Brown wrote:
> On Mon, Oct 12, 2015 at 02:36:07PM -0400, Theodore Ts'o wrote:
> 
> > This thread has meandered pretty far afield from the original topic
> > proposal, and it's not clear whether there is something that is worth
> > talking about at the kernel summit.  I don't _think_ there is, but it's
> > possible I've missed something.  Please speak up if there's something
> > that you think would be worth having a face-to-face discussion about.
> 
> Having gone and found the context to refresh my memory I do see there
> was the discussion about providing an interface for drivers to more
> easily manage the lifetime of objects allocated for userspace use (which
> devm_ isn't).  I'm not sure if that needs a KS discussion or someone to
> step up and try to code something though.

Yeah, that was my personal take on things; that further discussion
some concrete code to disuss would likely not be productive.  If
someone has time to throw a proof of concept together between now and
the kernel summit, we can always dynamically schedule a slot at that
point.

	    	       	       	    - Ted
