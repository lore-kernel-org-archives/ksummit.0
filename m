Return-Path: <davej@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D7D92918
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 17:33:27 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 67B771FD46
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 17:33:26 +0000 (UTC)
Date: Fri, 2 May 2014 13:33:09 -0400
From: Dave Jones <davej@redhat.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20140502173309.GB725@redhat.com>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>
	<1399051229.2202.49.camel@dabdike>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1399051229.2202.49.camel@dabdike>
Cc: Sarah Sharp <sarah@minilop.net>, ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 02, 2014 at 10:20:29AM -0700, James Bottomley wrote:

 > > Something that's partially related here: Making stuff optional
 > > reduces attack surface the kernel presents. We're starting to grow
 > > more and more CONFIG options to disable syscalls. I'd like to hear
 > > peoples reactions on introducing even more optionality in this area.
 > 
 > My first reaction is reducing the attack surface sounds a reasonable
 > idea.  My second reaction is that the plural in options makes me want to
 > run for the hills.  Having a sea of options for enabling and disabling
 > syscalls gives us the potential for having a set of kernels all with a
 > slightly differing ABI as people choose what to enable and disable.

Absolutely.  Deciding where the line is between 'core' syscalls, and
optional ones is the tricky part.

 > If we do this, I think we should have a small number of options related
 > to use case ... say something like a secure router kernel
 > CONFIG_SECURE_ROUTER which disables anything a secure router wouldn't
 > need.

That might be one option.  And have these 'profiles' do select
WANT_SYS_WHATEVER to reduce #ifdef complexity in the code..

 > For the distros we could have an ordinary and a reduced attack surface
 > kernel CONFIG_REDUCED_ATTACK_SURFACE.

Speaking from experience, when you have two flavors of something, over
time things tend to creep.  After a few "I want the reduced kernel but with xyz"
requests, we're back to where we started, but I can certainly see people
who do specialized kernels like tails wanting something like this.

 > The thing I really want to avoid is binaries compiled for one distro not
 > running on another because of syscall differences.

This is one reason I think at least for general purpose distributions,
this isn't really an option.  Red Hat, SuSE etc _have_ to ship
remap_file_pages because some tiny percentage of their userbase wants it.

Something else that might be worth thinking about would be a runtime
method to disable syscalls.  That might actually be more useful in the
general case, but less so for the "I want a smaller build" crowd.

 > >   r_f_p was an obvious candidate because it's.. well, nasty.  Some of the
 > >   more straightforward syscalls may not be such a big deal, but then we
 > >   have CONFIG's for kcmp and other 'simple' syscalls already..
 > 
 > Speaking with my Checkpoint/Restore/process migration container hat on,
 > we need kcmp.  It was designed with security in mind (originally we'd
 > exposed kernel virtual addresses).

Right, but as not everyone uses/needs checkpointing, it's an optional thing.
I'm not proposing taking anything away for general purpose kernels here.
kcmp is an example of the sort of thing I'd like to see more of.

	Dave
