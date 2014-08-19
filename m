Return-Path: <tytso@thunk.org>
Date: Tue, 19 Aug 2014 11:23:50 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20140819152350.GE11085@thunk.org>
References: <20140819144839.GA1270@thunk.org>
	<20140819145547.GB18536@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140819145547.GB18536@roeck-us.net>
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

On Tue, Aug 19, 2014 at 07:55:47AM -0700, Guenter Roeck wrote:
> On Tue, Aug 19, 2014 at 10:48:39AM -0400, Theodore Ts'o wrote:
> > This has been scheduled at 2pm at the request of Rusty.  (Reminder: if
> > you're going to propose a topic, please send e-mail to start a thread
> > on ksummit-discuss).
> > 
> Do we have a context ? I am using insert/remove module a lot during testing,
> and would hate to see it go. It also permits module updates without having to
> reboot the kernel. There must be lots of other reasons to support module
> removal. So I would really dislike if it was no longer available, and I don't
> really see the point.

Rusty has been trying to nuke module removal for years.

Unfortunately, it's been incredibly useful for many reasons.

In addition to the reasons you've suggested, it's the only way that I
can reset a malfunctioning sound driver without rebooting, and I'd
hate to have to regress to windows style "reboot to fix the problem".

It was also noted during the kernel summit core day that because so
many people depend on module removal working, the bind and unbind
functions are much more reliable, and so kexec should perhaps consider
migrating to using bind/unbind.

As a result, what tends to happen is that officially, module unload is
not supported, and if the driver is actively in use, it may oops the
kernel.  However, in practice, this feature is heavily used, which is
perhaps why Rusty wants to make another try at removing this feature.  :-)

	    	  	   		    - Ted
