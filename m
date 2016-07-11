Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 969DA9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 05:23:17 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 87EA6196
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 05:23:16 +0000 (UTC)
To: Trond Myklebust <trondmy@primarydata.com>,
	Dan Williams <dan.j.williams@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <57832D3A.8080702@roeck-us.net>
Date: Sun, 10 Jul 2016 22:23:06 -0700
MIME-Version: 1.0
In-Reply-To: <718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/10/2016 09:03 PM, Trond Myklebust wrote:
> So, we might as well make this a formal proposal.
>
> I’d like to propose that we have a discussion around how to make it easier to implement kernel unit tests. I’ve co-opted Dan as he has expressed both an interest and hands-on experience. :-)
>

Making it easier to implement such tests won't get such tests executed.
I think we should also discuss how to implement more formal testing
of release candidates, and/or how to improve test coverage.

Thanks,
Guenter
