Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2FE5E48E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 14:22:38 +0000 (UTC)
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 999481FA9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 14:22:37 +0000 (UTC)
Received: by mail-qg0-f45.google.com with SMTP id z60so6565431qgd.32
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 07:22:36 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140511083729.211e9b5f@lwn.net>
References: <20140511030009.GO12708@titan.lakedaemon.net>
	<20140511083729.211e9b5f@lwn.net>
Date: Sun, 11 May 2014 07:22:36 -0700
Message-ID: <CAOesGMjY7dwSt3Cc582qy1DHi9qFsY6rUcvU4+YNWya7AyK=fQ@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
To: Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset=UTF-8
Cc: Rob Herring <robh@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Linux ARM Kernel <linux-arm-kernel@lists.infradead.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] ARM legacy board DT conversion
	finalization
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, May 11, 2014 at 5:37 AM, Jonathan Corbet <corbet@lwn.net> wrote:
> On Sat, 10 May 2014 23:00:09 -0400
> Jason Cooper <jason@lakedaemon.net> wrote:
>
>> So, I'm proposing a session where each sub-arch gives a brief run-down
>> of the status of the legacy board conversion, and wraps up with a todo
>> list.  After all of the sub-arches have given their status (5 - 10
>> minutes each?), we hash out helping each other with the final pieces.
>
> This *really* looks like an ARM minisummit topic to me;

Agreed.

> hopefully one of those is in the works?

Not this year.

Last year we had a two-day workshop, and most of it ended up centered
around DT. This year, that topic has overlap with other architectures
so it's likely better handled as shared technical track topic.

There doesn't seem to be a whole lot of topics needing to be covered,
at least not based on the call for proposals at ELC (see reply from
Alexandre). So, we'll take a break this year and come back and
organize one next year if there's more material again.

I suppose it's a positive sign; things are running relatively smoothly
right now so there's less stuff to iron out in person, or at least to
iron out together with a roomful of attendees.


-Olof
