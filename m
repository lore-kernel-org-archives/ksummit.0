Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 10ADD308
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 00:51:31 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A17F21A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 00:51:30 +0000 (UTC)
To: Greg KH <greg@kroah.com>, Mark Brown <broonie@kernel.org>
References: <1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<20160713143447.GH9976@sirena.org.uk>
	<20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <5788337F.8000500@roeck-us.net>
Date: Thu, 14 Jul 2016 17:51:11 -0700
MIME-Version: 1.0
In-Reply-To: <20160715002239.GA31603@kroah.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
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

On 07/14/2016 05:22 PM, Greg KH wrote:
> On Thu, Jul 14, 2016 at 11:06:03AM +0100, Mark Brown wrote:
>> On Thu, Jul 14, 2016 at 12:17:53PM +0900, Greg KH wrote:
>>> On Wed, Jul 13, 2016 at 03:34:47PM +0100, Mark Brown wrote:
>>
>>>> There was a lot of pushback against LTSI,
>>
>>> pushback from whom?
>>
>> Linaro members who wanted the LSK.
>
> Ok, there's no need for everyone to use the same messy tree, but perhaps
> Linaro could participate with LTSI to help make something that more
> people can all use?  No need to keep duplicating the same work...
>
> But this is way off-topic here, sorry.
>

Maybe a separate topic, and not entirely feasible for the kernel summit,
but it might be worthwhile figuring out why companies are or are not
using LTSI. My major problem with it was always that it is just a collection
of patches, not a kernel tree, meaning merges or cherry-picks are non-trivial.
Sure, one can create a kernel tree from it, but that is not the same.

Guenter
