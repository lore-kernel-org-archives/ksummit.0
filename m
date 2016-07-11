Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 289B79C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 04:22:58 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id F1AEF18B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 04:22:56 +0000 (UTC)
Message-ID: <1468210973.3078.13.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Trond Myklebust <trondmy@primarydata.com>, Dan Williams
	<dan.j.williams@intel.com>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Mon, 11 Jul 2016 13:22:53 +0900
In-Reply-To: <718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net> <20160709001046.GH28589@dtor-ws>
	<91774112.AKkGksYjl6@vostro.rjw.lan> <20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2016-07-11 at 04:03 +0000, Trond Myklebust wrote:
> So, we might as well make this a formal proposal.
> 
> I’d like to propose that we have a discussion around how to make it 
> easier to implement kernel unit tests. I’ve co-opted Dan as he has 
> expressed both an interest and hands-on experience. :-)

OK, if you want to be formal, I'll propose we do a separate topic on
stable workflow.  Probably beginning with one of the maintainers who
does their own stable tree (I'm not organised enough to have co-opted
someone yet, but I'll try) to explain why they do this instead of just
adding a stable tag like the rest of us and how much extra effort it
costs them and whether more of us should be adopting it.  Then moving
on to discuss extra steps for preventing stable regressions, like
should we insist that patches tagged for stable be tested by someone
with the hardware on current head.  Finally I think we should debate
whether we have too many stable trees and perhaps we should sort them
into "official" (we care more about this tree) and "unofficial" meaning
it's run fully at the risk of the maintainer.

James
