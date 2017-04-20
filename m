Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C467EA6E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 01:05:01 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CBFB2192
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 01:04:59 +0000 (UTC)
Date: Wed, 19 Apr 2017 18:04:50 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20170420010450.qy3sap7wjxp7hekc@x>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<20170418181506.30de0470@vento.lan>
	<20170419163636.6747a232@lwn.net>
	<alpine.LSU.2.20.1704200037430.12121@cbobk.fhfr.pm>
	<20170419233624.ga4oodno3lqyoa5c@x>
	<alpine.LSU.2.20.1704200147590.12121@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LSU.2.20.1704200147590.12121@cbobk.fhfr.pm>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Doug Ledford <dledford@redhat.com>,
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

On Thu, Apr 20, 2017 at 01:51:26AM +0200, Jiri Kosina wrote:
> On Wed, 19 Apr 2017, Josh Triplett wrote:
> > ln -s Documentation/admin-guide/kernel-parameters.rst Documentation/kernel-parameters.txt
> 
> I think you just sort of demonstrated my point -- you got confused by this 
> transition as well.

I looked at commit 9d85025b0418163fae079c9ba8f8445212de8568, which
renamed Documentation/kernel-parameters.txt verbatim to
Documentation/admin-guide/kernel-parameters.rst , saw that the file
existed in the current kernel, and didn't look through the whole file to
see that it just contained an include.
