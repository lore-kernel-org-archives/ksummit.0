Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3FDA68DC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Jun 2019 22:22:18 +0000 (UTC)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
	[209.85.166.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CB84619B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Jun 2019 22:22:17 +0000 (UTC)
Received: by mail-io1-f52.google.com with SMTP id n5so18685971ioc.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Jun 2019 15:22:17 -0700 (PDT)
Date: Tue, 4 Jun 2019 18:22:14 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20190604222214.GA20929@chatter.i7.local>
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<20190602180913.GR12898@sasha-vm>
	<667d4900-0a9a-d6f8-7012-3c15c2df7da8@linuxfoundation.org>
	<20190603180953.GA17954@chatter.i7.local>
	<CAHk-=wgVYafLVe-ggAyWdC4Fxg7fCvJP5vgkLJSWPQhk_Xi-Cw@mail.gmail.com>
	<20190604214303.GB17589@chatter.i7.local>
	<4bc7ff3c-d190-f9a0-5088-9dc99ab7741d@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <4bc7ff3c-d190-f9a0-5088-9dc99ab7741d@linuxfoundation.org>
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

On Tue, Jun 04, 2019 at 04:02:21PM -0600, Shuah Khan wrote:
>>>>May I recommend using a project like git-bug [1] instead of a 
>>>>mailing
>>>>list?
>>>
>
>I experimented with git-bug a bit. Doesn't look like it is mature enough
>for our use. It depends on golang-go
>
>I would like to have the option to build from sources, the instructions
>are rather poor and couldn't build following those.
>
>Is there another git-bug like option we can look into?

If there exists one, I'm unaware of it, unfortunately. The right person 
to talk to about developing something like this would be the author of 
Public-Inbox (Eric Wong), who digs distributed systems and would 
probably love working on something like this.

However, I have been unsuccessful in getting LF to fund such development 
projects, and he's certainly not in a position to work on something like 
this for free.

Hey, you work at LF now. Maybe you'll have more luck convincing The 
Right People that this is important work that would greatly benefit the 
Linux community? :)

-K
