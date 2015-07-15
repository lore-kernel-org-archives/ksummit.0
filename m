Return-Path: <sasha.levin@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 19212C02
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 16:15:58 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E5BB1126
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 16:15:56 +0000 (UTC)
Message-ID: <55A68736.1010104@oracle.com>
Date: Wed, 15 Jul 2015 12:15:50 -0400
From: Sasha Levin <sasha.levin@oracle.com>
MIME-Version: 1.0
To: Greg KH <greg@kroah.com>, Olof Johansson <olof@lixom.net>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<20150713185118.GK11162@sirena.org.uk>
	<CAOesGMhFNjK2V23ZRN=KOfsYc=JawLwWf_x7wvHzBjP0UpbW7A@mail.gmail.com>
	<20150715160347.GB12543@kroah.com>
In-Reply-To: <20150715160347.GB12543@kroah.com>
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

On 07/15/2015 12:03 PM, Greg KH wrote:
>> > That would be the ideal setup for me though -- tagged or branched -rc
>> > candidates of stable releases that I'd be happy to put through the
>> > build/boot test at my end.
> kernelci now handles -rc stable releases, so would this just be a
> duplication of that work?

I've actually suggested -rc stable cycles for the purpose of getting -rc
stable kernels into users hands by making it possible for distros to
ship these as proposed/test kernels by giving them enough time (right now
the review cycle is only a few days, making it impossible for distros
to ship them).

As Guenter and Greg mentioned, there's already a fair amount of testing
being done on the queue branches, but there's really no testing being
done by end users before they receive a final kernel.


Thanks,
Sasha
