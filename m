Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 63CD29D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 17:09:45 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 07733F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 17:09:44 +0000 (UTC)
Date: Thu, 3 May 2018 10:09:20 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180503170920.GC26754@roeck-us.net>
References: <20180501163818.GD1468@sasha-vm>
	<CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
	<20180502195138.GC18390@sasha-vm>
	<CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
	<20180503000620.GA29205@thunk.org>
	<ed65dc49-dad0-21a1-676c-f9ba43ba5c6c@roeck-us.net>
	<20180503145533.GK18390@sasha-vm>
	<20180503154911.GA26754@roeck-us.net>
	<20180503160210.GO18390@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180503160210.GO18390@sasha-vm>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 03, 2018 at 04:02:12PM +0000, Sasha Levin wrote:
> >You are misquoting me. I am saying that it would be a bad idea to hold up
> >bug fixes after -rc4, which is quite different to saying that patches
> >don't make it into stable releases fast enough. I am perfectly happy to
> >wait a week or so for a patch to soak in _mainline_ before being applied
> >to stable.
> 
> Most bug fixes that go in at that point are fixes for previous released
> kernels, what's the harm in keeping them around for longer?
> 

The ones I am mostly concerned about are fixes for CVEs, crashes, file
system corruptions, and similar. Maybe the enterprise folks don't mind
keeping those around for a month or more even though a fix is available.
I do.

> For AUTOSEL, I'd be happy to learn of issues you encounter and address
> them in my process.
> 
> I've been submitting automatically selected patches for over a year now
> and the track record for regressions is on par with patches that are
> tagged for stable.

So far it hasn't been an issue. Or, rather, not much; with more patches
applied, the percentage of regressions may be the same, but the number
of regressions is higher. My "customers" care about the number, not about
the percentage.

However, the set of test results attached below (from last night)
_is_ a problem. I don't know what changed, but something clearly did,
to the point that I am _very_ concerned about the next set of stable
releases.

Guenter

---
For v4.14.39-580-gc8cd674:

Build results:
	total: 146 pass: 98 fail: 48
Qemu test results:
	total: 100 pass: 21 fail: 79

For v4.4.131-268-ga33ce4a:

Build results:
	total: 146 pass: 92 fail: 54
Qemu test results:
	total: 127 pass: 91 fail: 36
