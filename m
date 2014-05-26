Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 66E5182D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 15:41:51 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id CF83F1F9CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 15:41:50 +0000 (UTC)
Message-ID: <538360B1.8000807@roeck-us.net>
Date: Mon, 26 May 2014 08:41:37 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: James Bottomley <James.Bottomley@HansenPartnership.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>	
	<20140524111927.GA3455@katana> <5380F092.3070600@roeck-us.net>
	<1400993829.2322.13.camel@dabdike.int.hansenpartnership.com>
In-Reply-To: <1400993829.2322.13.camel@dabdike.int.hansenpartnership.com>
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/24/2014 09:57 PM, James Bottomley wrote:
> On Sat, 2014-05-24 at 12:18 -0700, Guenter Roeck wrote:
>>>
>>> The thing I'd like to see way more in the Linux ecosystem:
>>>
>>> Paid reviewers/maintainers (selected people, no hiring offers). The
>>> number of developers increases faster than the number of quality
>>> keepers. So, the latter should be given the chance to focus on it, if
>>> they want to.
>>>
>>
>> Problem with that is that in most company hierarchies code reviewers
>> get little  if no credit for their work.
>
> I could see this in start up type companies.  Older companies learned
> long ago that customers value quality over features so they tend to have
> elaborate review processes. (As an aside, customers say they value
> features, but if you deliver one with a regression, it's the regression
> you'll hear about the whole time).
>

I am not sure if all those companies learned the lesson. Agreed, many
of them do, but I have seen the opposite. But that is not really
the point here.

You can actually take the Linux kernel at a case in point: Let's assume
someone wants to hire a kernel engineer and looks up kernel commits for
reference. What do you think that person will look for ? Patch authors
or  "Reviewed-by" tags ? I would argue it is going to be patch authors.

Really, again, the point (or question) here is how much credit an engineer
gets for doing code reviews (or fixing bugs, for that matter) vs. for
writing code. I would argue that there is very little incentive for
senior engineers (ie those who are best suited to do code reviews)
to actually _do_ code reviews more or less for a living, or at least
for a substantial amount of their time.

>>   If anything, I have seen
>> the opposite - code reviewers, if they take their responsibility
>> serious, end up getting blamed for project delays because they keep
>> finding problems in the code.
>
> I've worked for a couple of large companies over my career (and a few
> start ups).  I've got to say that's not my experience.  I've always seen
> us blame the submitter for bad code, not the reviewer.
>

This always depends on the definition of "bad code". If "bad code"
means buggy code, I agree. If "bad code" means bad code architecture,
bad code structure, or simply a bad implementation, it gets more murky.
Maybe I just wasn't lucky, but clean architecture and implementation
was not a focus in any of the large companies I worked for. Ok, maybe
officially it was, but not really.

>> Imagine a project where one employee writes the code and another
>> reviews it. Who do you think will get the credit (and bonus) ?
>> I bet it will be the person who wrote the code, not the person
>> who made sure that it is clean and free of bugs.
>
> This is certainly true that credit goes to features.  However, if your
> company only incents that way, QA rapidly gets disillusioned, so only
> giving credit to features wouldn't work long term which is why no
> company I know does it.
>

Lucky you. In one of the companies I worked for, QA engineers could
actually get reprimanded if they found a bug while not following a well
defined test script. The best QA engineer I ever knew ultimately got fired,
not because he didn't find bugs, but because he found lots of bugs by not
following those well defined scripts (the argument being that by not
following the scripts it was difficult to reproduce the bugs).

> To give a counter point: every product we produce has defect metrics and
> I've seen QA get all the prizes in the case where the initial submit was
> too buggy and they turned around the reviews and tests fast enough to
> meet the shipping deadlines and reduce the defects to within the
> metrics.
>
> In all things in life, it's a balance.  I've seen cockups where QA is
> solely incented on defects found and minor UI bugs get classified as
> critical feature defects (because that's what gets the bonus).
>
> But anyway, back to the problem at hand, I think you're suggesting that
> paying for reviews might not work, and I think I agree because it's back
> to incenting QA solely on finding defects.  However, if others thought
> there was merit, we might persuade the LF to offer a small incentive.
>

Reviews should actually precede QA, so I am not sure I agree.
I actually think that paying for reviews (or reviewers) could work,
but that company culture prevents that from happening in practice.

On the other side, there are by now many (or at least some) kernel
maintainers who are actually getting paid for being kernel maintainers.
Some companies out there actually _want_ their engineers to become
kernel maintainers. Kernel maintainers by definition (or at least
I think so) do spend a lot of time doing code reviews. So the
situation may be improving. Maybe all it takes would be to educate
the involved companies that one does not only need kernel maintainers,
but also (paid) code reviewers, and to give those as much credit as
the actual maintainers get. Maybe declare those reviewers to be
maintainers, to give them the credit they deserve. Worth a thought.

Guenter
