Return-Path: <SRS0=ZLM+=MO=goodmis.org=rostedt@kernel.org>
Date: Tue, 2 Oct 2018 09:07:13 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20181002090713.71b529fe@gandalf.local.home>
In-Reply-To: <20181002011856.GA10841@kroah.com>
References: <20181001140402.0799a8f0@gandalf.local.home>
	<20181002011856.GA10841@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Mon, 1 Oct 2018 18:18:56 -0700
Greg KH <gregkh@linuxfoundation.org> wrote:

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

The funny part is, things used for debugging tend to turn into
something that people want on production systems (tracing,
perf, powertop, etc).

> 
> As for where to put it, it all depends on exactly what it is, and what
> it does and who uses it.  So it's almost always a case-by-case basis.
> 
> Any specific examples you wish to share of code that needs this?
> 

tracefs was one example, but someone was talking to me at Kernel
Recipes and wanted had another directory in debugfs and wanted it out
as it was stable and wanted it exposed when debugfs is turned off.
Unfortunately, this was discussed at an evening event, and I don't
recall the specifics.

As most distros now disable debugfs (great!), perhaps it can be used as
a place to hold interfaces that are under develop, and not worry about
breaking user space, as all distros will have it off, thus no tool
should depend on it.

-- Steve
