Return-Path: <boaz@plexistor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1EC56A95
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 Nov 2018 19:22:04 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 81B0C771
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 Nov 2018 19:22:03 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id f2-v6so2260943wme.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 08 Nov 2018 11:22:03 -0800 (PST)
Received: from [10.0.0.5] ([207.232.55.62])
	by smtp.googlemail.com with ESMTPSA id
	y16-v6sm8754069wrn.18.2018.11.08.11.22.00
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 08 Nov 2018 11:22:00 -0800 (PST)
From: Boaz Harrosh <boaz@plexistor.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Message-ID: <823423bc-21f3-7e05-e5f7-a20296974250@plexistor.com>
Date: Thu, 8 Nov 2018 21:21:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [Ksummit-discuss] [TOPIC] ZUFS - Zero Copy User-Mode FileSystem -
	One year Later
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Linux Plumbers 2018: ZUFS - Zero Copy User-Mode FileSystem - One year Later

[This is the original pitch]

One year after its inception there are real hardened FSs. Many innovative fixtures.
But is it ready for upstream?

Few highlights:

- ALL VFS api working including dax, mmap IOCTL xattrs ACLs ....
  (Missing quota)
- IO API changed (From last year)
- Support for ASYNC operations
- Support for both pmem and regular block devices
- Support for private memory pools
- ZTs multy-channel and dynamic channel allocation
- And many more ...

In the talk I will give a short architectural and functional overview.
Then will go over some of the leftover challenges.

And finally hope to engage in an open discussion of how this project should move forward
to be accepted into the Kernel, gain more users and FS implementations.

[Matthew Wilcox asked what changed]

First of all last year was nothing was just a POC experiment. And At LSF it was only half backed.
Since then we have a real implementation of real FSs. Passing xfstests. Passing QA and ready for
client machines. This called for some changes in API as well as other fixes.
Some highlights.

- The Kernel guys did not like the changes I proposed to elevate the huge performance and
  scalability penalty of the VMA *unmap* of application pages into the server. So the IO API
  needed to change. (So to keep the same target performance)
- We now support both pmem and block-devices all in the same FS. Including data migration between
  the two types.
- We have more threads per core and channels can dynamically be allocated so server may sleep.
  We also have a mechanism for locking a channel so not to get to the position of critical
  operations starving for a channel.
- Support for ASYNC operations. (Was all low latency SYNC OPs before)
- Lots more little stuff that were not finished before.
- ....

Cheers
Boaz
