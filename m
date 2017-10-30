Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A8CF9C8E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 30 Oct 2017 21:20:46 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 372C54DA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 30 Oct 2017 21:20:46 +0000 (UTC)
Date: Mon, 30 Oct 2017 22:20:57 +0100
From: Greg KH <greg@kroah.com>
To: Bart Van Assche <Bart.VanAssche@wdc.com>
Message-ID: <20171030212057.GB7379@kroah.com>
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
> zero-day testing infrastructure be increased? Should more tests be added?

Are there tests out there that 0-day does not currently run?  If there
are any out there that 0-day should run that it does not, you can always
add new ones, the 0-day client code is on github...

> Should the documentation that is available on
> https://01.org/lkp/documentation/0-day-test-service perhaps be moved
> elsewhere, e.g. inside that repository? Do we need a link on kernel.org or
> in the kernel documentation to that project?

0-day is just one of the many different test systems for the kernel,
should we add links to them all?  :)

thanks,

greg k-h
