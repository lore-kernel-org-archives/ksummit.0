Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F2355900
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 16:06:34 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 92108350
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 16:05:54 +0000 (UTC)
Date: Fri, 4 Aug 2017 09:04:54 -0700
From: Greg KH <greg@kroah.com>
To: Hannes Reinecke <hare@suse.com>
Message-ID: <20170804160454.GC13098@kroah.com>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<20170804022639.p27oliuinqqatar2@thunk.org>
	<alpine.LSU.2.20.1708041040220.30597@cbobk.fhfr.pm>
	<c2091a67-0a06-44ae-86e0-84879f3c7865@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c2091a67-0a06-44ae-86e0-84879f3c7865@suse.com>
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

On Fri, Aug 04, 2017 at 10:53:01AM +0200, Hannes Reinecke wrote:
> On 08/04/2017 10:42 AM, Jiri Kosina wrote:
> > On Thu, 3 Aug 2017, Theodore Ts'o wrote:
> > 
> >> One way that we could try to make things better is by having some kind
> >> of semi-automated system which monitors changes in include/uapi/*.h in
> >> linux-next.  
> > 
> > It's unfortunately just uapi though, and for sysfs it's a bit more 
> > difficult to define a pathname pattern to watch for.
> > 
> Yeah; that has been my main headache with the kABI stuff.
> Nowadays sysfs is considered part of the kABI, but we have no way of
> tracking it; we basically rely on people filling out some off-side
> documentation, and hope they're not missing anything.
> And we don't mess up when generating patches :-)

We could start searching linux-next for new additions of sysfs files
(search for the ATTR macros), and complain that there are no matching
Documentation/ABI/ updates at the same time.  I try to do that when
reviewing patches that come through my trees, but yes, this is hard to
keep up to date with.

Sounds like a good GSoC project though, setting up the infrastructure to
do this in a semi-automated fashion.

greg k-h
