Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B89129CA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 13:52:34 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5D6B01B2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 13:52:34 +0000 (UTC)
To: Zefan Li <lizefan@huawei.com>, Jiri Kosina <jikos@kernel.org>,
	Takashi Iwai <tiwai@suse.de>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net> <20160709001046.GH28589@dtor-ws>
	<91774112.AKkGksYjl6@vostro.rjw.lan> <20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<s5h37nij6h4.wl-tiwai@suse.de>
	<alpine.LNX.2.00.1607101215200.24757@cbobk.fhfr.pm>
	<57824E91.2030902@roeck-us.net> <5788AC92.3030008@huawei.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <5788EA9F.9050408@roeck-us.net>
Date: Fri, 15 Jul 2016 06:52:31 -0700
MIME-Version: 1.0
In-Reply-To: <5788AC92.3030008@huawei.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/15/2016 02:27 AM, Zefan Li wrote:
> On 2016/7/10 21:33, Guenter Roeck wrote:
>> On 07/10/2016 03:20 AM, Jiri Kosina wrote:
>>> On Sun, 10 Jul 2016, Takashi Iwai wrote:
>>>
>>>> IMO, we need a really better QA before releasing stable trees.  They are
>>>> all fixes, yes, but they aren't always fixes for stable trees, in
>>>> reality.
>>>
>>> I agree.
>>>
>>> BTW, how much coverage does -stable get from Fengguang's 0day robot? I
>>> think that as most of the stable tress don't really use the git workflow,
>>> the trees are being pushed out to git.kernel.org only shortly before
>>> actual release, so the 0day bot doesn't have enough time to catch up; but
>>> I have to admit I don't really know how exactly the timing and flow of
>>> patches works here.
>>>
>>
>> Greg tends to update his trees on a quite regular basis, as he applies patches.
>> I don't really know for sure about the others, but overall my impression is
>> that there tends to be a flurry of patches applied in the day before a stable
>> release candidate is announced.
>>
>
> I also set up a testing branch for 3.4.y so that Fengguang's 0day can test it
> before I send out stable-rc1.
>

Is that at a well defined location ? I would prefer to pick up the changes from there
instead of the quilt queue (and I am sure Kevin would like to do the same).

Thanks,
Guenter
