Return-Path: <labbott@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3C05BCC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Sep 2018 21:58:46 +0000 (UTC)
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E06FF77E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Sep 2018 21:58:45 +0000 (UTC)
Received: by mail-qt0-f171.google.com with SMTP id g44-v6so5823997qtb.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Sep 2018 14:58:45 -0700 (PDT)
To: Sasha Levin <Alexander.Levin@microsoft.com>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <60ed8d94-c793-9c51-5904-c4fd05bd065f@redhat.com>
Date: Tue, 4 Sep 2018 14:58:42 -0700
MIME-Version: 1.0
In-Reply-To: <20180904213340.GD16300@sasha-vm>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
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

On 09/04/2018 02:33 PM, Sasha Levin wrote:
> Why not set your own release schedule and just take the latest stable
> kernel at that point? So what if the .Z+1 kernel is out a day later? You
> could just queue it up for your next release.
> 

It's really rough on users to update that frequently. Fedora relies
on users to give feedback to let us know to push an update and on
older releases it can be hard to get feedback. We've sometimes had
issues where multiple stable issues get delayed because they haven't
gotten enough testing to be pushed. Admittedly that's a Fedora quirk
but it's still an issue that the short rc and release window is not
enough for many users to test and give feedback. When stable regressions
are introduced it's very difficult to guide users to bisect.

> This is exactly what would happen if you ask Greg to go on some sort of
> a schedule - he'll just defer the .Z+1 commits to what would have been
> the .Z+2 release, so you don't really win anything by moving to a
> stricter schedule.

I'd actually be okay with that. I'd rather focus on testing a known
set of commits and getting those stable before pushing out.

Thanks,
Laura
