Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B699D6C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 08:31:34 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5CCC6110
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 08:31:34 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Laura Abbott <labbott@redhat.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Doug Ledford <dledford@redhat.com>
In-Reply-To: <cfd0f6a1-77e7-90e0-3726-f56e7ce6badb@redhat.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<d0173f9f-d68a-995a-af42-a388af93dcca@redhat.com>
	<CA+55aFyZ-EuGo67DXQegC2K+BqsHxdaFeVSnJgRGnjLOf1FZaw@mail.gmail.com>
	<cfd0f6a1-77e7-90e0-3726-f56e7ce6badb@redhat.com>
Date: Thu, 20 Apr 2017 11:31:31 +0300
Message-ID: <87tw5jscnw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 19 Apr 2017, Laura Abbott <labbott@redhat.com> wrote:
> I brought up bug reporting last year and I still consider that to be
> an issue this year. A good example is
> https://bugzilla.kernel.org/show_bug.cgi?id=194911 which didn't really
> make progress until I sent out a separate e-mail thread summarizing
> the bisections people did.

The service level at https://bugzilla.kernel.org heavily depends on the
subsystem/driver. Some maintainers just ignore it completely.
MAINTAINERS now has the "B:" entry to document where maintainers want
bugs reported, and I'd like to see more maintainers document their
preferences there.

Would be great to have bugzilla inform the bug reporters if some
component is likely to be ignored, based on the info in MAINTAINERS, but
I suppose that's a bunch of manual work unlikely to happen.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Technology Center
