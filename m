Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 07FCC2F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 18:09:58 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E36ED5D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 18:09:56 +0000 (UTC)
Received: by mail-qk1-f178.google.com with SMTP id s22so1019141qkj.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 03 Jun 2019 11:09:56 -0700 (PDT)
Date: Mon, 3 Jun 2019 14:09:53 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20190603180953.GA17954@chatter.i7.local>
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<20190602180913.GR12898@sasha-vm>
	<667d4900-0a9a-d6f8-7012-3c15c2df7da8@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <667d4900-0a9a-d6f8-7012-3c15c2df7da8@linuxfoundation.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Squashing bugs!
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jun 03, 2019 at 11:25:51AM -0600, Shuah Khan wrote:
>>>I'm interested in this topic for not just syzbot but other bug 
>>>trackers
>>>as well. Fedora gets a steady flow of bugs filed and the three official
>>>maintainers do their best to review but sometimes things slip through,
>>>especially if we hit a time when several of us are out or traveling.
>>>The kernel.org bugzilla also gets a number of bug reports that sometimes
>>>get lost. I'd love to see if there's a process that could work for syzbot
>>>and other high volume kernel trackers.
>>
>>Maybe the solution here is to standardize bug reporting bots? A
>>bugs@kernel.org mailing list which our various bots could report to with
>>a standard format that'll allow users/maintainers to easily filter it to
>>get only bugs they care about?
>>
>
>Easy to filter and manage is important for usability. I mentioned in my
>response Kees that I am finding it hard to update syzbot bug status to
>mark them as duplicate and/or fixed. The email interface is nice for
>individual bugs, but not very easy when it comes to other actions.

May I recommend using a project like git-bug [1] instead of a mailing 
list? I am increasingly worried that with mail services being 
increasingly centralized across 4-5 major providers we'll soon find it 
quite difficult to continue using mailing lists and have them reliably 
deliver mail to all participants. Heck, I've been battling with Gmail 
over the weekend due to it arbitrarily deciding that Robert Richter is 
receiving way too much mail.

Git-bug, on the other hand, is a great internal bug tracker for 
automatically generated bug reports -- it already provides the necessary 
structured platform, is decentralized, easily clonable and offline-able, 
and does not suffer from some mail provider arbitrarily deciding 
throttle its traffic for no obvious reason.

.. [1] https://github.com/MichaelMure/git-bug

-K
