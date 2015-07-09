Return-Path: <frowand.list@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 68A62305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 18:28:33 +0000 (UTC)
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 76CD823C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 18:28:29 +0000 (UTC)
Received: by pdbqm3 with SMTP id qm3so25724327pdb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 09 Jul 2015 11:28:29 -0700 (PDT)
Message-ID: <559EBD4C.6030502@gmail.com>
Date: Thu, 09 Jul 2015 11:28:28 -0700
From: Frank Rowand <frowand.list@gmail.com>
MIME-Version: 1.0
To: Michael Ellerman <mpe@ellerman.id.au>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<559D8336.3040802@roeck-us.net>
	<1436414798.23558.3.camel@ellerman.id.au>
In-Reply-To: <1436414798.23558.3.camel@ellerman.id.au>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	jic23@jic23.retrosnub.co.uk, ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
Reply-To: frowand.list@gmail.com
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 7/8/2015 9:06 PM, Michael Ellerman wrote:
> On Wed, 2015-07-08 at 13:08 -0700, Guenter Roeck wrote:
>> On 07/08/2015 11:53 AM, Steven Rostedt wrote:
>>> On Wed, 08 Jul 2015 09:00:32 +0100
>>> jic23@jic23.retrosnub.co.uk wrote:
>>>
>>>
>>>>> We can alter that somewhat.  We used to run a Maintainers lottery for
>>>>> the kernel summit ... we could instead offer places based on the number
>>>>> of Reviewed-by: tags ... we have all the machinery to calculate that.  I
>>>>> know an invitation to the kernel summit isn't a huge incentive, but it's
>>>>> a useful one.
>>>>
>>>> Sounds like a good idea to me, though it would only effect a tiny
>>>> percentage of our reviewers.  I suppose publishing a short list of the top
>>>> n% of reviewers from which the lottery runs might give some
>>>> recognition.
>>>>
>>>
>>> I personally don't trust a Reviewed-by tag much, as I sometimes see
>>> them appear without any comments.

I don't expect my Reviewed-by tag with no extra comments to carry much weight
if I send it to a maintainer who does not know me.

But if I have a history of good reviews to a specific maintainer, then why
should I have to add a message that says: Yes, I really, really did review
the patch.  I truly mean that the patch "has been reviewed and found acceptable
according to the Reviewer's Statement" as listed in SubmittingPatches.

And I read Steve's qualification of "don't trust ... _much_" as being
consistent with what I am saying, so I'm fine with that.  The point I
want to make is that a Reviewed-by tag without comments should not
always be assumed to be without meaning or value.

>>>
>>
>> Except for the following, they are always reliable and can be trusted.
>>
>> Reviewed-by: Edsel Murphy <edsel@murphy.com>
>>
>> Seriously, it does happen that I send Reviewed-by: or Acked-by: feedback if
>> a patch is just fine as-is. What do you expect the reviewer to do in such
>> a case ?
> 
> There's almost always something you can say.

And there is a time to not nit-pick a patch to death.

If my comment will not result in a significantly better patch, then I am
wasting the patch submitter's time, and the time of everyone else on the
mail list that will have to read my comment, and potentially have to read
and review a new spin of the patch.

Reviewed-by does not mean that I believe the patch is perfect and could not
possibly be improved.  From the "Reviewer's statement of oversight":

  (c) While there may be things that could be improved with this
      submission, I believe that it is, at this time, (1) a
      worthwhile modification to the kernel, and (2) free of known
      issues which would argue against its inclusion.

> 
> Even if it's a trivial patch, eg. a spelling fix, as the reviewer you should be
> confirming that only the spelling fix happened, ie. no other changes slipped
> into the diff. And so you can say that.
> 
> If it's more complex than a spelling fix then there's usually something you can
> comment on.
> 
> There might be times when all you can say is "Yep, logic looks right" which
> might seem redundant, but personally I'd prefer to see that than just a plain
> Reviewed-by.

"Yep, logic looks right" actually seems like a useful comment, because it tells
me that the reviewer probably does not understand the full context, but the code
is self consistent and does not have any obvious problems.  So I will not think
that the review is complete.

-Frank
