Return-Path: <groeck7@gmail.com>
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 19 Aug 2014 10:19:51 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20140819171951.GA25905@roeck-us.net>
References: <20140819144839.GA1270@thunk.org>
	<20140819145547.GB18536@roeck-us.net>
	<20140819152350.GE11085@thunk.org> <20140819154029.GE5423@mwanda>
	<20140819154738.GB16948@roeck-us.net>
	<20140819160917.GF5423@mwanda>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140819160917.GF5423@mwanda>
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] No more module removal -- Unconference track
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 19, 2014 at 07:09:17PM +0300, Dan Carpenter wrote:
> On Tue, Aug 19, 2014 at 08:47:38AM -0700, Guenter Roeck wrote:
> > On Tue, Aug 19, 2014 at 06:40:29PM +0300, Dan Carpenter wrote:
> > > Why can't we just taint the kernel on module removal?
> > > 
> > Why not just fix its bugs ?
> > 
> > If you want to taint the kernel on module removal because it is known that many
> > drivers have bugs in their removal code, you should taint the kernel if any code
> > is used which is known to have a bug. Or, in other words, just taint the kernel,
> > period.
> 
> If you rmmod a module it probably means that your code was buggy before
> you started the rmmod.  We already taint the kernel when the kernel
> oopses.  It's the same thing.
> 
I am also unloading modules for testing purposes. And if/when the respective
hardware has been removed. It is quite useful with hardware supporting OIR.
Sure, it is also used to replace it with a version which does have bug fixes,
but that doesn't mean those bugs, if hit, would actually crash the kernel. It
may be a stabilization patch, for example, or one with a performacne improvement.
But in any case, even if a module is replaced to fix a bug, that doesn't mean
it _hit_ that bug. That is quite different to an OOPS, where it is implied
that a bug was hit.

Again, if your logic is that module removal should cause the kernel to be tained
because it _could_ be that the removal occurred because of a bug, you might as
well taint the kernel all the time. If you want module removal functionality
removed because it is buggy, you might as well remove the entire kernel because
it is buggy.

So, sorry, I don't really understand your logic.

Guenter
