Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 52891BEB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 23:51:30 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CEB14159
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 23:51:29 +0000 (UTC)
Date: Thu, 20 Apr 2017 01:51:26 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Josh Triplett <josh@joshtriplett.org>
In-Reply-To: <20170419233624.ga4oodno3lqyoa5c@x>
Message-ID: <alpine.LSU.2.20.1704200147590.12121@cbobk.fhfr.pm>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<20170418181506.30de0470@vento.lan>
	<20170419163636.6747a232@lwn.net>
	<alpine.LSU.2.20.1704200037430.12121@cbobk.fhfr.pm>
	<20170419233624.ga4oodno3lqyoa5c@x>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Wed, 19 Apr 2017, Josh Triplett wrote:

> ln -s Documentation/admin-guide/kernel-parameters.rst Documentation/kernel-parameters.txt

I think you just sort of demonstrated my point -- you got confused by this 
transition as well.

Documentation/admin-guide/kernel-parameters.rst is rather useless.

Documentation/admin-guide/kernel-parameters.txt is likely what you're 
looking for.

This pattern can't be applied universally to other converted files though.

-- 
Jiri Kosina
SUSE Labs
