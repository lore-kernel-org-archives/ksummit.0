Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A38159FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 28 Jul 2014 20:16:23 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr
	(mail3-relais-sop.national.inria.fr [192.134.164.104])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E69C220250
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 28 Jul 2014 20:16:21 +0000 (UTC)
Date: Mon, 28 Jul 2014 22:16:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: "H. Peter Anvin" <hpa@zytor.com>
In-Reply-To: <53D69BEC.3030509@zytor.com>
Message-ID: <alpine.DEB.2.02.1407282214460.2074@localhost6.localdomain6>
References: <22709.1406291979@warthog.procyon.org.uk>
	<20140725232429.GD19618@jtriplet-mobl1>
	<53D69BEC.3030509@zytor.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
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



On Mon, 28 Jul 2014, H. Peter Anvin wrote:

> On 07/25/2014 04:24 PM, Josh Triplett wrote:
> >>
> >> However, passing errors in pointers is so very common within the kernel, it
> >> might worth be adding linux/err.h to the automatically included stuff.
> > 
> > ~/src/linux$ git grep -l 'IS_ERR\|ERR_PTR\|PTR_ERR\|ERR_CAST' -- '*.c' | wc -l
> > 4467
> > ~/src/linux$ find -name '*.c' | wc -l
> > 20430
> > 
> > Functionality used by less than a quarter of the source files in the
> > kernel doesn't make sense to automatically include.  You have a clear
> > test that shows whether a file uses this functionality, which would
> > allow an automated patch adding the necessary #include lines.
> > 
> > That does raise an interesting general issue, though: when a change to
> > the kernel would involve patching several thousand files, and would
> > potentially produce a huge number of conflicts (and a huge number of
> > patches if broken out by subsystem) if fed through the normal process,
> > but can be described by a very short script that requires no manual
> > intervention, might it make sense to have a clear procedure for saying
> > "Hey Linus, can you please run this script on top-of-tree and commit the
> > result?"?
> > 
> 
> We have such a clear procedure.  It involves pre-arranging with Linus
> *before the merge window begins* to run the script in question
> *immediately before releasing rc1*.

In this case, would it really create many conflicts?  Does the list of 
included files change often.

If there is an optimial position for the include, it could be hard to make 
a perfect script.

julia
