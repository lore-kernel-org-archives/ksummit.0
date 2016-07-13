Return-Path: <alex.shi@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0A9CD71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Jul 2016 04:48:20 +0000 (UTC)
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7D7EA16E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Jul 2016 04:48:19 +0000 (UTC)
Received: by mail-pf0-f173.google.com with SMTP id t190so14373379pfb.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Jul 2016 21:48:19 -0700 (PDT)
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
From: Alex Shi <alex.shi@linaro.org>
Message-ID: <5785C80F.4030707@linaro.org>
Date: Wed, 13 Jul 2016 13:48:15 +0900
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

Count me in, please.

I am working as Lianro stable kernel maintainer for 3 years. and was run 
Intel linux kernel performance project before this job.

I am thinking if it's possible to share an basic tree which include some 
widely wanted backporting features. That could share the testing and 
review, then will reduce bugs much more.

Thanks
Alex

On 07/11/2016 01:03 PM, Trond Myklebust wrote:
> So, we might as well make this a formal proposal.
>
> I’d like to propose that we have a discussion around how to make it easier to implement kernel unit tests. I’ve co-opted Dan as he has expressed both an interest and hands-on experience. :-)
>
> Cheers
>    Trond
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
