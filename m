Return-Path: <mark.rutland@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 592BC89C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 09:34:45 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.101.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0B6EB17B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 09:34:45 +0000 (UTC)
Date: Mon, 1 Aug 2016 10:34:27 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Paul Burton <paul.burton@imgtec.com>
Message-ID: <20160801093417.GA11119@leverpostej>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	<CAGXu5j+M06pdOB7Phqg==xg4p7=9ggmZciQuGZaNTXaW=-BCbg@mail.gmail.com>
	<3aa8df3e-3705-9fd5-640c-37c0be2af561@imgtec.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3aa8df3e-3705-9fd5-640c-37c0be2af561@imgtec.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Jann Horn <jann@thejh.net>
Subject: Re: [Ksummit-discuss] [nominations] kernel hardening /
 self-protection / whatever
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Jul 31, 2016 at 10:55:29AM +0100, Paul Burton wrote:
> It would be interesting to hear from people focused on security what
> their requirements, current & coming soon, from arch code are.

I'd be interested in this, and I think it would also be worth having:

- Ard Biesheuvel
- Laura Abbott

Who have both done work on various protection improvements for arm/arm64
(e.g. DEBUG_RODATA & KASLR), and generic infrastructure pieces (e.g.
LKDTM).

Thanks,
Mark.
