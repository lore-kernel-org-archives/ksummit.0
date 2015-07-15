Return-Path: <sasha.levin@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 82214BC2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 22:40:12 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1F38F157
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 22:40:12 +0000 (UTC)
Message-ID: <55A6E144.4070300@oracle.com>
Date: Wed, 15 Jul 2015 18:40:04 -0400
From: Sasha Levin <sasha.levin@oracle.com>
MIME-Version: 1.0
To: Greg KH <greg@kroah.com>
References: <55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<20150713185118.GK11162@sirena.org.uk>
	<CAOesGMhFNjK2V23ZRN=KOfsYc=JawLwWf_x7wvHzBjP0UpbW7A@mail.gmail.com>
	<20150715160347.GB12543@kroah.com> <55A68736.1010104@oracle.com>
	<20150715164054.GA13378@kroah.com>
	<55A6CEF5.4000209@oracle.com> <20150715223418.GA3200@kroah.com>
In-Reply-To: <20150715223418.GA3200@kroah.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
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

On 07/15/2015 06:34 PM, Greg KH wrote:
>> What's the reasoning for doing it 1 per week? To get fixes out earlier?
> Because if I don't, the number of patches are just too large for one
> release.  And also it's good to get fixes out as soon as possible, right
> now I'm running a few weeks behind and people are getting annoyed...

If the issue is just the size of the release then -rc might work here:
rather than release once a week, you can finalize a release a week
after it's been an -rc:

week 1: 4.2.1-rc1
week 2: 4.2.1, 4.2.2-rc1
week 3: 4.2.2, 4.2.3-rc1
[...]

This would benefit both folks who won't their fixes in immediately, because
they can always grab the -rc, and folks who want more stable kernels since
we could only allow fixes to a give -rc release to be added to the tree.

You can make an argument that people can just use the release from one week
earlier, but that reduces from the potential stability of the release since
only fixes to a given tree would go between the -rc and the final release.


Thanks,
Sasha
