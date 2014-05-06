Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 68897979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 19:45:25 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F1BB01FD46
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 19:45:24 +0000 (UTC)
Date: Tue, 6 May 2014 12:45:21 -0700
From: josh@joshtriplett.org
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <20140506194521.GB21332@cloud>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<20140506175842.GF20776@cloud>
	<1399404095.4218.51.camel@jlt4.sipsolutions.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1399404095.4218.51.camel@jlt4.sipsolutions.net>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Reviewing new API/ABI
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 06, 2014 at 09:21:35PM +0200, Johannes Berg wrote:
> On Tue, 2014-05-06 at 10:58 -0700, josh@joshtriplett.org wrote:
> > We need to have better processes for vetting new syscalls and ABIs far
> > more carefully than we currently do.
> 
> How far would you want to take this? New syscalls is one thing, but
> there are frequently additions to "subsystem APIs", e.g. in networking,
> that aren't really syscalls but part of netlink etc. Trying to vet all
> of that might very well end up just overwhelming the process, but on the
> other hand it's still something that probably should be done in some
> form.

We ought to give such new APIs as much scrutiny as we do new system
calls.  But let's not let the lack of perfection prevent us from trying
to do better than we have.

- Josh Triplett
