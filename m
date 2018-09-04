Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AEC02CAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Sep 2018 20:16:24 +0000 (UTC)
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0132.outbound.protection.outlook.com [104.47.33.132])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 23DA271C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Sep 2018 20:16:24 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Tue, 4 Sep 2018 20:16:21 +0000
Message-ID: <20180904201620.GC16300@sasha-vm>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <401EE1831B58A54A933914A3B40D095A@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi folks,

I've previously sent a mail
(https://lwn.net/ml/linux-kernel/20180501163818.GD1468@sasha-vm/) about
this topic, so I won't repeat everything here.

>From the dicussion that ensued, it seems that there is an agreement that
there is a problem with the process, but different maintainers have
different ideas on how to resolve this. Achieving any sort of a
consensus over mails seems to be impossible.

I'd like to have a discussion about this topic. It is my belief that
this is a "low hanging fruit" and by addressing it we can prevent a good
portion of the bugs we have to deal with from creeping in in the first
place.

If there is more information folks need to support making a decision I'd
be happy to work on it so it will be available during discussions. I
could also propose a few possible solutions, but I suspect we have more
than enough ideas about how that might look - we just need to reach a
consensus about one.


Thanks,
Sasha=
