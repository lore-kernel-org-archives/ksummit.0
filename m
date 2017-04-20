Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5AD98BA4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 13:01:55 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 78F2A20C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 13:01:53 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Mark Brown <broonie@kernel.org>
In-Reply-To: <20170420123526.ikqbcuji4jzatbmp@sirena.org.uk>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<d0173f9f-d68a-995a-af42-a388af93dcca@redhat.com>
	<CA+55aFyZ-EuGo67DXQegC2K+BqsHxdaFeVSnJgRGnjLOf1FZaw@mail.gmail.com>
	<cfd0f6a1-77e7-90e0-3726-f56e7ce6badb@redhat.com>
	<87tw5jscnw.fsf@intel.com>
	<20170420123526.ikqbcuji4jzatbmp@sirena.org.uk>
Date: Thu, 20 Apr 2017 16:01:48 +0300
Message-ID: <87d1c7s05f.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 20 Apr 2017, Mark Brown <broonie@kernel.org> wrote:
> On Thu, Apr 20, 2017 at 11:31:31AM +0300, Jani Nikula wrote:
>
>> subsystem/driver. Some maintainers just ignore it completely.
>> MAINTAINERS now has the "B:" entry to document where maintainers want
>> bugs reported, and I'd like to see more maintainers document their
>> preferences there.
>
> I'd expect that a large proportion of people are assuming the default is
> to report it to the list.

Seems like the right thing to do is to better document the expectations
in Documentation/admin-guide/reporting-bugs.rst, and then point
MAINTAINERS and, more importantly, [1] and [2] to that.

BR,
Jani.


[1] https://bugzilla.kernel.org/page.cgi?id=faq.html
[2] https://bugzilla.kernel.org/page.cgi?id=bug-writing.html

-- 
Jani Nikula, Intel Open Source Technology Center
