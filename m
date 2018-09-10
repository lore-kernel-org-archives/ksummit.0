Return-Path: <edubezval@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 19999E92
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 23:03:07 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
	[209.85.214.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0C0B3F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 23:03:05 +0000 (UTC)
Received: by mail-pl1-f174.google.com with SMTP id s17-v6so10402803plp.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:03:05 -0700 (PDT)
Date: Mon, 10 Sep 2018 16:03:03 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20180910230301.GB1764@localhost.localdomain>
References: <20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180910174638.26fff182@vmware.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180910174638.26fff182@vmware.local.home>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Sep 10, 2018 at 05:46:38PM -0400, Steven Rostedt wrote:
> On Mon, 10 Sep 2018 14:20:19 -0700
> Guenter Roeck <linux@roeck-us.net> wrote:
> 
> > On Mon, Sep 10, 2018 at 04:45:19PM -0400, Steven Rostedt wrote:
> > > 
> > > The best we can do is make the automated testing of linux-next better
> > > such that there's less -rc5 patches that need to go in in the first
> > > place.
> > >   
> > 
> > Would that help ? -next has been more or less unusable for a week or so.
> > Maybe it is just a bad time (it hasn't been as bad as it is right now
> > for quite some time), but
> > 
> > Build results:
> > 	total: 135 pass: 133 fail: 2
> > Qemu test results:
> > 	total: 315 pass: 112 fail: 203
> > 
> > on next-20180910 doesn't really make me very confident that useful regression
> > tests on -next are even possible. it seems to me that -next is quite often
> > used as dumping ground for sparsely tested changes, and is far from "ready
> > for upstream".
> >
> 
> Honestly, I think this is something that Linus should yell at
> maintainers for. I treat my pushes into linux-next the same as I treat
> my pull requests to Linus. I don't push anything into next until it's
> been fully run through my test suite, and passes. That also makes it
> easier for me to know that whatever I have in next is also ready for
> Linus (the way it was suppose to be).


Shouldn't we all be doing that?

> 
> With the 0day bot, I think it's become much better. But honestly, I
> think any branch that causes next to fail to build, or run basic tests,
> should be taken out of linux-next and a nasty message sent to the
> guilty maintainer. With the exception that a breakage was caused by two
> conflicting commits (for example, one that changes an API, and another
> branch that uses that API without the update). Those types of breakages
> is what linux-next is made for. But if the branch being pulled into
> linux-next breaks something without the integration, then that's
> unacceptable.

I thought that was the case already, everthing that goes to linux-next
is ready to go to Linus.

> 
> -- Steve
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
