Return-Path: <SRS0=twQ0=7Q=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3BDAC5AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 Aug 2017 19:49:13 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 32A8F49A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 Aug 2017 19:49:13 +0000 (UTC)
Date: Mon, 14 Aug 2017 15:49:10 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20170814154910.249caf70@gandalf.local.home>
In-Reply-To: <20170804160454.GC13098@kroah.com>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<20170804022639.p27oliuinqqatar2@thunk.org>
	<alpine.LSU.2.20.1708041040220.30597@cbobk.fhfr.pm>
	<c2091a67-0a06-44ae-86e0-84879f3c7865@suse.com>
	<20170804160454.GC13098@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Fri, 4 Aug 2017 09:04:54 -0700
Greg KH <greg@kroah.com> wrote:


> We could start searching linux-next for new additions of sysfs files
> (search for the ATTR macros), and complain that there are no matching
> Documentation/ABI/ updates at the same time.  I try to do that when
> reviewing patches that come through my trees, but yes, this is hard to
> keep up to date with.
> 
> Sounds like a good GSoC project though, setting up the infrastructure to
> do this in a semi-automated fashion.

And perhaps do the same for new tracepoints.

I'm wondering if we should start documenting all tracepoints, and have
them not be added unless there's documentation with them.

-- Steve
