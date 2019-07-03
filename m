Return-Path: <labbott@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CB04410B7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 14:57:20 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6C431836
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 14:57:20 +0000 (UTC)
Received: by mail-qk1-f171.google.com with SMTP id v22so2957043qkj.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Jul 2019 07:57:20 -0700 (PDT)
To: Sasha Levin <sashal@kernel.org>, ksummit-discuss@lists.linuxfoundation.org
References: <20190703013557.GQ11506@sasha-vm>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <22d97d73-0f3f-7786-f9c5-d22b1b0df46b@redhat.com>
Date: Wed, 3 Jul 2019 10:57:12 -0400
MIME-Version: 1.0
In-Reply-To: <20190703013557.GQ11506@sasha-vm>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel process
 automation and improvement
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 7/2/19 9:35 PM, Sasha Levin wrote:
> Hi folks,
> 
> If there is interest, I'd like to go over the (minor) changes that went
> into the -stable kernel process since last year's MS, the various
> automations we now have, and how we have addressed some of the pain
> points that came up last year. I'd also love to hear from folks about
> the issues they're seeing with the process, and if there's anything we
> can do to make it better.
> 
> Some of the concerns that were raised during last year's MS (both in the
> group session as well as in the hallway track) which we've tried to
> address are:
> 
> - Commits missing because authors did not respond to Greg's "FAILED:"
>    mails.
> - Concerns about how well -stable kernels are tested.
> - "Fixes for fixes" end up being missed.
> - Saner AUTOSEL process.
> - Tracking of dropped commits.
> 
> I found last years feedback very valuable and hopefully have addressed
> some of it, hoping for the same this year as well.

I'm certainly interested in this.

Thanks,
Laura
