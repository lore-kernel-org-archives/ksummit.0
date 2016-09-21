Return-Path: <gregkh@linuxfoundation.org>
Date: Wed, 21 Sep 2016 17:28:19 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Alex Shi <alex.shi@linaro.org>
Message-ID: <20160921152819.GA25212@kroah.com>
References: <57C78BE9.30009@linaro.org> <20160902191637.GC6323@sasha-lappy>
	<20160903000518.GN3950@sirena.org.uk> <1656524.OIRTMDr3jV@avalon>
	<57E22F8E.1040801@linaro.org> <20160921092341.GA25038@kroah.com>
	<57E29EA3.2000605@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <57E29EA3.2000605@linaro.org>
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

On Wed, Sep 21, 2016 at 10:52:19PM +0800, Alex Shi wrote:
> 
> 
> On 09/21/2016 05:23 PM, gregkh@linuxfoundation.org wrote:
> >> > 
> >> > I am not a fun of some scheduler solution. But focus on this can not
> >> > explain why many distributions are using 'old' stable kernel. Looking
> >> > into product world, could you find some real product are using
> >> > 'upstream' kernel?
> >> > 
> >> > 'upstream first' is good for feature development, but isn't good for
> >> > product.
> > Not true, IBM and Intel have shown that it saves you time and money to
> > do "upstream first", why do people claim that their reports of this is
> > somehow false?  Other companies also agree, but just don't want to take
> > the initial "hit" of time to do it correctly as it will affect the
> > device today to save time and money for the device tomorrow.
> 
> Thanks for quick response!
> 
> I have left Intel Open source center for 3 years, may I miss some
> changes in Intel. In my memory, Intel has no soft product on its leading
> open source project, like virtualization or others. On android or
> previous meego project, it's still use 'old' kernel with much of
> down-stream patches.

Being one of the previous Meego kernel maintainers, and in charge of a
number of laptops that shipped Meego images (we made money on
preinstalled Linux!) I strongly disagree with that statement.  We spent
a lot of time getting all of the work we did for Meego upstream when we
added it to our kernels, there was no deviation there at all.

> So would you like to tell me more detailed info of IBM, Intel case?

It's online somewhere, and has been described in many presentations from
executives of both companies.  I think there was a business "whitepaper"
written somewhere as well that went into the details.

> >> > Many product guys talked to me that the non-upstream porting didn't
> >> > cost much and not the reason to pin on some stable kernel.
> > You must be talking to product people who only have to make one device,
> > not a family of devices :)
> 
> No, what I asked is one of Linaro core member, they are also leading
> company in mobile phone.

Lots of companies ship mobile phones, none of them do it well :)

> >> > All of them said that testing and stability was the most cost part.
> > Sure, software is always free, it's that pesky testing and fixing all of
> > the bugs found that costs money :)
> > (hint, all of those backports and non-upstrem stuff is what is causing
> > lots of those bugs...)
> > 
> >> > Not only the regular test case, benchmarks, but also the long time
> >> > using for some trick/corner case bugs in whole system.
> > What do you mean by this?
> 
> Uh, they are not so confident on the whole system stability, bug maybe
> come from middle layer, or user APP the compatibility with kernel.

Really?  That's news to me, what are we breaking at that layer?  We
ALWAYS want to know information like that as we do not accept that.

> Regular testing cannot cover everything, some bug report also come from
> consumers.

Sure, you do realize you are talking to lots of people here who
individually have decades of shipping Linux products on lots of
different platforms?  :)

We know bug reports come from everyone, there is no such thing as "bug
free software", and none of us are claiming it.  What we are claiming is
that you should stick to the tree that is tested by as many people as
possible the closest (i.e. mainline) as that gets you the most bug
fixes, as well as the ability to use the kernel community to help you
out when you have problems.  Otherwise you are on your own with your
2.5million lines added franken-kernel that no one will touch if they
have a choice not to.

> >> > I doubt the 'keep rebasing on upstream' guys have been really worked on
> >> > product?
> > I doubt those "let's not work upstream" have been in this business for
> > as long as those of us who say "work upstrem first" have :)
> 
> There are do many guys 'ignore' the upstream work with a huge 'time to
> market' pressure. But there are not only their fault, community may need
> some better ways to help them out.

Ok, why are they not talking to us?  We are easy to find, just look at
our inboxes :)

What do you think we could do to help them out?  That's what I have been
doing for the past 10 years in going around and working with companies.
But it's a two-way street, we aren't going to suddenly stop development
on new kernels and just focus on one specific one for a full year, you
have to be realistic.

> BTW, I take back this word. There are may some industry out of my
> experience which is doing so. But let me know the case.

Lots of them are, look at the customers of Renesas as one such example
of an SoC company that knows how to do this well, and is doing a great
job.  And their customers seem to appreciate it from what I can tell.

> > Fine, you can ignore us, but realize that it will cost you time and
> > money to _not_ work upstream.  We are just trying to help you out...
> 
> Sorry to give you this impression, but that's not what I mean. To save
> mobile industry guys' time and give more help should be better than give
> more pressure on them.

We have given them lots of help, we gave them a whole kernel, and
another company gave them a whole operating system for free.  What more
do they want? :)

thanks,

greg k-h
