Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AAE7B8FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 07:56:01 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 244B31F90C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 07:56:01 +0000 (UTC)
Date: Wed, 21 May 2014 16:55:47 +0900
From: Greg KH <greg@kroah.com>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20140521075547.GA20121@kroah.com>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140516125611.06633446@notabene.brown> <537628ED.1020208@fb.com>
	<CAPcyv4ivq-03wGAarZFxJZa2wXD2zja251v6YQD86BaHvu6h4w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPcyv4ivq-03wGAarZFxJZa2wXD2zja251v6YQD86BaHvu6h4w@mail.gmail.com>
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

On Wed, May 21, 2014 at 12:48:48AM -0700, Dan Williams wrote:
> With regards to saying "no" faster, it seems kernel code rarely comes
> with tests.  However, maintainers today are already able to reduce the
> latency to "no" when the 0-day-kbuild robot emits a negative test.
> Why not arm that system with tests it can autodiscover?  What has held
> back unit test culture in the kernel?

The fact that no one has stepped up and taken maintainership of the
tests and ensure that they continue to work.

I'm working on solving that issue, by getting funding for someone to do
this and focus on tests that all developers and maintainers can use to
help ensure that nothing broke when they make a change.  Give me a few
months, hopefully there will be something I can talk about soon in this
area.

thanks,

greg k-h
