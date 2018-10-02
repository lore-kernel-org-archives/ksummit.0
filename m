Return-Path: <gregkh@linuxfoundation.org>
Date: Mon, 1 Oct 2018 18:26:02 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20181002012602.GA22197@kroah.com>
References: <20181001140402.0799a8f0@gandalf.local.home>
	<20181002011856.GA10841@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181002011856.GA10841@kroah.com>
Cc: Ksummit-discuss@lists.linuxfoundation.org
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

On Mon, Oct 01, 2018 at 06:18:56PM -0700, Greg KH wrote:
> On Mon, Oct 01, 2018 at 02:04:02PM -0400, Steven Rostedt wrote:
> > At Kernel Recipes, I talked with some people that have mature
> > interfaces in the debugfs directory, but they can not access them on
> > systems that have debugfs disabled. What would be the process to have
> > these systems move out of debugfs? Should they create their own fs and
> > be mounted in /sys/kernel, with a dedicated directory if the file system
> > is enabled in the kernel (I had tracefs do that).
> > 
> > Is this something we should discuss at Maintainers Summit? What is the
> > process for mature debugfs directories? What's the justification to
> > have them moved? Is there a better answer for this?
> 
> It's a technical topic, so maintainers summit doesn't make sense.
> 
> Stuff in debugfs should NEVER be used for anything "real" or anything
> other than debugging.  So I would argue that that code needs to be fixed
> up now anyway, as most distros are disabling debugfs for the obvious
> reasons (and Android is also turning it off).
> 
> As for where to put it, it all depends on exactly what it is, and what
> it does and who uses it.  So it's almost always a case-by-case basis.
> 
> Any specific examples you wish to share of code that needs this?

Oh, and the "process"?  Just do it.  Nothing should be depending on
debugfs for "system functionality"[1], so it should be just fine to move
files around and delete them.

thanks,

greg k-h

[1] There's a whole line of SoCs out there there that ended up putting
the battery measurement logic in a debugfs file, despite us having a
well known and well documented batter/power api already in sysfs.  By
turning debugfs off, all of a sudden your phone has no way to report the
state of the battery.  Fun stuff...
