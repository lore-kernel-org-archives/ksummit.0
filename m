Return-Path: <lizefan@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 581B793E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 09:07:13 +0000 (UTC)
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [119.145.14.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 31354126
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 09:07:11 +0000 (UTC)
Message-ID: <55A77426.9010003@huawei.com>
Date: Thu, 16 Jul 2015 17:06:46 +0800
From: Zefan Li <lizefan@huawei.com>
MIME-Version: 1.0
To: Sasha Levin <sasha.levin@oracle.com>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<20150713185118.GK11162@sirena.org.uk>
	<CAOesGMhFNjK2V23ZRN=KOfsYc=JawLwWf_x7wvHzBjP0UpbW7A@mail.gmail.com>
	<20150715160347.GB12543@kroah.com> <55A68736.1010104@oracle.com>
In-Reply-To: <55A68736.1010104@oracle.com>
Content-Type: text/plain; charset="ISO-8859-1"
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

On 2015/7/16 0:15, Sasha Levin wrote:
> On 07/15/2015 12:03 PM, Greg KH wrote:
>>>> That would be the ideal setup for me though -- tagged or branched -rc
>>>> candidates of stable releases that I'd be happy to put through the
>>>> build/boot test at my end.
>> kernelci now handles -rc stable releases, so would this just be a
>> duplication of that work?
> 
> I've actually suggested -rc stable cycles for the purpose of getting -rc
> stable kernels into users hands by making it possible for distros to
> ship these as proposed/test kernels by giving them enough time (right now
> the review cycle is only a few days, making it impossible for distros
> to ship them).
> 
> As Guenter and Greg mentioned, there's already a fair amount of testing
> being done on the queue branches,

Now 0day has been testing stable releases on linux-stable.git, but I don't
think it tests queue branches? I asked Fengguang to run 0day on my 3.4.y
stable queue some time ago.

> but there's really no testing being
> done by end users before they receive a final kernel.
> 
