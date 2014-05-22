Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A8994988
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 17:38:08 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 041AD20309
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 17:38:07 +0000 (UTC)
Date: Thu, 22 May 2014 13:38:04 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20140522173804.GA11448@thunk.org>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140521201108.76ab84af@notabene.brown>
	<CAPcyv4itcQzi1CMFYR-+rRovccwMzg0V0B0smU8KMNLVM5SEVg@mail.gmail.com>
	<2980546.hqgiQV7seV@vostro.rjw.lan>
	<CAPcyv4hJvjY94-agCi8Twz-Np8_vxv3G7+eFSaAPjVOVyQ0gOQ@mail.gmail.com>
	<20140522154859.GA28971@thunk.org>
	<CAPcyv4jxFM=gqDbEmyaXhot4OehsM6B3hsBVLcuq+ueE6i_z5A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPcyv4jxFM=gqDbEmyaXhot4OehsM6B3hsBVLcuq+ueE6i_z5A@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [nomination] Move Fast and Oops
 Things
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 22, 2014 at 09:31:44AM -0700, Dan Williams wrote:
> Neil already disabused me of the idea that a "gatekeeper" could be
> used to beneficial effect in the core kernel, and I can see it's
> equally difficult to use this in filesystems that need to be careful
> of ABI changes.  However, nothing presented so far has swayed me from
> my top of mind concern which is the ability to ship pre-production
> driver features in the upstream kernel. I'm thinking of it as
> "-staging for otherwise established drivers".

In the case where you are just adding some additional hardware
enablement for some newer version of some chipset, I can see the
applicability.  But if the new feature also requires new core code
functionality (for example some smarter way of handling interrupt
mitigation or interrupt steering, for example), the "gatekeeper"
approach can also get problematic, for the reasons Neil outlined.

For example, I can remember lots of serial driver enhancements that
required core tty layer changes in order to be effective.  (In fact I
had a friendly competition with the FreeBSD tty maintainer many years
ago, but one of the reasons why I was able to get significantly better
improvements with Linux was because the FreeBSD core team back then
viewed the architecture from BSD 4.3 to be handed down from the
mountain top as if from Moses....)

So this is why I'm wondering how commonly applicable this particular
technique might be, and if it's restricted to individual driver code,
is there any thing special we really need to do to encourage this.
After all, device drivers authors could use a sysfs file to do this
sort of thing today, right?

					- Ted
