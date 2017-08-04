Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2C61198C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 17:14:48 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8A38ACB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 17:14:46 +0000 (UTC)
Date: Fri, 4 Aug 2017 13:14:44 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Greg KH <greg@kroah.com>
Message-ID: <20170804171444.gv7ev6zhkj3bzf5u@thunk.org>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<20170804022639.p27oliuinqqatar2@thunk.org>
	<alpine.LSU.2.20.1708041040220.30597@cbobk.fhfr.pm>
	<c2091a67-0a06-44ae-86e0-84879f3c7865@suse.com>
	<20170804160454.GC13098@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170804160454.GC13098@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 04, 2017 at 09:04:54AM -0700, Greg KH wrote:
> 
> We could start searching linux-next for new additions of sysfs files
> (search for the ATTR macros), and complain that there are no matching
> Documentation/ABI/ updates at the same time.  I try to do that when
> reviewing patches that come through my trees, but yes, this is hard to
> keep up to date with.
> 
> Sounds like a good GSoC project though, setting up the infrastructure to
> do this in a semi-automated fashion.

This sounds like an obvious thing to add to checkpatch?

     	    	    	    	     	 - Ted
