Return-Path: <sudeep.holla@arm.com>
Date: Wed, 3 Oct 2018 15:52:55 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20181003145255.GC12570@e107155-lin>
References: <20181001140402.0799a8f0@gandalf.local.home>
	<20181002011856.GA10841@kroah.com>
	<20181002090713.71b529fe@gandalf.local.home>
	<CAOesGMhX3PpQMhuvRO8JwATHbLuoYS6hfhDdoYz12eAy4r79NA@mail.gmail.com>
	<c5546d68-bdcc-dd02-e072-9272d39de504@kernel.org>
	<20181002161730.GA7119@kroah.com>
	<20181002163001.GA11068@kroah.com>
	<20181002183743.78eac32d@coco.lan>
	<20181003100633.GB12570@e107155-lin>
	<20181003131353.GB7132@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181003131353.GB7132@sirena.org.uk>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit <Ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Moving debugfs file
 systems into sysfs
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Oct 03, 2018 at 02:13:53PM +0100, Mark Brown wrote:
> On Wed, Oct 03, 2018 at 11:06:33AM +0100, Sudeep Holla wrote:
> > On Tue, Oct 02, 2018 at 06:37:43PM -0300, Mauro Carvalho Chehab wrote:
> 
> > > Even if it won't be possible to crash the Kernel or escalate
> > > privileges, I suspect that several stuff in debugfs should never
> > > be enabled on production systems, as they may reveal things like
> > > memory addresses and other stuff that could be used to help someone
> > > to crack a system.
> 
> > I completely agree with that. Recently I reviewed patches to support
> > power management on some ARM platforms which had complete system clock
> > control in debugfs. It even had access to many system controls that it
> > can send to remote system control processor which we really don't want
> > in production systems.
> 
> This is why I've always strongly resisted making it possible to write to
> the regmap or regulator debugfs files; there is code for writing to the
> regmap ones but you need to patch the kernel to enable it.

Ah, that's better. Next time I see anything around debugfs where
restricting write is a must, I will suggest something on similar lines
so that they need that extra tiny patch to get it enabled. Thanks for
the pointers.

--
Regards,
Sudeep
