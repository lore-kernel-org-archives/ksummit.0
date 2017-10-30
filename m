Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 62B91D32
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 30 Oct 2017 21:42:49 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DF40C4F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 30 Oct 2017 21:42:48 +0000 (UTC)
Date: Mon, 30 Oct 2017 22:43:01 +0100
From: "greg@kroah.com" <greg@kroah.com>
To: Bart Van Assche <Bart.VanAssche@wdc.com>
Message-ID: <20171030214301.GA10043@kroah.com>
References: <20171029100816.pmq5dpmck4cclmdw@thunk.org>
	<1509385352.3660.35.camel@wdc.com>
	<20171030212057.GB7379@kroah.com>
	<1509398856.27259.26.camel@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1509398856.27259.26.camel@wdc.com>
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

On Mon, Oct 30, 2017 at 09:27:37PM +0000, Bart Van Assche wrote:
> On Mon, 2017-10-30 at 22:20 +0100, Greg KH wrote:
> > On Mon, Oct 30, 2017 at 05:42:33PM +0000, Bart Van Assche wrote:
> > > On Sun, 2017-10-29 at 06:08 -0400, Theodore Ts'o wrote:
> > > > Please reply to this thread if you have any comments about how we can
> > > > organize the Maintainer's Summit for next year.  Given that Linus
> > > > seemed fairly happy with how things went, it's likely we will stick
> > > > with the same format for next year, but if there are any details about
> > > > how we could do things better, I'd greatly appreciate them.
> > > 
> > > Something Linus was very clear about is that regressions are not acceptable.
> > > The best way I know to reduce the number of regressions is to increase the
> > > efforts on automatic testing. Should the number of tests that is run by the
> > > zero-day testing infrastructure be increased? Should more tests be added?
> > 
> > Are there tests out there that 0-day does not currently run?  If there
> > are any out there that 0-day should run that it does not, you can always
> > add new ones, the 0-day client code is on github...
> 
> 0-day is the only test infrastructure of which I know that it is run
> automatically for the Linux kernel.

There are many others, kernel.ci is one of them, the link Konstantin
pointed to has a larger list.

> How should a developer decide which project
> to add new tests to: 0-day, ltp (Linux Test Project), ktest, xfstests, blktests
> or any other Linux kernel testing project that I am not aware of?

It depends on what type of test you are wanting to add.  And you forgot
kselftest :)

thanks,

greg k-h
