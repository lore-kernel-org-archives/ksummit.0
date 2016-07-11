Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BCE30258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 23:03:56 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4AD0C11C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 23:03:56 +0000 (UTC)
Date: Mon, 11 Jul 2016 16:03:51 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Kevin Hilman <khilman@baylibre.com>
Message-ID: <20160711230351.GA3627@roeck-us.net>
References: <91774112.AKkGksYjl6@vostro.rjw.lan>
	<20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<7hk2gr7wjq.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7hk2gr7wjq.fsf@baylibre.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 11, 2016 at 01:24:25PM -0700, Kevin Hilman wrote:
> Trond Myklebust <trondmy@primarydata.com> writes:
> 
> > So, we might as well make this a formal proposal.
> >
> > I’d like to propose that we have a discussion around how to make it
> > easier to implement kernel unit tests. I’ve co-opted Dan as he has
> > expressed both an interest and hands-on experience. :-)
> 
> Count me in.
> 
> I'm working on the kernelci.org project, where we're testing
> mainline/next/stable-rc/stable etc. on real hardware (~200 unique boards
> across ~30 unique SoC families: arm, arm64, x86.)
> 
> Right now, we're mainly doing basic boot tests, but are starting to run
> kselftests on all these platforms as well.
> 

Augmenting that: For my part the interest would be to improve qemu based
testing along the same line (and maybe figure out if/how we can merge
kerneltests.org into kernelci.org).

Guenter
