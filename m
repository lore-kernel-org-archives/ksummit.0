Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B5DA7B13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 16:45:39 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3C8FF2034A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 16:45:39 +0000 (UTC)
Message-ID: <5388B5A3.3040700@roeck-us.net>
Date: Fri, 30 May 2014 09:45:23 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: markgross@thegnar.org
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana> <5380F092.3070600@roeck-us.net>
	<1400993829.2322.13.camel@dabdike.int.hansenpartnership.com>
	<538360B1.8000807@roeck-us.net> <20140530160517.GA28078@yp2>
In-Reply-To: <20140530160517.GA28078@yp2>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/30/2014 09:05 AM, mark gross wrote:
> On Mon, May 26, 2014 at 08:41:37AM -0700, Guenter Roeck wrote:
>> On 05/24/2014 09:57 PM, James Bottomley wrote:
>>> On Sat, 2014-05-24 at 12:18 -0700, Guenter Roeck wrote:
>>>>>
>>>>> The thing I'd like to see way more in the Linux ecosystem:
>>>>>
>>>>> Paid reviewers/maintainers (selected people, no hiring offers). The
>>>>> number of developers increases faster than the number of quality
>>>>> keepers. So, the latter should be given the chance to focus on it, if
>>>>> they want to.
>>>>>
>>>>
>>>> Problem with that is that in most company hierarchies code reviewers
>>>> get little  if no credit for their work.
>>>
>>> I could see this in start up type companies.  Older companies learned
>>> long ago that customers value quality over features so they tend to have
>>> elaborate review processes. (As an aside, customers say they value
>>> features, but if you deliver one with a regression, it's the regression
>>> you'll hear about the whole time).
>>>
>>
>> I am not sure if all those companies learned the lesson. Agreed, many
>> of them do, but I have seen the opposite. But that is not really
>> the point here.
>>
>> You can actually take the Linux kernel at a case in point: Let's assume
>> someone wants to hire a kernel engineer and looks up kernel commits for
>> reference. What do you think that person will look for ? Patch authors
>> or  "Reviewed-by" tags ? I would argue it is going to be patch authors.
>>
>> Really, again, the point (or question) here is how much credit an engineer
>> gets for doing code reviews (or fixing bugs, for that matter) vs. for
>> writing code. I would argue that there is very little incentive for
>> senior engineers (ie those who are best suited to do code reviews)
>> to actually _do_ code reviews more or less for a living, or at least
>> for a substantial amount of their time.
>>
> I got a significant promotion at intel this year largely because I do a lot of
> internal code reviews.  I think you are looking at things in a short sited
> manner.
>
Good for you and for Intel. However, I think you may have misunderstood my comments.

> Doing a lot of reviews and getting pretty good at it will make one a leader in
> setting the priorities and quality metrics for the code written by everyone else.
> This is a significant power over any organization.  It sets you apart as a leader
> and mentor, how could you not be recognized for it.  If you keep it up long
> enough to pay off.  Which is a challenge.
>
> A solid code reviewer has project global sway over how things get designed and
> implemented and over time grows trust and confidence between the reviewer and the
> organization.  From a world dominion point of view this is vector I would
> recommend to anyone wanting to be important.
>
Excellent for Intel if that is the mentality and culture there. Unfortunately,
that culture does not necessarily apply to other companies.

> Further I find arguments like the above to be pathetic and distasteful.  Profit
> motives are getting out of control IMO.  (yeah, I know its too easy for me to say
> while getting well paid)  But, still if that is your motive you are still doing
> it wrong if you ignore reviewer value.  Its easier to get money through having
> authority than any other way.
>

Shoot the messenger ?

I did not say or suggest that I agree that not rewarding code reviewers would
be a good idea. In fact, I strongly disagree. What I said was an observation;
if anything, the argument behind it was that there is a management problem
at many companies with recognizing code reviewers, which would need to change
to encourage more and better code reviews. It may be considered pathetic
and/or distasteful that such a management problem exists (though I would not
use those words - they are a bit close to getting personal in my opinion),
but I fail to see how _reporting_ that such a problem exists would in any
way or form be pathetic or distasteful.

Guenter
