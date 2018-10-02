Return-Path: <SRS0=ZLM+=MO=goodmis.org=rostedt@kernel.org>
Date: Tue, 2 Oct 2018 09:11:44 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20181002091144.48f4e27f@gandalf.local.home>
In-Reply-To: <87va6kkagg.fsf@intel.com>
References: <20181001140402.0799a8f0@gandalf.local.home>
	<87va6kkagg.fsf@intel.com>
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

On Tue, 02 Oct 2018 11:40:47 +0300
Jani Nikula <jani.nikula@intel.com> wrote:

> On Mon, 01 Oct 2018, Steven Rostedt <rostedt@goodmis.org> wrote:
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
> I have a semi-related topic, hopefully not a complete thread
> hijack... ;)
> 
> I think module parameters should primarily be viewed as debug knobs
> rather than ABI. Things should just work instead of requiring the user
> to tweak module parameters. Of course, there's the whole spectrum
> between ABI and "unsafe" module parameters, and parameters get added for
> a plethora of reasons.
> 
> However, all module parameters show up in sysfs instead of, say,
> debugfs. Many debug options otherwise suitable for debugfs alone are
> added as module parameters because of the convenience; with just a few
> lines you can add the module parameter, get the sysfs, and have the
> value be set before probe. There's nothing that compares, really.

You mean to select some of the parameters to be debugfs knobs?
(obviously we don't want all of them there).

> 
> I suppose primarily I'd like to find a convenient way to move module
> parameters to debugfs, so the other way round than Steven. Do others
> struggle with this? Any ideas, thoughts, pointers?
> 

I haven't had any issues, personally.

-- Steve
