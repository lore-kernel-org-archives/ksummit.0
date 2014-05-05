Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8211D95A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 01:03:05 +0000 (UTC)
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EBA4820206
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 01:03:04 +0000 (UTC)
Received: by mail-qa0-f47.google.com with SMTP id s7so863810qap.34
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 04 May 2014 18:03:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <53662254.9060100@huawei.com>
References: <53662254.9060100@huawei.com>
Date: Sun, 4 May 2014 18:03:04 -0700
Message-ID: <CAOesGMh0_EWhD29LEA-_hVOStb-4LhA124mFVyf=OnAgfuNAEw@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
To: Li Zefan <lizefan@huawei.com>
Content-Type: text/plain; charset=UTF-8
Cc: lizf.kern@gmail.com, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, May 4, 2014 at 4:19 AM, Li Zefan <lizefan@huawei.com> wrote:

> - Testing stable kernels
>
> The testing of stable kernels when a new version is under review seems
> quite limited. We have Dave's Trinity and Fengguang's 0day, but they
> are run on mainline/for-next only. Would be useful to also have them
> run on stable kernels?

I run Greg's queue through my builder for ARM configs, and they boot
on my and Kevin Hilman's ARM board farms. Of course, we don't have
extensive test coverage on those but at least they see the very
basics.


-Olof
