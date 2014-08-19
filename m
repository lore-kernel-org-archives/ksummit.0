Return-Path: <dan.carpenter@oracle.com>
Date: Tue, 19 Aug 2014 19:09:17 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20140819160917.GF5423@mwanda>
References: <20140819144839.GA1270@thunk.org>
	<20140819145547.GB18536@roeck-us.net>
	<20140819152350.GE11085@thunk.org> <20140819154029.GE5423@mwanda>
	<20140819154738.GB16948@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140819154738.GB16948@roeck-us.net>
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

On Tue, Aug 19, 2014 at 08:47:38AM -0700, Guenter Roeck wrote:
> On Tue, Aug 19, 2014 at 06:40:29PM +0300, Dan Carpenter wrote:
> > Why can't we just taint the kernel on module removal?
> > 
> Why not just fix its bugs ?
> 
> If you want to taint the kernel on module removal because it is known that many
> drivers have bugs in their removal code, you should taint the kernel if any code
> is used which is known to have a bug. Or, in other words, just taint the kernel,
> period.

If you rmmod a module it probably means that your code was buggy before
you started the rmmod.  We already taint the kernel when the kernel
oopses.  It's the same thing.

regards,
dan carpenter
