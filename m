Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 078A04C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:41:48 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 75F1B1FB59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:41:47 +0000 (UTC)
Date: Fri, 2 May 2014 16:41:41 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Dave Jones <davej@redhat.com>
Message-ID: <20140502204141.GB24108@thunk.org>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>
	<1399051229.2202.49.camel@dabdike>
	<20140502173309.GB725@redhat.com>
	<CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>
	<5363E8E1.9030806@zytor.com>
	<CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>
	<20140502193314.GA24108@thunk.org>
	<20140502194935.GA9766@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140502194935.GA9766@redhat.com>
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Sarah Sharp <sarah@minilop.net>,
	ksummit-discuss@lists.linuxfoundation.org,
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

On Fri, May 02, 2014 at 03:49:35PM -0400, Dave Jones wrote:
> 
> I may have a vested interest in syscalls :)

Well, yes, fair enough.  :-)

> And then we have "enable boatload of code" syscalls that are typically
> used by a few standalone apps/features. kexec, checkpointing, whatever
> db it was that cares about remap_file_pages, mempolicy, etc. etc.

Sure, that's fair enough.  I would just use a somewhat broader
definition of "boatload of code", since not all of these boatloads are
accessed via system calls.  Some are accessed via new pseudo-file
systems, some via new ioctls, some via new fallocate code points, etc.

> It's this "not used by every user" code that tends to scare me, because
> it's written with 1-2 well behaved bits of userspace in mind, which
> usually means "has so many unchecked corner cases it's not even funny"

And I think we can also further break this down into the classes of
code which require root privs (i.e., like kexec), and those which can
be used by any userid.  It's the latter which is much more problematic
from a security perspective --- as well from a "it's much harder to
change the ABI without breaking large numbers of userspace programms".
(Where as if it's only being used by 1-2 well behaved bits of
privileged userspace, it's actually a tiny bit easier to evolve the ABI.)

So perhaps what that means it that _these_ are the features which
require the most amount of paranoia and testing before we let them
into the mainline kernel in the first place.  Otherwise, once they get
in, there's always a chance that systemd or some other piece of
userspace will strict strictly requiring said optional feature, and it
doesn't matter whether we put in a CONFIG option to disable the
feature --- we'll never be able to do it.

	    	  	   	      - Ted
