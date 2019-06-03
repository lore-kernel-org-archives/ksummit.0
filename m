Return-Path: <torvalds@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9437BD4B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 20:48:42 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
	[209.85.167.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0DBCC5D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 20:48:41 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id l26so14642973lfh.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 03 Jun 2019 13:48:41 -0700 (PDT)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com.
	[209.85.208.178]) by smtp.gmail.com with ESMTPSA id
	a25sm3291088lfc.28.2019.06.03.13.48.38
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Jun 2019 13:48:39 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id r76so17560873lja.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 03 Jun 2019 13:48:38 -0700 (PDT)
MIME-Version: 1.0
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<20190602180913.GR12898@sasha-vm>
	<667d4900-0a9a-d6f8-7012-3c15c2df7da8@linuxfoundation.org>
	<20190603180953.GA17954@chatter.i7.local>
In-Reply-To: <20190603180953.GA17954@chatter.i7.local>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 3 Jun 2019 13:48:22 -0700
Message-ID: <CAHk-=wgVYafLVe-ggAyWdC4Fxg7fCvJP5vgkLJSWPQhk_Xi-Cw@mail.gmail.com>
To: Shuah Khan <skhan@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>,
	Laura Abbott <labbott@redhat.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Squashing bugs!
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jun 3, 2019 at 11:10 AM Konstantin Ryabitsev
<konstantin@linuxfoundation.org> wrote:
>
> May I recommend using a project like git-bug [1] instead of a mailing
> list?

I'm not a huge fan of mailing lists only for bug handling, but on the
other hand, I do think that a bug handling thing fundamentally needs

 (a) automatic aging out of bug reports

 (b) targeted push notifications (ie ractically speaking - email)

and that the email part is important. And it can't just be a "hey,
something changed". It needs to contain enough information in the
email to give a developer sufficient knowledge that the developer
knows whether it's even worth it looking deeper at the bug, and
looking at the database (in fact, it should contain enough actual
information that for simple issues, the developer should go "D'oh!"
and just fix the bug).

We went through this with syzbot already, where the notification was
too heavy-handed and not useful. It has improved immensely. There's a
back-end with lots more data, but the emails have gone from "illegible
data" to "pretty informational", and I think it improved peoples
reaction to them a lot.

Apparently syzbot doesn't do well on the (a) side though. Honestly,
any system that just keeps things open for 300+ days has something
wrong with it. At some point it needs to be automatically either
closed, or re-notified. The "just keep it around" is simply not an
option.

                  Linus
