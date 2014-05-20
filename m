Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5556E2FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 May 2014 22:53:05 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DAFF12020B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 May 2014 22:53:04 +0000 (UTC)
Date: Tue, 20 May 2014 15:53:01 -0700
From: josh@joshtriplett.org
To: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <20140520225301.GC21744@cloud>
References: <537BA385.6090208@zytor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <537BA385.6090208@zytor.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Services needed from kernel.org
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 20, 2014 at 11:48:37AM -0700, H. Peter Anvin wrote:
> I have been discussing with the Linux Foundation about if there are any
> new IT services needed or desired for kernel developers (maybe or maybe
> not under the kernel.org.)  The kernel.org cleanup and inevitable
> changes meant we couldn't service some of the needs that we had in the
> past, some of which has moved to privately owned equipment and some of
> which has migrated to cloud services or discontinued.
> 
> However, the big question is: what IT services do kernel developers
> need, and how can we best provide them?  One idea bandied about would be
> to provide either managed or unmanaged VMs to kernel developers.  Would
> that reduce the workload on the upper tier of kernel developers so that
> we can focus more on our time on what actually provides value to our
> users and employers, and which we hopefully find more interesting/fun?

How feasible is it to support git hooks that want to construct and send
(significant volumes of) email, while retaining the security and
sandboxing currently being applied to git repositories?

- Josh Triplett
