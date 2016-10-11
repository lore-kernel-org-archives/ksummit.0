Return-Path: <adobriyan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CBEA39C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Oct 2016 14:14:19 +0000 (UTC)
Received: from mail-lf0-f67.google.com (mail-lf0-f67.google.com
	[209.85.215.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 38A4D145
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Oct 2016 14:14:19 +0000 (UTC)
Received: by mail-lf0-f67.google.com with SMTP id p80so4002463lfp.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Oct 2016 07:14:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161011021317.GA22492@outlook.office365.com>
References: <20160903052014.GA4850@outlook.office365.com>
	<87mvjbbtds.fsf@x220.int.ebiederm.org>
	<20160916055857.GA29753@outlook.office365.com>
	<874m5dnere.fsf@x220.int.ebiederm.org>
	<20161011021317.GA22492@outlook.office365.com>
From: Alexey Dobriyan <adobriyan@gmail.com>
Date: Tue, 11 Oct 2016 17:14:16 +0300
Message-ID: <CACVxJT_muz8vgu4dJ2Gk4NGjRkMgNqyJy+-bUZjk4eLnkJz6dw@mail.gmail.com>
To: Andrei Vagin <avagin@virtuozzo.com>
Content-Type: text/plain; charset=UTF-8
Cc: Kirill Kolyshkin <kir@openvz.org>, David Ahern <dsahern@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Patrick McHardy <kaber@trash.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Netlink engine issues,
 and ways to fix those
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

>> > On Tue, Sep 13, 2016 at 12:29:35PM -0500, Eric W. Biederman wrote:

>> To some extent it matters where the cost is.
>>
>> At a practical level we already have a binary protocol for getting a
>> list of all of the processes in the system, readdir on /proc.

readdir() on /proc is only partially binary, because the interesting part
for checkpoint purposes is in text

Generic userspace may or may not convert pid back to binary
(things like top should do it because of sorting output).

And _you_ need to filter out kernel threads.
