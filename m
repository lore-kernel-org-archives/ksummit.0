Return-Path: <gregkh@linuxfoundation.org>
Date: Wed, 21 Sep 2016 11:23:41 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Alex Shi <alex.shi@linaro.org>
Message-ID: <20160921092341.GA25038@kroah.com>
References: <57C78BE9.30009@linaro.org> <20160902191637.GC6323@sasha-lappy>
	<20160903000518.GN3950@sirena.org.uk> <1656524.OIRTMDr3jV@avalon>
	<57E22F8E.1040801@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <57E22F8E.1040801@linaro.org>
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 21, 2016 at 02:58:22PM +0800, Alex Shi wrote:
> 
> 
> On 09/05/2016 05:28 PM, Laurent Pinchart wrote:
> >>> Same as I said before, the risk LSK introduces, IMO, is much greater than
> >>> > > rebasing and out-of-tree driver stack.
> 
> During the 3 years LSK work, I did get few bug report on LSK by users.
> But they are some track bugs in common LTS. None of them in backporting
> part.
> 
> >> > 
> >> > I'm afraid you're very much mistaken if you believe that people are only
> >> > working on leaf drivers, or that nothing we do upstream has a meaningful
> >> > impact at the system level.
> > To provide a real-life example, we recently ran into a scheduler issue in a 
> > project I'm working on. The device is a phone running a Qualcomm kernel, and 
> > the scheduler is so hacked by the vendor to cover the phone use cases that 
> > creating a spinning high priority SCHED_FIFO thread in userspace kills the 
> > system instantly. That's the kind of crap vendors tend to ship, and moving to 
> > a newer kernel version pretty much means they have no revalidate all the 
> > scheduler-related use cases (and add more awful hacks to "fix issues 
> > introduced in mainline").
> 
> I am not a fun of some scheduler solution. But focus on this can not
> explain why many distributions are using 'old' stable kernel. Looking
> into product world, could you find some real product are using
> 'upstream' kernel?
> 
> 'upstream first' is good for feature development, but isn't good for
> product.

Not true, IBM and Intel have shown that it saves you time and money to
do "upstream first", why do people claim that their reports of this is
somehow false?  Other companies also agree, but just don't want to take
the initial "hit" of time to do it correctly as it will affect the
device today to save time and money for the device tomorrow.

> Many product guys talked to me that the non-upstream porting didn't
> cost much and not the reason to pin on some stable kernel.

You must be talking to product people who only have to make one device,
not a family of devices :)

> All of them said that testing and stability was the most cost part.

Sure, software is always free, it's that pesky testing and fixing all of
the bugs found that costs money :)
(hint, all of those backports and non-upstrem stuff is what is causing
lots of those bugs...)

> Not only the regular test case, benchmarks, but also the long time
> using for some trick/corner case bugs in whole system.

What do you mean by this?

> I doubt the 'keep rebasing on upstream' guys have been really worked on
> product?

I doubt those "let's not work upstream" have been in this business for
as long as those of us who say "work upstrem first" have :)

Fine, you can ignore us, but realize that it will cost you time and
money to _not_ work upstream.  We are just trying to help you out...

thanks,

greg k-h
