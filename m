Return-Path: <sashal@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9956686D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jun 2019 12:49:43 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AFE4619B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jun 2019 12:49:41 +0000 (UTC)
Date: Wed, 5 Jun 2019 08:49:40 -0400
From: Sasha Levin <sashal@kernel.org>
To: Laura Abbott <labbott@redhat.com>
Message-ID: <20190605124940.GC29739@sasha-vm>
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<20190602180913.GR12898@sasha-vm>
	<667d4900-0a9a-d6f8-7012-3c15c2df7da8@linuxfoundation.org>
	<20190603180953.GA17954@chatter.i7.local>
	<CAHk-=wgVYafLVe-ggAyWdC4Fxg7fCvJP5vgkLJSWPQhk_Xi-Cw@mail.gmail.com>
	<20190603211004.GU12898@sasha-vm>
	<f8b164b6-475d-99e8-1720-965d06ddc392@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f8b164b6-475d-99e8-1720-965d06ddc392@redhat.com>
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

On Tue, Jun 04, 2019 at 02:09:19PM -0400, Laura Abbott wrote:
>On 6/3/19 5:10 PM, Sasha Levin wrote:
>>Maybe we could sync up our bugtrackers with the kernel's release cycle?
>>close all bugs older than a certain kernel version once the
>>corresponding stable kernel goes EoL?
>
>We do something like this for Fedora. After the new kernel gets rebased,
>we ask the reporters if the bug is still reproducible. This helps
>prune down some of the one off cases nobody ever saw again as well as
>issues which were actually fixed. Humans sometimes get annoyed at this as
>it looks like we're not paying attention but bots wouldn't care if we
>closed their own issues.

Sadly that's reality, we can't fix *all* bugs, so sometimes real bugs
would get closed but then hopefully be re-opened again if bots/users are
still hitting them.

Maybe they should be closed with a "-ENOREPRO" which would hopefully
encourage those users/bots to try and repro the issue on a newer version
of the kernel.

--
Thanks,
Sasha
