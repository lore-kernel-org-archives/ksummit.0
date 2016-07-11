Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6CE32905
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 09:16:16 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 78A3E14F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 09:16:15 +0000 (UTC)
To: ksummit-discuss@lists.linuxfoundation.org
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
	<57832D3A.8080702@roeck-us.net>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <57835F2B.1090405@suse.com>
Date: Mon, 11 Jul 2016 10:56:11 +0200
MIME-Version: 1.0
In-Reply-To: <57832D3A.8080702@roeck-us.net>
Content-Type: text/plain; charset=utf-8
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

On 07/11/2016 07:23 AM, Guenter Roeck wrote:
> On 07/10/2016 09:03 PM, Trond Myklebust wrote:
>> So, we might as well make this a formal proposal.
>>
>> I’d like to propose that we have a discussion around how to make it
>> easier to implement kernel unit tests. I’ve co-opted Dan as he has
>> expressed both an interest and hands-on experience. :-)
>>
> 
> Making it easier to implement such tests won't get such tests executed.
> I think we should also discuss how to implement more formal testing
> of release candidates, and/or how to improve test coverage.
> 
Count me in.
I'm working on preparing a multipath testbed from within Qemu (FCoE over
virtio, quite fun), with the aim of developing an automated
kernel-ci testbed.
So I'd be very interested in this one, too.

Cheers,

Hannes
-- 
Dr. Hannes Reinecke		               zSeries & Storage
hare@suse.com			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 Nürnberg
GF: F. Imendörffer, J. Smithard, D. Upmanyu, G. Norton
HRB 21284 (AG Nürnberg)
