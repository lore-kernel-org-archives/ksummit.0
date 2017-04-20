Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8DD40B61
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 16:01:07 +0000 (UTC)
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1D9B01D0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 16:01:07 +0000 (UTC)
Received: by mail-oi0-f51.google.com with SMTP id j201so56674577oih.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 09:01:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1492633237.3217.50.camel@HansenPartnership.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<1492633237.3217.50.camel@HansenPartnership.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 20 Apr 2017 09:01:05 -0700
Message-ID: <CAPcyv4hMdvLqd5rayaYPiqHC+XpdN=mzpLNbse5Y1vaQWxemig@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
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

On Wed, Apr 19, 2017 at 1:20 PM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Tue, 2017-04-18 at 11:59 -0700, Linus Torvalds wrote:
[..]
> Finally, since Daniel Vetter brought it up, having CI tests is seen as
> a requirement for most git automation nowadays.  I tend to see 0day
> plus my user base as the CI infrastructure but we should discuss
> whether this is adequate.  I think 0day and linux-next pick up most
> merge and generic test issues, and no-one has all the hardware to run a
> true driver CI, so perhaps this is the best we can do, but we should at
> least discuss whether we want to try to do better.

I think we can do better with approaches like cmock [1] to go attack
code paths that would otherwise require specific hardware. The pain
points I see around testing are, how to discover and run available
tests for a given subsystem, and how to determine a "clean" run. For
example, xfstests depend on not only the kernel, but utilities as
well. Tracking all the moving pieces, tests, kernel and utilities is a
non-trivial amount of overhead.

[1]: http://www.throwtheswitch.org/cmock/
