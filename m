Return-Path: <mhocko@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 956DF88A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Sep 2016 12:51:59 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D2359149
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Sep 2016 12:51:58 +0000 (UTC)
Received: from relay2.suse.de (charybdis-ext.suse.de [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 33E67AAEF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Sep 2016 12:51:56 +0000 (UTC)
Date: Mon, 19 Sep 2016 14:51:56 +0200
From: Michal Hocko <mhocko@suse.cz>
To: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <20160919125156.GA10793@dhcp22.suse.cz>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
	<20160906152243.766f3845@gandalf.local.home>
	<20160906213644.GA16732@p183.telecom.by>
	<20160906175343.2f0d9135@gandalf.local.home>
	<20160906224100.GA17212@p183.telecom.by>
	<20160907051039.GG2356@ZenIV.linux.org.uk>
	<CALCETrVRFVkpk5bbH1jYxhh3nWYoJtXMFaMo2yR25sntGOrnDw@mail.gmail.com>
	<ec419997-9faa-71fd-1e5b-a8353c5bc5ba@suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ec419997-9faa-71fd-1e5b-a8353c5bc5ba@suse.cz>
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

On Wed 07-09-16 08:41:23, Vlastimil Babka wrote:
> On 09/07/2016 07:30 AM, Andy Lutomirski wrote:
> > On Sep 6, 2016 10:10 PM, "Al Viro" <viro@zeniv.linux.org.uk
> > <mailto:viro@zeniv.linux.org.uk>> wrote:
> > > 1) piss-poor API is added in form of tracehook.  It exports some
> > information
> > > that can be used to derive something genuinely interesting.  Most of the
> > > time.  Corner cases are unsolvable, even though it might be possible to
> > > provide the interesting part sanely.  Just not in that form.  Moreover,
> > > faking the bits used to derive that information so that existing userland
> > > logics would yield the right result is bloody hard and restricts what we
> > > can do kernel-side, even though the real thing userland wants would
> > not have
> > > such problems.
> > > 
> > 
> > Agreed.
> > 
> > I wouldn't mind a policy that tracepoints are simply never stable.
> > Maybe we should even deliberately change them periodically to drive the
> > point home.
> 
> I would wish that as well. Tracepoints sometimes must expose implementation
> details to be useful for debugging *the implementation*. The tools that use
> them to build some extra interesting metrics on top the tracepoints may
> often need to know even more about the implementation for correct
> interpretation of the data.
> 
> Even if the kernel implementation changes *without* touching the tracepoint
> format, the changed behavior might still destroy these metrics. (I hope it's
> understandable what I'm trying to say, I can't think of a good example right
> now). Do we want to set the implementation in stone to such extent? That
> would suck. If not, then the only way would be to indeed not mainline any
> tracepoints, which would also suck.

Absolutely agreed. As an example just look at the recent reclaim
changes. We no longer do per-zone and replaced it by per-node. This has
required changes to the tracepoint as well. Just look at how
599d0c954f91d0689c9bb421b5bc04ea02437a41 changed
mm_vmscan_lru_shrink_inactive. We definitely do not want to cast our
implementation details into stone.

My recollection is that tracepoints will never be considered a stable
ABI. If we want something stable then we have proper ways to use...

-- 
Michal Hocko
SUSE Labs
