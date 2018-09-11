Return-Path: <SRS0=zQUY=LZ=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A7EAE1185
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 15:42:30 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3F05C782
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 15:42:30 +0000 (UTC)
Date: Tue, 11 Sep 2018 11:42:27 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Eduardo Valentin <edubezval@gmail.com>
Message-ID: <20180911114227.241f2e5d@vmware.local.home>
In-Reply-To: <20180910191329.70f90a14@vmware.local.home>
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
	<20180910230301.GB1764@localhost.localdomain>
	<20180910191329.70f90a14@vmware.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Mon, 10 Sep 2018 19:13:29 -0400
Steven Rostedt <rostedt@goodmis.org> wrote:

> On Mon, 10 Sep 2018 16:03:03 -0700
> Eduardo Valentin <edubezval@gmail.com> wrote:
> 
> > I thought that was the case already, everthing that goes to linux-next
> > is ready to go to Linus.  
> 
> It's suppose to be, but not always, and this is why I suggested that
> Linus start yelling at those that are not doing it.
> 

This may have come across a bit too strong. We don't need Linus to
yell, but there should definitely be consequences for any maintainer
that pushes untested code to linux-next. At a bare minimum, all code
that goes into linux-next should have passed 0day bot. Push code to a
non-linux-next branch on kernel.org, wait a few days, if you don't get
any reports that a bot caught something broken, you should be good to
go (also you can opt-in to get reports on 0day success, which I do, to
make that cycle even shorter). And that's a pretty low bar to have to
pass. Ideally, all maintainers should have a set of tests they run
before pushing anything to linux-next, or to Linus in the late -rcs. If
you can't be bothered just to rely on at least 0day then you should not
be a maintainer.

-- Steve
