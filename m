Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5F54098F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 02:13:11 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4F1931F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 02:13:10 +0000 (UTC)
Message-ID: <53684526.7060507@zytor.com>
Date: Mon, 05 May 2014 19:12:54 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: josh@joshtriplett.org, John Stultz <john.stultz@linaro.org>
References: <5367D989.1000504@linaro.org> <20140505205339.GB15815@cloud>
In-Reply-To: <20140505205339.GB15815@cloud>
Content-Type: text/plain; charset=ISO-8859-1
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

On 05/05/2014 01:53 PM, josh@joshtriplett.org wrote:
> 
> I would be interested in this, not just because of time_t itself, but as
> a general pattern for "how can we transition away from an old and broken
> ABI".  Whether by introducing new system calls, new personalities,
> seccomp filters, or other mechanisms, we should have some ways to start
> such transitions and to smooth them out.  Sure, we never break
> userspace, but that just means we need an appropriate
> CONFIG_OLD_AND_BUSTED option for as long as people still need the old
> ABI.
> 

There is absolutely nothing new here... we have dealt with these kinds
of transitions for most of Linux' existence.

However, time_t is a particularly nontrivial issue, because it is not
just a matter of changing the kernel ABI but a *lot* of user space ABIs
also contain this type.  The kernel/glibc interfaces are pretty well set
up to handle this properly these days, but I have very little hope that
all the user space libraries will properly handle having two versions of
a bunch of APIs with different version numbers.

On the other hand, a *limited* form of compatibility could be had by
changing the windowing by changing int32_t (1901-2038) to uint32_t
(1970-2106).  This is similar to how a lot of legacy applications were
"fixed" for the Y2K problem.

That has its own share of problems, in particular legacy applications
might end up thinking that 2039 comes long before 2037, but there is to
some degree a choice of plague or cholera, as we say in Swedish.

	-hpa
