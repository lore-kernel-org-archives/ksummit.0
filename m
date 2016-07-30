Return-Path: <teg@jklm.no>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4540283D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 22:26:05 +0000 (UTC)
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BB4CE144
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 22:26:04 +0000 (UTC)
Received: by mail-vk0-f51.google.com with SMTP id n129so76628542vke.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 15:26:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.00.1607290140040.24757@cbobk.fhfr.pm>
References: <CANq1E4QvX6RMeapc8ZBRvg6UFdwCEbQMhgH=DqM6UZMkF3+T1g@mail.gmail.com>
	<alpine.LNX.2.00.1607290140040.24757@cbobk.fhfr.pm>
From: Tom Gundersen <teg@jklm.no>
Date: Sun, 31 Jul 2016 00:25:44 +0200
Message-ID: <CAG-2HqUpq6Hv+SrG--BStUMYS7r+L4m=gGk-hAsLaPnxjj1S8w@mail.gmail.com>
To: Jiri Kosina <jikos@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Bus IPC
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Jiri,

On Fri, Jul 29, 2016 at 1:42 AM, Jiri Kosina <jikos@kernel.org> wrote:
> Please put me to the "I still don't fully understand why teaching AF_UNIX
> about multicast shouldn't do the job" discussion group :)

Would be happy to discuss that. Though the short version is that there
is very little overlap between AF_UNIX and what we would need from
bus1.

Cheers,

Tom
