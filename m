Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E7F5FBEE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 30 Oct 2017 21:03:31 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 547DF47D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 30 Oct 2017 21:03:31 +0000 (UTC)
Date: Mon, 30 Oct 2017 17:03:25 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Bart Van Assche <Bart.VanAssche@wdc.com>
Message-ID: <20171030210325.huhspunztpkmuo5h@thunk.org>
References: <20171029100816.pmq5dpmck4cclmdw@thunk.org>
	<1509385352.3660.35.camel@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1509385352.3660.35.camel@wdc.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Maintainer's Summit 2017 Feedback Thread
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Oct 30, 2017 at 05:42:33PM +0000, Bart Van Assche wrote:
> On Sun, 2017-10-29 at 06:08 -0400, Theodore Ts'o wrote:
> > Please reply to this thread if you have any comments about how we can
> > organize the Maintainer's Summit for next year.  Given that Linus
> > seemed fairly happy with how things went, it's likely we will stick
> > with the same format for next year, but if there are any details about
> > how we could do things better, I'd greatly appreciate them.
> 
> Something Linus was very clear about is that regressions are not acceptable.
> The best way I know to reduce the number of regressions is to increase the
> efforts on automatic testing. Should the number of tests that is run by the
> zero-day testing infrastructure be increased?

The 0-day system has sent a whole series of reports in response to
Linus's v4.14-rc6 announcement.  So it sounds like Fengguang is
already on it.  :-)

At least, for those things where we have tests and where the 0-day
hardware tickles the code paths of various arch-specific and drivers.

The good news is that we've picked a lot of the low-hanging fruit.
The bad news is that a lot of what is left is hardware-specific driver
issues, where fixing a bug for the current generation of devices might
break some device from an older generation.  I recall one change to
the Intel Wireless which only regressed when talking to an Aruba
Enterprise-grade Access Point, for which the Intel wireless driver
folks did not have in their hardware test library.

I would hope that most maintainers are doing testing on their own
subsystems.  I certainly do a large amount of exhaustive testing of
ext4 before I send a pull request (including most cases doing a trial
merge before launching a gce-xfstests run).  And I would assume (for
example), that Damien does a large amount of test of his ZBC support
code against SMR HDD's (bonus points if he tests SMR drives from both
WDC and Seagate :-) before he does he submits patches for review, and
as they get merged into Linus's tree.

More test in the zero-day testing infrastructure is good, but this
can't be a substitute for maintainers testing their own subsystems.
That's the only thing that can possibly scale.

	     	    	     	   	    - Ted
