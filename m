Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 20877308
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 01:40:55 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 428F613B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 01:40:54 +0000 (UTC)
Date: Fri, 15 Jul 2016 10:41:03 +0900
From: Greg KH <greg@kroah.com>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20160715014103.GA5791@kroah.com>
References: <1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<20160713143447.GH9976@sirena.org.uk>
	<20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com> <5788337F.8000500@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5788337F.8000500@roeck-us.net>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 14, 2016 at 05:51:11PM -0700, Guenter Roeck wrote:
> On 07/14/2016 05:22 PM, Greg KH wrote:
> > On Thu, Jul 14, 2016 at 11:06:03AM +0100, Mark Brown wrote:
> > > On Thu, Jul 14, 2016 at 12:17:53PM +0900, Greg KH wrote:
> > > > On Wed, Jul 13, 2016 at 03:34:47PM +0100, Mark Brown wrote:
> > > 
> > > > > There was a lot of pushback against LTSI,
> > > 
> > > > pushback from whom?
> > > 
> > > Linaro members who wanted the LSK.
> > 
> > Ok, there's no need for everyone to use the same messy tree, but perhaps
> > Linaro could participate with LTSI to help make something that more
> > people can all use?  No need to keep duplicating the same work...
> > 
> > But this is way off-topic here, sorry.
> > 
> 
> Maybe a separate topic, and not entirely feasible for the kernel summit,
> but it might be worthwhile figuring out why companies are or are not
> using LTSI. My major problem with it was always that it is just a collection
> of patches, not a kernel tree, meaning merges or cherry-picks are non-trivial.
> Sure, one can create a kernel tree from it, but that is not the same.

It's maintained like most other "distro" kernels are, so I find your
annoyance about a quilt tree of patches odd.  But it is trivial to turn
it into a git tree, the scripts are included in the LTSI repo, which is
what some companies do with it today, others take the built Yocto
packages and just use them.  At the LTSI meeting today in Tokyo, a
number of companies said they are relying on it and using it in shipping
products, so it seems to be useful to them :)

Personally, keeping a kernel tree as external patches is a much more
sane way to manage a kernel, in that it makes it easy to update the base
easier, and it gives people a huge hint just how far off of "mainline"
they really are.  Keeping everything in one branch, in one git tree,
hides all of that, and seems to cause lots of perception problems at
times (look at the 2.5 million line addition monstrocity that QCOM
publishes for older 3.10-based SoCs and people consume unknowingly as
proof of that...)

thanks,

greg k-h
