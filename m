Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 585F3982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 22:34:23 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C6E2FF1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 22:34:22 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 263A420BA7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 18:34:22 -0400 (EDT)
Date: Wed, 15 Jul 2015 15:34:18 -0700
From: Greg KH <greg@kroah.com>
To: Sasha Levin <sasha.levin@oracle.com>
Message-ID: <20150715223418.GA3200@kroah.com>
References: <55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<20150713185118.GK11162@sirena.org.uk>
	<CAOesGMhFNjK2V23ZRN=KOfsYc=JawLwWf_x7wvHzBjP0UpbW7A@mail.gmail.com>
	<20150715160347.GB12543@kroah.com> <55A68736.1010104@oracle.com>
	<20150715164054.GA13378@kroah.com> <55A6CEF5.4000209@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55A6CEF5.4000209@oracle.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 15, 2015 at 05:21:57PM -0400, Sasha Levin wrote:
> On 07/15/2015 12:40 PM, Greg KH wrote:
> >> On 07/15/2015 12:03 PM, Greg KH wrote:
> >>>>> > >> > That would be the ideal setup for me though -- tagged or branched -rc
> >>>>> > >> > candidates of stable releases that I'd be happy to put through the
> >>>>> > >> > build/boot test at my end.
> >>> > > kernelci now handles -rc stable releases, so would this just be a
> >>> > > duplication of that work?
> >> > 
> >> > I've actually suggested -rc stable cycles for the purpose of getting -rc
> >> > stable kernels into users hands by making it possible for distros to
> >> > ship these as proposed/test kernels by giving them enough time (right now
> >> > the review cycle is only a few days, making it impossible for distros
> >> > to ship them).
> > Given that I do a new -stable release on the average of one a week,
> > getting these into a distro as a testing kernel and getting feedback is
> > going to be pretty much impossible.
> 
> Agreed, it's probably better for the LTS kernels where it's better to trade
> off release frequency for stability.
> 
> What's the reasoning for doing it 1 per week? To get fixes out earlier?

Because if I don't, the number of patches are just too large for one
release.  And also it's good to get fixes out as soon as possible, right
now I'm running a few weeks behind and people are getting annoyed...

thanks,

greg k-h
