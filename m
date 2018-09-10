Return-Path: <edubezval@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E2BC1C9B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 23:32:43 +0000 (UTC)
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 858CFF1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 23:32:43 +0000 (UTC)
Received: by mail-oi0-f67.google.com with SMTP id b15-v6so43652716oib.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:32:43 -0700 (PDT)
Date: Mon, 10 Sep 2018 16:32:40 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20180910233239.GD1764@localhost.localdomain>
References: <20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910230104.GA1764@localhost.localdomain>
	<20180910191239.7e558479@vmware.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180910191239.7e558479@vmware.local.home>
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

On Mon, Sep 10, 2018 at 07:12:39PM -0400, Steven Rostedt wrote:
> On Mon, 10 Sep 2018 16:01:06 -0700
> Eduardo Valentin <edubezval@gmail.com> wrote:
> 
> > One thing that could be done to help is to ask from developers for
> > some sort of selftest that can be executed by the bots and used while
> > backporting their fixes to stable. That way the developer can have a way
> 
> We have that already, it's tools/testing/selftests/...

well, yes, but what I really meant was to populate that directory with a
full set of tests that can detect regressions, on all subsystems

> 
> There's a series of ftrace selftests there that I run before running my
> own more complicated tests. There's still tests I need to move to that
> selftest directory and out of my own suite, but there's some tests that
> are too complicated for the the selftests directory.
> 
> 
> > to tell how to check if the kernel did not regress and whoever wants to
> > try out the fix can validate it. Of course, can this really fly, that is
> > a different story. Not sure the community will end up in a place where
> > all patches post -rc5 requires a selftest :-)
> > 
> > And of course, there is the other type of regression, which is the fix /
> > backport causing issue on other parts of the kernel/subsystem. Maybe
> > forcing each subsystem to have some sort of selftest/sanity check would
> > be one way to improve the reliability of the results of the bots
> > overall.
> 
> Heh, "forcing"? That hasn't been able to work yet ;-)
> 

:-)

> Also, tests for others that don't have the necessary hardware is not
> going to help much. A lot of regressions show up on hardware that we
> don't use.
> 

I agree. Thermal is one of those weird cases one would find most of real
problems while putting devices inside a thermal chamber and running real
workloads in a controlled manner. And on top of that, those are many
times not enough, and only end users would really trigger corner cases
that can really be seen when the device gets into a person's hand.

But still, the fact that selftests do not get all bugs does not mean it
cannot be used to catch at least a subset of it.

Also, some CI / bots do have a rig of hardware attached (kernelCI for
one). But yeah, I agree, hardware availability is a real issue.

> -- Steve
