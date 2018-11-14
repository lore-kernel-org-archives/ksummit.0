Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 48C09B4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Nov 2018 19:14:17 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5799882A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Nov 2018 19:14:16 +0000 (UTC)
Date: Wed, 14 Nov 2018 14:14:13 -0500
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Boaz Harrosh <boaz@plexistor.com>
Message-ID: <20181114191413.GD15807@thunk.org>
References: <823423bc-21f3-7e05-e5f7-a20296974250@plexistor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <823423bc-21f3-7e05-e5f7-a20296974250@plexistor.com>
Cc: Megan Phillips <mphillips@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] ZUFS - Zero Copy User-Mode FileSystem
 - One year Later
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I've scheduled this for Friday, at 9am.

(Boaz had a BOF slot scheduled for Tuesday afternoon, but due to
illness, he wasn't able to attend on Tuesday.  So I've scheduled him
at 9am Thursday on the Kernel Summit Track.  Megan, could you create a
title slide?  I'll talk to the AV folks to make sure they are aware.)

	      	      	   	       - Ted


On Thu, Nov 08, 2018 at 09:21:59PM +0200, Boaz Harrosh wrote:
> Linux Plumbers 2018: ZUFS - Zero Copy User-Mode FileSystem - One year Later
> 
> [This is the original pitch]
> 
> One year after its inception there are real hardened FSs. Many innovative fixtures.
> But is it ready for upstream?
> 
> Few highlights:
> 
> - ALL VFS api working including dax, mmap IOCTL xattrs ACLs ....
>   (Missing quota)
> - IO API changed (From last year)
> - Support for ASYNC operations
> - Support for both pmem and regular block devices
> - Support for private memory pools
> - ZTs multy-channel and dynamic channel allocation
> - And many more ...
> 
> In the talk I will give a short architectural and functional overview.
> Then will go over some of the leftover challenges.
> 
> And finally hope to engage in an open discussion of how this project should move forward
> to be accepted into the Kernel, gain more users and FS implementations.
> 
> [Matthew Wilcox asked what changed]
> 
> First of all last year was nothing was just a POC experiment. And At LSF it was only half backed.
> Since then we have a real implementation of real FSs. Passing xfstests. Passing QA and ready for
> client machines. This called for some changes in API as well as other fixes.
> Some highlights.
> 
> - The Kernel guys did not like the changes I proposed to elevate the huge performance and
>   scalability penalty of the VMA *unmap* of application pages into the server. So the IO API
>   needed to change. (So to keep the same target performance)
> - We now support both pmem and block-devices all in the same FS. Including data migration between
>   the two types.
> - We have more threads per core and channels can dynamically be allocated so server may sleep.
>   We also have a mechanism for locking a channel so not to get to the position of critical
>   operations starving for a channel.
> - Support for ASYNC operations. (Was all low latency SYNC OPs before)
> - Lots more little stuff that were not finished before.
> - ....
> 
> Cheers
> Boaz
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
