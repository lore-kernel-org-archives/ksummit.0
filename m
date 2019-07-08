Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8975B27AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 15:06:46 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0F3A287F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 15:06:45 +0000 (UTC)
Date: Mon, 8 Jul 2019 17:06:41 +0200
From: Greg KH <greg@kroah.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20190708150641.GA1548@kroah.com>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
	<20190708110208.GN10104@sasha-vm>
	<20190708123733.GC8576@sirena.org.uk>
	<102219fd-4ba0-e1ff-b2e3-9a0a43392c4c@roeck-us.net>
	<20190708145045.GC12731@sirena.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190708145045.GC12731@sirena.co.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel process
 automation and improvement
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 08, 2019 at 03:50:45PM +0100, Mark Brown wrote:
> On Mon, Jul 08, 2019 at 07:05:44AM -0700, Guenter Roeck wrote:
> > On 7/8/19 5:37 AM, Mark Brown wrote:
> 
> > > I'm not sure how many people will actually report problems they
> > > experience upstream rather than just fixing things locally and
> > > just moving on.  The more code is the more likely it is that one
> > > of the users will report things.
> 
> > I for my part will most definitely report any such problems, since each
> > regression in stable releases is used as argument against merging
> > stable releases (even if the regression rate is negligible), and I am
> > very interested in getting that regression rate as close to zero as
> > possible. Reporting each and every regression is an essential part
> > of that.
> 
> Me too - but I'm pretty sure for example most of the product
> teams I've worked with at consumer electronics companies would
> never even consider it.

Sweet, want me to come into those teams and give a presentation like I
did a few months ago for one major company entitled "all the ways your
kernel is insecure and trivial to break"?

I'll be glad to do so :)

thanks,

greg k-h
