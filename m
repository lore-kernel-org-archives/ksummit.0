Return-Path: <borntraeger@de.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C4ACA2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Jul 2016 07:44:34 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A26D2150
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Jul 2016 07:44:33 +0000 (UTC)
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u6I7hqYv005008 for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Jul 2016 03:44:33 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
	by mx0a-001b2d01.pphosted.com with ESMTP id 248nbhqu0k-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Jul 2016 03:44:32 -0400
Received: from localhost
	by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<borntraeger@de.ibm.com>; Mon, 18 Jul 2016 08:44:30 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com
	(d06relay10.portsmouth.uk.ibm.com [9.149.109.195])
	by d06dlp03.portsmouth.uk.ibm.com (Postfix) with ESMTP id 585D01B0805F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Jul 2016 08:45:50 +0100 (BST)
Received: from d06av05.portsmouth.uk.ibm.com (d06av05.portsmouth.uk.ibm.com
	[9.149.37.229])
	by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id u6I7iR0614156276
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Jul 2016 07:44:27 GMT
Received: from d06av05.portsmouth.uk.ibm.com (localhost [127.0.0.1])
	by d06av05.portsmouth.uk.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with
	ESMTP id u6I7iQDJ004046
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Jul 2016 01:44:26 -0600
To: Guenter Roeck <linux@roeck-us.net>, Kevin Hilman <khilman@baylibre.com>
References: <91774112.AKkGksYjl6@vostro.rjw.lan>
	<20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<7hk2gr7wjq.fsf@baylibre.com> <20160711230351.GA3627@roeck-us.net>
From: Christian Borntraeger <borntraeger@de.ibm.com>
Date: Mon, 18 Jul 2016 09:44:26 +0200
MIME-Version: 1.0
In-Reply-To: <20160711230351.GA3627@roeck-us.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Message-Id: <578C88DA.7020708@de.ibm.com>
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

On 07/12/2016 01:03 AM, Guenter Roeck wrote:
> On Mon, Jul 11, 2016 at 01:24:25PM -0700, Kevin Hilman wrote:
>> Trond Myklebust <trondmy@primarydata.com> writes:
>>
>>> So, we might as well make this a formal proposal.
>>>
>>> I’d like to propose that we have a discussion around how to make it
>>> easier to implement kernel unit tests. I’ve co-opted Dan as he has
>>> expressed both an interest and hands-on experience. :-)
>>
>> Count me in.
>>
>> I'm working on the kernelci.org project, where we're testing
>> mainline/next/stable-rc/stable etc. on real hardware (~200 unique boards
>> across ~30 unique SoC families: arm, arm64, x86.)
>>
>> Right now, we're mainly doing basic boot tests, but are starting to run
>> kselftests on all these platforms as well.
>>
> 
> Augmenting that: For my part the interest would be to improve qemu based
> testing along the same line (and maybe figure out if/how we can merge
> kerneltests.org into kernelci.org).

I am also interested in this topic. I would like to find a way to integrate
architectures (with non-perfect qemu coverage) like s390 in that regression
testing. There are several installations which could be used to run some nightly
regression but the hardware is not that wide-spread among kernel hackers.
I would like to discuss the different options (e.g. do we consider email reports
as working or no?)

Christian
