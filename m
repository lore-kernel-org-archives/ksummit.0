Return-Path: <edubezval@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D4CBD516
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 04:12:35 +0000 (UTC)
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 720FF102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 04:12:35 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id 2-v6so9761897pgo.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 09 Sep 2018 21:12:35 -0700 (PDT)
Date: Sun, 9 Sep 2018 21:12:24 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Greg KH <greg@kroah.com>
Message-ID: <20180910041222.GA2524@localhost.localdomain>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<20180906225531.GB2251@localhost.localdomain>
	<nycvar.YFH.7.76.1809071526320.15880@cbobk.fhfr.pm>
	<20180909125554.GB16474@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180909125554.GB16474@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Sep 09, 2018 at 02:55:54PM +0200, Greg KH wrote:
> On Fri, Sep 07, 2018 at 03:30:32PM +0200, Jiri Kosina wrote:
> > On Thu, 6 Sep 2018, Eduardo Valentin wrote:
> > 
> > > Should we add maybe a point here to discuss which kernels are to be 
> > > considered for patching in these cases? All the stable branches? Only 
> > > mainline? Obviously, either extreme cases can hurt people. Patching 
> > > older kernels requires insane amount of work and patching only mainline 
> > > leaves distros on limbo.
> > 
> > That'd be mostly question for the stable guys I guess. I am not sure how 
> > often did they in the past have to say "sorry, the backport is horribly 
> > complex, so we are not backporting the fix and we're keeping the bug 
> > unfixed".
> > 
> > Greg, is this something that actually has been happening for real in the 
> > past? Or would that absolutely break the expectations that stable tree 
> > consumers have?
> 
> Yes, this is something that is happening today.
> 
> If you look, L1TF is not fully backported to 4.4.y, for anyone running
> 4.4.y as a host operating system.  The backport was just too horrible
> and no one wanted to do it and test it as all of the major hosting
> services have moved on to 4.9.y or better.
> 
> There are other examples of this, spectre fixes for arm32 are not in any
> stable tree older than 4.18.y.  Same for other arches and kernel
> versions.


Another example of divergence is meltdown itself, which made in 4.14
(Latest LTS) pretty close to what went into mainline, but anything older
than 4.14 got the core of meltdown implementation, but not all the
optimization in the x86 entry code, which was horrible to backport
entirely.

> 
> I tried to write up "what kernel version to use" on my blog a few weeks
> back to answer this type of question.  Basically, only "trust" the
> latest LTS stable kernel for security issues to be able to use it to run
> untrusted users.  When you start getting older kernels involved, nasty
> problems like what Meltdown and the like are having to implement, it
> just does not work.
> 
> So only "stay" with on old LTS kernel if your hardware requires you to
> (i.e. the horrid SoC nightmare).  And even then, be careful about things
> (sandboxes, selinux, etc.) and go yell at your SoC vendor for forcing
> you into this nightmare of a problem.  If they do not hear from
> companies, they will not change.

For these horrendous cases, should the community simply not patch the 
oldest kernels? Patching only the latest LTS may be a very strong
reason for everyone on older to simply go ahead and upgrade their kernels.

> 
> thanks,
> 
> greg k-h
