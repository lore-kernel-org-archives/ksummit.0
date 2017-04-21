Return-Path: <alexandre.belloni@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 01BFB958
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 08:50:21 +0000 (UTC)
Received: from mail.free-electrons.com (mail.free-electrons.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 57BE119B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 08:50:20 +0000 (UTC)
Date: Fri, 21 Apr 2017 10:41:55 +0200
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20170421084155.v77xsfupsoage6a4@piout.net>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<d0173f9f-d68a-995a-af42-a388af93dcca@redhat.com>
	<CA+55aFyZ-EuGo67DXQegC2K+BqsHxdaFeVSnJgRGnjLOf1FZaw@mail.gmail.com>
	<cfd0f6a1-77e7-90e0-3726-f56e7ce6badb@redhat.com>
	<87tw5jscnw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87tw5jscnw.fsf@intel.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Miller <davem@davemloft.net>, Doug Ledford <dledford@redhat.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 20/04/2017 at 11:31:31 +0300, Jani Nikula wrote:
> On Wed, 19 Apr 2017, Laura Abbott <labbott@redhat.com> wrote:
> > I brought up bug reporting last year and I still consider that to be
> > an issue this year. A good example is
> > https://bugzilla.kernel.org/show_bug.cgi?id=194911 which didn't really
> > make progress until I sent out a separate e-mail thread summarizing
> > the bisections people did.
> 
> The service level at https://bugzilla.kernel.org heavily depends on the
> subsystem/driver. Some maintainers just ignore it completely.
> MAINTAINERS now has the "B:" entry to document where maintainers want
> bugs reported, and I'd like to see more maintainers document their
> preferences there.
> 

I think that addition has not been noticed by many maintainers and that
is actually one of my pain point.
I feel like that kind of changes that are relevant for all the
maintainers are not advertised enough but I also realize you probably
don't want to Cc: every maintainer on your patch.

-- 
Alexandre Belloni, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com
