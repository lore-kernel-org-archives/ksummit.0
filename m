Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 06F3625D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 25 Jul 2014 23:24:37 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6918020220
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 25 Jul 2014 23:24:36 +0000 (UTC)
Date: Fri, 25 Jul 2014 16:24:29 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20140725232429.GD19618@jtriplet-mobl1>
References: <22709.1406291979@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <22709.1406291979@warthog.procyon.org.uk>
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

On Fri, Jul 25, 2014 at 01:39:39PM +0100, David Howells wrote:
> Should we forcibly include <linux/err.h> from the gcc command line when
> compiling all .c files?  Note:
> 
> 	warthog>git grep -l '#.*include.*<linux/err[.]h>' -- \*.c | wc -l
> 	1797
> 
> vs:
> 
> 	warthog>git grep -l 'IS_ERR\|ERR_PTR\|PTR_ERR\|ERR_CAST' -- \*.c | wc -l
> 	4472
> 
> So a lot fewer .c files include it than use it, but according to:
> 
> 	1: If you use a facility then #include the file that defines/declares
> 	   that facility.  Don't depend on other header files pulling in ones
> 	   that you use.
> 
> as pointed out to me by Stephen, it shouldn't be assumed that it's available.
> 
> 
> However, passing errors in pointers is so very common within the kernel, it
> might worth be adding linux/err.h to the automatically included stuff.

~/src/linux$ git grep -l 'IS_ERR\|ERR_PTR\|PTR_ERR\|ERR_CAST' -- '*.c' | wc -l
4467
~/src/linux$ find -name '*.c' | wc -l
20430

Functionality used by less than a quarter of the source files in the
kernel doesn't make sense to automatically include.  You have a clear
test that shows whether a file uses this functionality, which would
allow an automated patch adding the necessary #include lines.

That does raise an interesting general issue, though: when a change to
the kernel would involve patching several thousand files, and would
potentially produce a huge number of conflicts (and a huge number of
patches if broken out by subsystem) if fed through the normal process,
but can be described by a very short script that requires no manual
intervention, might it make sense to have a clear procedure for saying
"Hey Linus, can you please run this script on top-of-tree and commit the
result?"?

- Josh Triplett
