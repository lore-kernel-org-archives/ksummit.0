Return-Path: <gregkh@linuxfoundation.org>
Date: Wed, 3 Oct 2018 06:40:12 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jan Kara <jack@suse.cz>
Message-ID: <20181003134012.GA13071@kroah.com>
References: <20181002011856.GA10841@kroah.com>
	<20181002090713.71b529fe@gandalf.local.home>
	<CAOesGMhX3PpQMhuvRO8JwATHbLuoYS6hfhDdoYz12eAy4r79NA@mail.gmail.com>
	<c5546d68-bdcc-dd02-e072-9272d39de504@kernel.org>
	<20181002161730.GA7119@kroah.com>
	<20181002163001.GA11068@kroah.com>
	<20181002183743.78eac32d@coco.lan>
	<0e19e6d0-47bd-d57f-8e31-e3521c467fe0@kernel.org>
	<20181002222238.GA11788@kroah.com>
	<20181003125916.GB21043@quack2.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181003125916.GB21043@quack2.suse.cz>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
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

On Wed, Oct 03, 2018 at 02:59:16PM +0200, Jan Kara wrote:
> On Tue 02-10-18 15:22:38, Greg Kroah-Hartman wrote:
> > Luckily debugfs was made "root only by default" a while ago, to help
> > mitigate this problem.  So while it is present on a number of distros,
> > the "attack surface" is greatly reduced.
> > 
> > That being said, I bet those distros can drop those config options and
> > be fine.
> 
> Not really. We need those configs to be enabled to be able to troubleshoot
> customer's problems - e.g., asking customer to enable some trace points or
> show some stats from debugfs is pretty common...

trace points should not be in debugfs.  And what stats are in debugfs
that are not availble in other tools?  If you rely on them, shouldn't we
move them to a "stable" location so that they can always be accessed?

thanks,

greg k-h
