Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 61D4EAE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 03:36:45 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 62D2E32
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 03:36:44 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id AC78020568
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 23:36:43 -0400 (EDT)
Date: Wed, 15 Jul 2015 20:36:42 -0700
From: Greg KH <greg@kroah.com>
To: Sasha Levin <sasha.levin@oracle.com>
Message-ID: <20150716033642.GA7077@kroah.com>
References: <55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<20150713185118.GK11162@sirena.org.uk>
	<CAOesGMhFNjK2V23ZRN=KOfsYc=JawLwWf_x7wvHzBjP0UpbW7A@mail.gmail.com>
	<20150715160347.GB12543@kroah.com> <55A68736.1010104@oracle.com>
	<20150715164054.GA13378@kroah.com> <55A6CEF5.4000209@oracle.com>
	<20150715223418.GA3200@kroah.com> <55A6E144.4070300@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55A6E144.4070300@oracle.com>
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

On Wed, Jul 15, 2015 at 06:40:04PM -0400, Sasha Levin wrote:
> On 07/15/2015 06:34 PM, Greg KH wrote:
> >> What's the reasoning for doing it 1 per week? To get fixes out earlier?
> > Because if I don't, the number of patches are just too large for one
> > release.  And also it's good to get fixes out as soon as possible, right
> > now I'm running a few weeks behind and people are getting annoyed...
> 
> If the issue is just the size of the release then -rc might work here:
> rather than release once a week, you can finalize a release a week
> after it's been an -rc:
> 
> week 1: 4.2.1-rc1
> week 2: 4.2.1, 4.2.2-rc1
> week 3: 4.2.2, 4.2.3-rc1
> [...]

Ugh, that's just going to drive everyone crazy and confused.  Not to
mention a lot more work for me, and honestly, I'm pushed to my limit
with the number of stable/LTS kernels I'm handling right now.

And I doubt anyone will actually run the -rc releases, other than the
testers I have today :)

So I'll just leave things as-is, because it has worked pretty well for
the past decade.  There's always going to be bugs and regressions,
that's software.  What matters is how quickly they can be responded to.

thanks,

greg k-h
