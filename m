Return-Path: <Boaz.Harrosh@netapp.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0B6A9253
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Oct 2018 09:35:58 +0000 (UTC)
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0074.outbound.protection.outlook.com [104.47.33.74])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4CB9512E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Oct 2018 09:35:57 +0000 (UTC)
From: "Harrosh, Boaz" <Boaz.Harrosh@netapp.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Wed, 3 Oct 2018 09:35:54 +0000
Message-ID: <MWHPR06MB2896E4C6CE916007BCB66305EEE90@MWHPR06MB2896.namprd06.prod.outlook.com>
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: [Ksummit-discuss] [TECH TOPIC] ZUFS - Zero Copy User-Mode
	FileSystem - One year Later
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Linux Plumbers 2018: ZUFS - Zero Copy User-Mode FileSystem - One year Later

One year after its inception there are real hardened FSs. Real performance =
measurements.
and many innovative fixtures. But is it ready for upstream?

Few highlights:

- ALL VFS api working including dax, mmap IOCTL xattrs ACLs ....
=A0 (Missing quota)
- IO API changed (From last year)
- Support for ASYNC operations
- Support for both pmem and regular block devices
- Support for private memory pools
- ZTs multy-channel and dynamic channel allocation
- And many more ...

In the talk I will give a short architectural and functional overview.
Then will go over some of the leftover challenges.

And finally hope to engage in an open discussion of how this project should=
 move forward
to be accepted into the Kernel, gain more users and FS implementations.

Cheers
Boaz
