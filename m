Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4021D96D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 02:22:08 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A29541F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 02:22:07 +0000 (UTC)
Date: Mon, 5 May 2014 19:21:59 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <20140506022158.GA1499@thin>
References: <5367D989.1000504@linaro.org> <20140505205339.GB15815@cloud>
	<53684526.7060507@zytor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53684526.7060507@zytor.com>
Cc: John Stultz <john.stultz@linaro.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 05, 2014 at 07:12:54PM -0700, H. Peter Anvin wrote:
> On 05/05/2014 01:53 PM, josh@joshtriplett.org wrote:
> > 
> > I would be interested in this, not just because of time_t itself, but as
> > a general pattern for "how can we transition away from an old and broken
> > ABI".  Whether by introducing new system calls, new personalities,
> > seccomp filters, or other mechanisms, we should have some ways to start
> > such transitions and to smooth them out.  Sure, we never break
> > userspace, but that just means we need an appropriate
> > CONFIG_OLD_AND_BUSTED option for as long as people still need the old
> > ABI.
> > 
> 
> There is absolutely nothing new here... we have dealt with these kinds
> of transitions for most of Linux' existence.
> 
> However, time_t is a particularly nontrivial issue, because it is not
> just a matter of changing the kernel ABI but a *lot* of user space ABIs
> also contain this type.  The kernel/glibc interfaces are pretty well set
> up to handle this properly these days, but I have very little hope that
> all the user space libraries will properly handle having two versions of
> a bunch of APIs with different version numbers.

64-bit off_t support seems like a similar issue; all the kernel
interfaces support 64-bit off_t, and glibc has #defines for
64-bit off_t, but a large number of userspace programs don't bother to
define them.

That seems like the right path to transition time_t as well.

- Josh Triplett
