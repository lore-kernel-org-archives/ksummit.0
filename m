Return-Path: <skhan@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6E9BAB9E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Jun 2019 22:02:24 +0000 (UTC)
Received: from mail-it1-f176.google.com (mail-it1-f176.google.com
	[209.85.166.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 20ADD19B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Jun 2019 22:02:24 +0000 (UTC)
Received: by mail-it1-f176.google.com with SMTP id n189so544989itd.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Jun 2019 15:02:24 -0700 (PDT)
To: Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>, Laura Abbott <labbott@redhat.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Shuah Khan <skhan@linuxfoundation.org>
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<20190602180913.GR12898@sasha-vm>
	<667d4900-0a9a-d6f8-7012-3c15c2df7da8@linuxfoundation.org>
	<20190603180953.GA17954@chatter.i7.local>
	<CAHk-=wgVYafLVe-ggAyWdC4Fxg7fCvJP5vgkLJSWPQhk_Xi-Cw@mail.gmail.com>
	<20190604214303.GB17589@chatter.i7.local>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <4bc7ff3c-d190-f9a0-5088-9dc99ab7741d@linuxfoundation.org>
Date: Tue, 4 Jun 2019 16:02:21 -0600
MIME-Version: 1.0
In-Reply-To: <20190604214303.GB17589@chatter.i7.local>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Squashing bugs!
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 6/4/19 3:43 PM, Konstantin Ryabitsev wrote:
> On Mon, Jun 03, 2019 at 01:48:22PM -0700, Linus Torvalds wrote:
>> On Mon, Jun 3, 2019 at 11:10 AM Konstantin Ryabitsev
>> <konstantin@linuxfoundation.org> wrote:
>>>
>>> May I recommend using a project like git-bug [1] instead of a mailing
>>> list?
>>

I experimented with git-bug a bit. Doesn't look like it is mature enough
for our use. It depends on golang-go

I would like to have the option to build from sources, the instructions
are rather poor and couldn't build following those.

Is there another git-bug like option we can look into?

thanks,
-- Shuah
