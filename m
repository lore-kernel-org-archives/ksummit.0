Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4BC9F904
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Jul 2016 08:45:04 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A59038E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Jul 2016 08:45:02 +0000 (UTC)
To: ksummit-discuss@lists.linuxfoundation.org
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
	<578C88DA.7020708@de.ibm.com>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <24ff8ba9-a094-d480-da27-c22d15a3755b@suse.com>
Date: Mon, 18 Jul 2016 10:44:59 +0200
MIME-Version: 1.0
In-Reply-To: <578C88DA.7020708@de.ibm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
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

On 07/18/2016 09:44 AM, Christian Borntraeger wrote:
> On 07/12/2016 01:03 AM, Guenter Roeck wrote:
>> On Mon, Jul 11, 2016 at 01:24:25PM -0700, Kevin Hilman wrote:
>>> Trond Myklebust <trondmy@primarydata.com> writes:
>>>
>>>> So, we might as well make this a formal proposal.
>>>>
>>>> I’d like to propose that we have a discussion around how to make it
>>>> easier to implement kernel unit tests. I’ve co-opted Dan as he has
>>>> expressed both an interest and hands-on experience. :-)
>>>
>>> Count me in.
>>>
>>> I'm working on the kernelci.org project, where we're testing
>>> mainline/next/stable-rc/stable etc. on real hardware (~200 unique boards
>>> across ~30 unique SoC families: arm, arm64, x86.)
>>>
>>> Right now, we're mainly doing basic boot tests, but are starting to run
>>> kselftests on all these platforms as well.
>>>
>>
>> Augmenting that: For my part the interest would be to improve qemu based
>> testing along the same line (and maybe figure out if/how we can merge
>> kerneltests.org into kernelci.org).
>
> I am also interested in this topic. I would like to find a way to integrate
> architectures (with non-perfect qemu coverage) like s390 in that regression
> testing. There are several installations which could be used to run some nightly
> regression but the hardware is not that wide-spread among kernel hackers.
> I would like to discuss the different options (e.g. do we consider email reports
> as working or no?)
>
I'd be interested in that, too.
While we're already doing quite some testing (eg performance) we're 
looking into doing setup or architecture-specific tests.
With no clear result yet, so a broader discussion would be good.

Cheers,

Hannes
-- 
Dr. Hannes Reinecke		               zSeries & Storage
hare@suse.com			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 Nürnberg
GF: F. Imendörffer, J. Smithard, D. Upmanyu, G. Norton
HRB 21284 (AG Nürnberg)
