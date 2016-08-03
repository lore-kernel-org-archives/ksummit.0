Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9A3D071
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 15:47:57 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E9CE1267
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 15:47:56 +0000 (UTC)
To: Greg KH <greg@kroah.com>, Jani Nikula <jani.nikula@intel.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<871t27s1i8.fsf@intel.com> <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <57A21224.9020304@roeck-us.net>
Date: Wed, 3 Aug 2016 08:47:48 -0700
MIME-Version: 1.0
In-Reply-To: <20160803110935.GA26270@kroah.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
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

On 08/03/2016 04:09 AM, Greg KH wrote:
> On Wed, Aug 03, 2016 at 12:36:29PM +0300, Jani Nikula wrote:
>> On Wed, 03 Aug 2016, "Rafael J. Wysocki" <rjw@rjwysocki.net> wrote:
>>> On Tuesday, August 02, 2016 04:34:00 PM Mark Brown wrote:
>>>> On Tue, Aug 02, 2016 at 05:12:47PM +0300, Jani Nikula wrote:
>>>>
>>>>> Generally adding cc: stable is like, this is clearly a fix to a bug that
>>>>> is present in stable kernels, and the bug should be fixed, but I have no
>>>>> idea nor resources to review or test if this is the right fix across all
>>>>> stable kernels. You end up relying on your gut feeling too much to be
>>>>> comfortable. You have to make the call too early in the process.
>>>>
>>>> I think the problems here are more in the process of how things go from
>>>> being tagged stable to appearing in a stable release - the QA or lack
>>>> thereof and so on.  While I do share some of your misgivings here I do
>>>> also really like the fact that it's really easy for people to push
>>>> things out for the attention of those working on backports.  It's
>>>> essentially the same as the question I often find myself asking people
>>>> who don't upstream - "why would this fix not benefit other users?".
>>>
>>> Agreed, and I think that's exactly where the expectations don't match what's
>>> delivered in the long-term-stable trees.
>>>
>>> It should be made clear that "stable" doesn't mean "no regressions".  What
>>> it reall means is "hey, if you care about backports, this is the stuff to take
>>> into consideration in the first place".
>>
>> I think this interpretation matches reality better than what
>> Documentation/stable_kernel_rules.txt leads you to believe about adding
>> cc: stable tag.
>
> really?  Yes, we have regressions at times in stable kernels, but
> really, our % is _very_ low.  Probably less than "normal" releases, but
> that's just a random guess, it would be good for someone to try to do
> research on this before guessing...
>

It is, but somehow there seems to be an expectation that it be 0.

We had one regression after merging 4.4.14 into chromeos-4.4, due to a patch
applied from mainline which was later reverted in mainline due to the problems
it caused (dea2cf7c0c6e, ecryptfs: forbid opening files without mmap handler).
The regression percentage (from 4.4.4 to 4.4.14) was 1 bad patch out of 1,044,
or 0.1% (I am sure there are probably more regressions in there, but there was
one that affected us). One should think that such a percentage is acceptable,
but judging from the heat I got for promoting that merge, it sounded like
the end of the world.

This is a problem of perception - it treats regressions in stable releases
much differently than regressions in mainline or in vendor branches, without
taking into account the benefits. The 1,043 bug fixes don't count because
of one regression.

How does one address such perception problems ? I really have no idea.
However, I don't think that it would make sense to change the stable process
because of it. I think it works surprisingly well.

Guenter
