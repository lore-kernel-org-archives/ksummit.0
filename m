Return-Path: <adobriyan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E483B8E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 21:36:51 +0000 (UTC)
Received: from mail-lf0-f66.google.com (mail-lf0-f66.google.com
	[209.85.215.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 988B1AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 21:36:49 +0000 (UTC)
Received: by mail-lf0-f66.google.com with SMTP id 29so5129020lfv.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 06 Sep 2016 14:36:49 -0700 (PDT)
Date: Wed, 7 Sep 2016 00:36:44 +0300
From: Alexey Dobriyan <adobriyan@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20160906213644.GA16732@p183.telecom.by>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
	<20160906152243.766f3845@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160906152243.766f3845@gandalf.local.home>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [topic proposal] tracepoints and ABI
 stability warranties
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 06, 2016 at 03:22:43PM -0400, Steven Rostedt wrote:
> On Tue, 6 Sep 2016 19:51:43 +0100
> Al Viro <viro@ZenIV.linux.org.uk> wrote:
> 
> > 	I think this is something that needs to be discussed at KS; IMO we
> > need at least some way to express the degree of stability promises made
> > wrt individual tracepoints and some mechanisms for preventing silent creep
> > towards full stability; something along the lines of "unstable tracepoint $FOO
> > used by $PROGRAM, kernel tainted", at least.
> 
> What about having a set of tracepoints that are only enabled if one
> adds to the kernel command line "this-kernel-is-broken" and a big
> printk banner saying something like:

The solution was out there for quite some time :-)

	Scope of Compatibility
	Packages in Red Hat Enterprise Linux are classified under one of
	the following four compatibility levels:

	[ ] Compatibility level 1: APIs and ABIs are stable across three
	    major releases;

	[ ] Compatibility level 2: APIs and ABIs are stable within one major
	    release.

	[ ] Compatibility level 3: Reserved for future use.

	[X] Compatibility level 4: No compatibility is provided.

The winning move is to not play and let distros sort it out.

P.S.: techically every kernel release almost certainly breaks crash(1)
program, program many people on this list should be familiar with.
It is unclear why rules should be different for tracepoints.
