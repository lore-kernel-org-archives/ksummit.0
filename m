Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 048BEBD4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 03:03:33 +0000 (UTC)
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0110.outbound.protection.outlook.com
	[104.47.37.110])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7EDCCF8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 03:03:32 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Tue, 18 Sep 2018 03:03:30 +0000
Message-ID: <20180918030329.GN3821@sasha-vm>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <18B0C937DB5D9244B3034A6089E3EA3B@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: [Ksummit-discuss] [TECH TOPIC] Building Stable Kernel Trees with
	Machine Learning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi all,

Julia Lawall and myself would like to propose this topic for the
technical track.

An overview:

Building stable trees is difficult; we are required to find only commits
that fix bugs (needle) in the massive flow of commits that go upstream
(haystack).

Currently the process is based on authors and maintainers tagging their
commits properly and helping stable maintainers to know that they should
be picking up these patches.

However, this doesn't always happen right. Commits get lost, forgotten,
or never looked at to begin with. This means that important fixes are
being left out of stable trees and not reaching the users who rely on
stable trees for fixes.

This talk with go over a new approach to detect bug fixing commits in
the kernel tree using machine learning, and demonstrate how it was used
to submit over a thousand commits to various stable trees.

--
Thanks,
Sasha=
