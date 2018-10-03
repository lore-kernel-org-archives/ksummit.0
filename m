Return-Path: <sudeep.holla@arm.com>
Date: Wed, 3 Oct 2018 11:06:33 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20181003100633.GB12570@e107155-lin>
References: <20181001140402.0799a8f0@gandalf.local.home>
	<20181002011856.GA10841@kroah.com>
	<20181002090713.71b529fe@gandalf.local.home>
	<CAOesGMhX3PpQMhuvRO8JwATHbLuoYS6hfhDdoYz12eAy4r79NA@mail.gmail.com>
	<c5546d68-bdcc-dd02-e072-9272d39de504@kernel.org>
	<20181002161730.GA7119@kroah.com>
	<20181002163001.GA11068@kroah.com>
	<20181002183743.78eac32d@coco.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181002183743.78eac32d@coco.lan>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

On Tue, Oct 02, 2018 at 06:37:43PM -0300, Mauro Carvalho Chehab wrote:

[...]

>
> Even if it won't be possible to crash the Kernel or escalate
> privileges, I suspect that several stuff in debugfs should never
> be enabled on production systems, as they may reveal things like
> memory addresses and other stuff that could be used to help someone
> to crack a system.
>

I completely agree with that. Recently I reviewed patches to support
power management on some ARM platforms which had complete system clock
control in debugfs. It even had access to many system controls that it
can send to remote system control processor which we really don't want
in production systems.

--
Regards,
Sudeep
