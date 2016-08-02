Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BCA8C982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 09:41:27 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 90CDB102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 09:41:26 +0000 (UTC)
To: ksummit-discuss@lists.linuxfoundation.org
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160729111303.GA10376@sirena.org.uk>
	<20160801190309.GX3296@wotan.suse.de>
	<1555444.RIYpEbA2F7@vostro.rjw.lan>
	<20160802005650.GF3296@wotan.suse.de>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <bf260f5f-d2df-01ee-f0f9-1ab3dc1a6e6e@suse.com>
Date: Tue, 2 Aug 2016 11:41:21 +0200
MIME-Version: 1.0
In-Reply-To: <20160802005650.GF3296@wotan.suse.de>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
 and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/02/2016 02:56 AM, Luis R. Rodriguez wrote:
> On Tue, Aug 02, 2016 at 02:01:56AM +0200, Rafael J. Wysocki wrote:
>> On Monday, August 01, 2016 09:03:09 PM Luis R. Rodriguez wrote:
>>> On Fri, Jul 29, 2016 at 12:13:03PM +0100, Mark Brown wrote:
>>>> On Fri, Jul 29, 2016 at 09:45:55AM +0200, Hans Verkuil wrote:
>>>>
>>>>> My main problem is not so much with deferred probe (esp. for cyclic dependencies
>>>>> it is a simple method of solving this, and simple is good). My main problem is
>>>>> that you can't tell the system that driver A needs to be probed after drivers B,
>>>>> C and D are probed first.
>>>>
>>>>> That would allow us to get rid of v4l2-async.c which is a horrible hack.
>>>
>>> I'd like to understand the requirement for this a bit better, so someone explaining
>>> this would be good if this moves forward as a tech session.
>>
>> One case I'm familiar with is when a device has two (or more) device IDs, where
>> one is more specific than the other.  The idea being that if the OS has a driver
>> for that particular device, it will use the more specific device ID (say A) to
>> look for it, but otherwise it will use the other "generic" ID (say B) to match
>> against a "generic" driver.
>>
>> Of course, that only works if the driver for A is probed before the driver for B.
> 
> That's a good case to keep in mind which is indeed complex.
> 
We actually have been discussing such a scenario when running under
UEFI; there you could implement a generic UEFI network driver, which
then later might get superseded by the 'real' network driver.

Which would require to
a) be able to properly formulate the probing order
and
b) establish proper rules on how to 're-bind' a device to a different
driver.

Cheers,

Hannes
-- 
Dr. Hannes Reinecke		               zSeries & Storage
hare@suse.com			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 Nürnberg
GF: F. Imendörffer, J. Smithard, D. Upmanyu, G. Norton
HRB 21284 (AG Nürnberg)
