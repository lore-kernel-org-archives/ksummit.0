Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AC1804C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 20:53:44 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 39DF91FD45
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 20:53:43 +0000 (UTC)
Date: Mon, 5 May 2014 13:53:39 -0700
From: josh@joshtriplett.org
To: John Stultz <john.stultz@linaro.org>
Message-ID: <20140505205339.GB15815@cloud>
References: <5367D989.1000504@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5367D989.1000504@linaro.org>
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

On Mon, May 05, 2014 at 11:33:45AM -0700, John Stultz wrote:
> I'd like to discuss some thoughts on how to address the 2038 issues on
> 32bit architectures. This is important, as vendors are still producing
> lots of 32bit hardware, which may very well have 24+ year lifespans
> (think industrial control applications, security systems).  NetBSD and
> OpenBSD have recently broken their ABI, converted their time_t to long
> long, to properly address this. So I'd like to discuss thoughts on how
> Linux can do similar despite our no-breaking-userspace rules, after all,
> one way or another (almost) all of Linux's 32bit architectures are
> terminally broken past 2038.

I would be interested in this, not just because of time_t itself, but as
a general pattern for "how can we transition away from an old and broken
ABI".  Whether by introducing new system calls, new personalities,
seccomp filters, or other mechanisms, we should have some ways to start
such transitions and to smooth them out.  Sure, we never break
userspace, but that just means we need an appropriate
CONFIG_OLD_AND_BUSTED option for as long as people still need the old
ABI.

- Josh Triplett
