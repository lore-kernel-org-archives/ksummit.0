Return-Path: <labbott@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DFA7BCCC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Jun 2019 18:09:27 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7155686E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Jun 2019 18:09:27 +0000 (UTC)
Received: by mail-qt1-f173.google.com with SMTP id m29so9645539qtu.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Jun 2019 11:09:27 -0700 (PDT)
To: Sasha Levin <sashal@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<20190602180913.GR12898@sasha-vm>
	<667d4900-0a9a-d6f8-7012-3c15c2df7da8@linuxfoundation.org>
	<20190603180953.GA17954@chatter.i7.local>
	<CAHk-=wgVYafLVe-ggAyWdC4Fxg7fCvJP5vgkLJSWPQhk_Xi-Cw@mail.gmail.com>
	<20190603211004.GU12898@sasha-vm>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <f8b164b6-475d-99e8-1720-965d06ddc392@redhat.com>
Date: Tue, 4 Jun 2019 14:09:19 -0400
MIME-Version: 1.0
In-Reply-To: <20190603211004.GU12898@sasha-vm>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
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

On 6/3/19 5:10 PM, Sasha Levin wrote:
> Maybe we could sync up our bugtrackers with the kernel's release cycle?
> close all bugs older than a certain kernel version once the
> corresponding stable kernel goes EoL?

We do something like this for Fedora. After the new kernel gets rebased,
we ask the reporters if the bug is still reproducible. This helps
prune down some of the one off cases nobody ever saw again as well as
issues which were actually fixed. Humans sometimes get annoyed at this as
it looks like we're not paying attention but bots wouldn't care if we
closed their own issues.

Laura
