Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E9E62C03
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 04:53:28 +0000 (UTC)
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0115.outbound.protection.outlook.com [104.47.34.115])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5B8E48B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 04:53:28 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Laura Abbott <labbott@redhat.com>
Date: Wed, 5 Sep 2018 04:53:26 +0000
Message-ID: <20180905045325.GG16300@sasha-vm>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<60ed8d94-c793-9c51-5904-c4fd05bd065f@redhat.com>
In-Reply-To: <60ed8d94-c793-9c51-5904-c4fd05bd065f@redhat.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <7EF7E0E1A3B1F64BBB0E4E809243857C@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 04, 2018 at 02:58:42PM -0700, Laura Abbott wrote:
>On 09/04/2018 02:33 PM, Sasha Levin wrote:
>>Why not set your own release schedule and just take the latest stable
>>kernel at that point? So what if the .Z+1 kernel is out a day later? You
>>could just queue it up for your next release.
>>
>
>It's really rough on users to update that frequently. Fedora relies
>on users to give feedback to let us know to push an update and on
>older releases it can be hard to get feedback. We've sometimes had
>issues where multiple stable issues get delayed because they haven't
>gotten enough testing to be pushed. Admittedly that's a Fedora quirk
>but it's still an issue that the short rc and release window is not
>enough for many users to test and give feedback. When stable regressions
>are introduced it's very difficult to guide users to bisect.
>
>>This is exactly what would happen if you ask Greg to go on some sort of
>>a schedule - he'll just defer the .Z+1 commits to what would have been
>>the .Z+2 release, so you don't really win anything by moving to a
>>stricter schedule.
>
>I'd actually be okay with that. I'd rather focus on testing a known
>set of commits and getting those stable before pushing out.

My point is that Fedora can just skip a certain stable release if the
timing is off. If Greg releases .Z+1 but you just started testing .Z
just proceed with .Z and go with .Z+2 for your next release.

The set of commits in .Z and .Z+2 would be exactly the same if Greg is
asked to wait longer between releases.

--
Thanks,
Sasha=
