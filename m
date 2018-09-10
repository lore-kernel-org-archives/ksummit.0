Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 52362E4C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 23:00:24 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E338E7A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 23:00:23 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Josh Triplett <josh@joshtriplett.org>
Date: Tue, 11 Sep 2018 02:00:33 +0300
Message-ID: <4431655.3D9EiZEFlR@avalon>
In-Reply-To: <20180910213019.GB2579@localhost>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<2789743.8CivUegSaj@avalon> <20180910213019.GB2579@localhost>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
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

Hi Josh,

On Tuesday, 11 September 2018 00:30:19 EEST Josh Triplett wrote:
> On Mon, Sep 10, 2018 at 10:59:26PM +0300, Laurent Pinchart wrote:
> > One of the issues here is that patch series don't have fixed boundaries
> > over their lifetime, the same way patches don't. A patch can evolve in
> > scope from version to version, and similarly so can a patch series. It's
> > not uncommon for patches to be dropped or added and for series to be
> > split or merged. I've in the past incorporated part of an RFC patch
> > series in the v1 of a series with a larger scope (after discussing it
> > with the original developer of course).
> 
> I do have some tools and algorithms that could be adapted to help
> cross-match patch series and show how they evolve over time. It isn't
> that hard to detect patch reordering and show interdiffs between
> corresponding patches. Extending that to match patches between series
> isn't much harder.

That would be a very nice addition to patchwork. I believe we need heuristics 
to do this, and by definition they will never achieve a 100% success rate, but 
if we can find most links between patch series, we'll be in a much better 
position than we are now.

-- 
Regards,

Laurent Pinchart
