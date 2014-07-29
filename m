Return-Path: <hughd@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5A002A4C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 29 Jul 2014 16:52:21 +0000 (UTC)
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com
	[209.85.192.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 712AA20263
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 29 Jul 2014 16:52:20 +0000 (UTC)
Received: by mail-pd0-f173.google.com with SMTP id w10so11947526pde.32
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 29 Jul 2014 09:52:20 -0700 (PDT)
Date: Tue, 29 Jul 2014 09:50:34 -0700 (PDT)
From: Hugh Dickins <hughd@google.com>
To: "Luck, Tony" <tony.luck@intel.com>
In-Reply-To: <3908561D78D1C84285E8C5FCA982C28F3287CFFB@ORSMSX114.amr.corp.intel.com>
Message-ID: <alpine.LSU.2.11.1407290938040.4599@eggly.anvils>
References: <22709.1406291979@warthog.procyon.org.uk>
	<20140725232429.GD19618@jtriplet-mobl1>
	<53D69BEC.3030509@zytor.com>
	<alpine.DEB.2.02.1407282214460.2074@localhost6.localdomain6>
	<53D6D44E.1070708@zytor.com> <20140729143513.GB1437@jtriplet-mobl1>
	<3908561D78D1C84285E8C5FCA982C28F3287CFFB@ORSMSX114.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Should we force include <linux/err.h> when
 compiling all .c files?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 29 Jul 2014, Luck, Tony wrote:

> > Perhaps, though see above about the handling of new source files.
> 
> Sounds like a job for checkpatch.pl to make sure that <linux/err.h>
> is included if a new file uses any of  'IS_ERR\|ERR_PTR\|PTR_ERR\|ERR_CAST'
> to help stop this spreading to new files.
> 
> It might be harder, but presumably still possible, to have it also check if
> any use of those macros is added to a file ... but it couldn't tell just by
> looking at the patch ... it would have to peek at the original file to see
> if there was already a #include <linux/err.h>
> 
> Without a check, or some regular scan, this problem is going to recur.

I keep wondering, what _is_ the problem being discussed here?

If someone uses IS_ERR etc without linux/err.h being included,
does the kernel behave in a dangerously unpredictable way?
Or does the build just fail?

So, there's a rule that everybody should include every header
file that's used directly by a particular source file.

Good rule, but somehow I doubt that omitting linux/err.h
is the sole example of that rule being broken.

And our response to that is to get the kbuild system to include
automatically any header files frequently forgotten?

Hugh
