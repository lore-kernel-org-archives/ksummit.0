Return-Path: <jic23@jic23.retrosnub.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1E4BF8A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Aug 2016 05:41:20 +0000 (UTC)
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk [178.18.118.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1838DAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Aug 2016 05:41:18 +0000 (UTC)
In-Reply-To: <57A21252.7000407@roeck-us.net>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<871t27s1i8.fsf@intel.com> <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<20160803141937.GA9180@kroah.com>
	<alpine.LNX.2.00.1608031642300.22028@cbobk.fhfr.pm>
	<57A21252.7000407@roeck-us.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Date: Fri, 05 Aug 2016 10:16:45 +0530
To: Guenter Roeck <linux@roeck-us.net>, Jiri Kosina <jikos@kernel.org>,
	Greg KH <greg@kroah.com>
Message-ID: <9FC17151-EC2A-493F-8048-6FA9290A2CDF@jic23.retrosnub.co.uk>
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



On 3 August 2016 21:18:34 GMT+05:30, Guenter Roeck <linux@roeck-us.net> wrote:
>On 08/03/2016 07:45 AM, Jiri Kosina wrote:
>> On Wed, 3 Aug 2016, Greg KH wrote:
>>
>>>> Has anything changed in the process that'd just make patches like
>this one
>>>> to be not merged these days?
>>>
>>> We have Guenter's test-bot that has helped out immensely here with
>this.
>>
>> That's very good to know, I admit that I have close to zero idea
>about how
>> the stable -rcs are being tested.
>>
>
>... and when it doesn't work because I messed it up, we get issues such
>as 3.18
>and 4.1 being broken for mips and sparc64 because a couple of patches
>which don't
>apply to those kernels were tagged with an unqualified Cc: stable and
>applied.
>
>So, if anything, the one problem I see with the current stable process
>is
>those unqualified stable tags. Maybe those should be deprecated;
>expecting
>stable maintainers to figure out if a patch applies to a given stable
>branch
>or not is a bit too much to ask for. With stable releases as far back
>as
>3.2 (or 338,020 commits as of right now) it is almost guaranteed that a
>patch tagged with an unqualified Cc: stable doesn't apply to all
>branches.
>
>>> It seems most of these can all come down to "we need more testing",
>>
>> That as well, but the main message I am trying to push here is "we
>need a
>> little bit more thinking while anotating patches for stable".
>>
>> It might very well be that some variation of what has been just
>proposed
>> elsewhere in this thread (requiring all the stable commits to either
>> contain explicit 'Fixes' tag, or be explicitly annotated by the
>kernel
>> version range they should be applied to) would help tremendously on
>that
>> front.
>>
>>> [1] The people that are doing stable tree testing are doing a great
>job,
>>>      Guenter, Shuah, kernelci, my build-bot, 0-day, etc.
>>
>
>Maybe I or someone else can give a 10-15 minute presentation about the
>current
>test efforts to bring everyone up to date on what is being tested and
>how.
>Maybe we should make such a presentation a regular event at major
>conferences.
I would certainly find this or a regular lwn feature or similar both
interesting and useful.

Jonathan
>
>Guenter
>
>_______________________________________________
>Ksummit-discuss mailing list
>Ksummit-discuss@lists.linuxfoundation.org
>https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.
