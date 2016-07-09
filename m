Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 30E9D25A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  9 Jul 2016 01:53:26 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 964811F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  9 Jul 2016 01:53:25 +0000 (UTC)
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net> <20160709001046.GH28589@dtor-ws>
	<91774112.AKkGksYjl6@vostro.rjw.lan> <20160709004352.GK28589@dtor-ws>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <5780590E.1070408@roeck-us.net>
Date: Fri, 8 Jul 2016 18:53:18 -0700
MIME-Version: 1.0
In-Reply-To: <20160709004352.GK28589@dtor-ws>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linux-foundation.org,
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

On 07/08/2016 05:43 PM, Dmitry Torokhov wrote:
> On Sat, Jul 09, 2016 at 02:37:40AM +0200, Rafael J. Wysocki wrote:
>> On Friday, July 08, 2016 05:10:46 PM Dmitry Torokhov wrote:
>>> On Fri, Jul 08, 2016 at 04:12:14PM -0700, Guenter Roeck wrote:
>>>> On 07/08/2016 03:35 PM, Jiri Kosina wrote:
>>>>> Yeah, this topic again. It'd be a sad year on ksummit-discuss@ without it,
>>>>> wouldn't it? :)
>>>>>
>>>>> As a SUSE Enterprise Linux kernel maintainer, stable kernel is one of the
>>>>> crucial elements I rely on (and I also try to make sure that SUSE
>>>>> contributes back as much as possible).
>>>>>
>>>>> Hence any planned changes in the workflow / releases are rather essential
>>>>> for me, and I'd like to participate, should any such discussion take
>>>>> place.
>>>>>
>>>>
>>>> Same here. New employer, lots of unhappiness with stable releases, to the point
>>>> where stable trees are not used as basis for shipping releases.
>>>> That kind of defeats the purpose. So, instead of "let's ignore stable",
>>>> maybe we can get to a point where people feel comfortable with the quality
>>>> of stable releases, and where stable can actually be used as basis for production
>>>> releases.
>>>
>>> I wonder if it would not be a good idea to split stable into several
>>> flavors: security, fixes to core (really fixes), and fixes to device
>>> drivers + new hardware support.
>>
>> That would be sort of confusing IMO.
>>
>> The "one stable series per release" model is good, because it is really
>> straightforward and it is rather hard to get things wrong within it.
>
> It really depends on what you intend to do with it. For general-purpose
> distribution - yes, you take everything and cross your fingers that we
> fixed more bugs than introduced new ones. When you building kernel for
> set of devices you might want to be more selective because you do know
> the subset of features and hardware you are using.
>

Ideally, -stable patches should not introduce any new bugs (yes, I know,
I am dreaming here).

Unfortunately, we can not avoid introducing new bugs. Question for me would
be how to catch them. Being more restrictive might help, improved testing
might help.

Testing improved a lot over the last couple of years. It would be interesting
to know how much improved test coverage resulted in objective stability
improvements. No idea if there is a way to measure that. Is there ?

Either case, even though testing has improved a lot, I think it still has a long
way to go. How can we get there ? How can we convince companies that it would be
worth their money to invest in testing upstream releases - not just mainline,
but -stable releases as well ? Trying to find answers for those questions might
be worthwhile discussion points for the KS.

>>
>>> I feel that with current single stable
>>> tree (per stable release) we are too liberal with what we direct towards
>>> stable, with many changes not being strictly necessary, but rather "nice
>>> to have".
>>
>> To me, as long as they all are fixes, that's fine.
>

Reminds me of that seemingly straightforward fix for a build warning which
required several follow-up patches to fix the problems it introduced.
In 4.4, this ended up as:

5a58f809d731 regulator: core: Fix nested locking of supplies
29c9f634cb13 regulator: core: Ensure we lock all regulators
f500da32a166 regulator: core: fix regulator_lock_supply regression
34af67eb941a Revert "regulator: core: Fix nested locking of supplies"
b1999fa6e814 regulator: core: Fix nested locking of supplies
4c8fe4f52755 regulator: core: avoid unused variable warning

One could argue that 4c8fe4f52755 wasn't really worth the trouble.

Guenter

> It depends how much testing was done with them. Given that nobody has
> all hardware permutations that are in the wild and on severity of the
> bug sometimes it makes sense to skip stable and let it be till next
> release.
>
>>
>> I tend to think that all known bugs should be fixed, at least because once
>> they have been fixed, no one needs to remember about them any more. :-)
>>
>> Moreover, minor fixes don't really introduce regressions that often
>
> Famous last words :)
>
>> (from my
>> experience), because they tend to be simple.  Significant fixes, on the other
>> hand, tend to be more complicated or more subtle and the risk of regressions
>> from them is so much greater.
>>
>
> Thanks.
>
