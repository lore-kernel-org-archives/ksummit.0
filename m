Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0A4351401
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 21:30:25 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 40770102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 21:30:24 +0000 (UTC)
Date: Mon, 10 Sep 2018 14:30:19 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20180910213019.GB2579@localhost>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<20180910153806.GR16300@sasha-vm>
	<CAOesGMjoe3XGeAoLhVpY2a-8q0Pgvc2bt9Dt58MYx=ZTuKHZTQ@mail.gmail.com>
	<2789743.8CivUegSaj@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2789743.8CivUegSaj@avalon>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Sep 10, 2018 at 10:59:26PM +0300, Laurent Pinchart wrote:
> One of the issues here is that patch series don't have fixed boundaries over 
> their lifetime, the same way patches don't. A patch can evolve in scope from 
> version to version, and similarly so can a patch series. It's not uncommon for 
> patches to be dropped or added and for series to be split or merged. I've in 
> the past incorporated part of an RFC patch series in the v1 of a series with a 
> larger scope (after discussing it with the original developer of course).

I do have some tools and algorithms that could be adapted to help
cross-match patch series and show how they evolve over time. It isn't
that hard to detect patch reordering and show interdiffs between
corresponding patches. Extending that to match patches between series
isn't much harder.
