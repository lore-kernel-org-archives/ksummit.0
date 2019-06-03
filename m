Return-Path: <sashal@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EF27ADC2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 21:10:06 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D23F6A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 21:10:05 +0000 (UTC)
Date: Mon, 3 Jun 2019 17:10:04 -0400
From: Sasha Levin <sashal@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20190603211004.GU12898@sasha-vm>
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<20190602180913.GR12898@sasha-vm>
	<667d4900-0a9a-d6f8-7012-3c15c2df7da8@linuxfoundation.org>
	<20190603180953.GA17954@chatter.i7.local>
	<CAHk-=wgVYafLVe-ggAyWdC4Fxg7fCvJP5vgkLJSWPQhk_Xi-Cw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <CAHk-=wgVYafLVe-ggAyWdC4Fxg7fCvJP5vgkLJSWPQhk_Xi-Cw@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Squashing bugs!
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jun 03, 2019 at 01:48:22PM -0700, Linus Torvalds wrote:
>On Mon, Jun 3, 2019 at 11:10 AM Konstantin Ryabitsev
><konstantin@linuxfoundation.org> wrote:
>>
>> May I recommend using a project like git-bug [1] instead of a mailing
>> list?
>
>I'm not a huge fan of mailing lists only for bug handling, but on the
>other hand, I do think that a bug handling thing fundamentally needs
>
> (a) automatic aging out of bug reports
>
> (b) targeted push notifications (ie ractically speaking - email)
>
>and that the email part is important. And it can't just be a "hey,
>something changed". It needs to contain enough information in the
>email to give a developer sufficient knowledge that the developer
>knows whether it's even worth it looking deeper at the bug, and
>looking at the database (in fact, it should contain enough actual
>information that for simple issues, the developer should go "D'oh!"
>and just fix the bug).

Would it make sense to do some bikeshedding around how an ideal email
bug report should look like, and then get syzbot and maybe kernelci to
switch to using this new format as an experiment?

A bunch the syzbot/kernelci/etc folks will be at LPC as well, and we'll
have the testing & fuzzing MC going on where this can be discussed and
agreed on once there is a concrete proposal.

>We went through this with syzbot already, where the notification was
>too heavy-handed and not useful. It has improved immensely. There's a
>back-end with lots more data, but the emails have gone from "illegible
>data" to "pretty informational", and I think it improved peoples
>reaction to them a lot.
>
>Apparently syzbot doesn't do well on the (a) side though. Honestly,
>any system that just keeps things open for 300+ days has something
>wrong with it. At some point it needs to be automatically either
>closed, or re-notified. The "just keep it around" is simply not an
>option.

My understanding is that syzbot closes a bug once the bot sees an
annotated commit indicating that it fixes a certain bug. These
annotations get lost/forgotten/etc so bugs remain open even after they
were fixed.

Maybe we could sync up our bugtrackers with the kernel's release cycle?
close all bugs older than a certain kernel version once the
corresponding stable kernel goes EoL?

--
Thanks,
Sasha
