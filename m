Return-Path: <lizefan@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5FE57995
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 01:25:47 +0000 (UTC)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [119.145.14.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6E8861F968
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 01:25:46 +0000 (UTC)
Message-ID: <53683A02.6060106@huawei.com>
Date: Tue, 6 May 2014 09:25:22 +0800
From: Li Zefan <lizefan@huawei.com>
MIME-Version: 1.0
To: John Stultz <john.stultz@linaro.org>
References: <5367D989.1000504@linaro.org>
In-Reply-To: <5367D989.1000504@linaro.org>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 2014/5/6 2:33, John Stultz wrote:
> I'd like to discuss some thoughts on how to address the 2038 issues on
> 32bit architectures. This is important, as vendors are still producing
> lots of 32bit hardware, which may very well have 24+ year lifespans
> (think industrial control applications, security systems).

This is definitely true for some of our products, so we're aware of this
issue and concerned about it.

> NetBSD and
> OpenBSD have recently broken their ABI, converted their time_t to long
> long, to properly address this. So I'd like to discuss thoughts on how
> Linux can do similar despite our no-breaking-userspace rules, after all,
> one way or another (almost) all of Linux's 32bit architectures are
> terminally broken past 2038.
> 
> Thomas (who I don't think can attend due to other plans) and I have had
> some small talks about this and we have different initial preferences on
> how to go about solving things, so I'd like to present the pros and cons
> of the current options we're stewing on, open the discussion up to other
> ideas, and see if there's a consensus on which way to go.
> 
> thanks
> -john
