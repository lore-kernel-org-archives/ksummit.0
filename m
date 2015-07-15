Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E64A9BA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 16:40:56 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6E2E8218
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 16:40:56 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id BB20420BA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 12:40:55 -0400 (EDT)
Date: Wed, 15 Jul 2015 09:40:54 -0700
From: Greg KH <greg@kroah.com>
To: Sasha Levin <sasha.levin@oracle.com>
Message-ID: <20150715164054.GA13378@kroah.com>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<20150713185118.GK11162@sirena.org.uk>
	<CAOesGMhFNjK2V23ZRN=KOfsYc=JawLwWf_x7wvHzBjP0UpbW7A@mail.gmail.com>
	<20150715160347.GB12543@kroah.com> <55A68736.1010104@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55A68736.1010104@oracle.com>
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

On Wed, Jul 15, 2015 at 12:15:50PM -0400, Sasha Levin wrote:
> On 07/15/2015 12:03 PM, Greg KH wrote:
> >> > That would be the ideal setup for me though -- tagged or branched -rc
> >> > candidates of stable releases that I'd be happy to put through the
> >> > build/boot test at my end.
> > kernelci now handles -rc stable releases, so would this just be a
> > duplication of that work?
> 
> I've actually suggested -rc stable cycles for the purpose of getting -rc
> stable kernels into users hands by making it possible for distros to
> ship these as proposed/test kernels by giving them enough time (right now
> the review cycle is only a few days, making it impossible for distros
> to ship them).

Given that I do a new -stable release on the average of one a week,
getting these into a distro as a testing kernel and getting feedback is
going to be pretty much impossible.

> As Guenter and Greg mentioned, there's already a fair amount of testing
> being done on the queue branches, but there's really no testing being
> done by end users before they receive a final kernel.

I get feedback from Fedora, they always let me know when something goes
really wrong, which is pretty unusual.  So I don't know if "more
testing" is going to really pay off.

thanks,

greg k-h
