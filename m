Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9EFD49AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 14:12:54 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7E661167
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 14:12:53 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>
In-Reply-To: <1468119600.19833.9.camel@HansenPartnership.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<146834264.pgPOSbOmkO@vostro.rjw.lan>
	<1468119600.19833.9.camel@HansenPartnership.com>
Date: Tue, 02 Aug 2016 17:12:47 +0300
Message-ID: <871t27s1i8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, 10 Jul 2016, James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> If I'm suspicious of something, I usually mark it not to be backported
> until we've got some testing:
>
> cc: stable@vger.kernel.org # delay until 4.8-rc1
>
> Greg seems to be able to cope with this.

So what do you do to prevent said commit from being backported to stable
kernels if it turns out bad (at any step of the way, really)? How does
it work? cc: stable is fire-and-forget, but sadly without self-destruct
when things go bad.

And where do you set the paranoia level with that "delay until" thing?

Generally adding cc: stable is like, this is clearly a fix to a bug that
is present in stable kernels, and the bug should be fixed, but I have no
idea nor resources to review or test if this is the right fix across all
stable kernels. You end up relying on your gut feeling too much to be
comfortable. You have to make the call too early in the process.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Technology Center
