Return-Path: <hverkuil@xs4all.nl>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 143CC990
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 14:00:04 +0000 (UTC)
Received: from smtp-vbr11.xs4all.nl (smtp-vbr11.xs4all.nl [194.109.24.31])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0796F20310
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 14:00:02 +0000 (UTC)
Message-ID: <536A3A36.90701@xs4all.nl>
Date: Wed, 07 May 2014 15:50:46 +0200
From: Hans Verkuil <hverkuil@xs4all.nl>
MIME-Version: 1.0
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<2617712.JANppmYUxZ@avalon>
	<CAKMK7uE3212a8hvrqFRtod7hh-7s27ZzMTUJKLTBfv8vMtF2sw@mail.gmail.com>
	<2168265.ezyDqFgGPA@avalon>
In-Reply-To: <2168265.ezyDqFgGPA@avalon>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Reviewing new API/ABI
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/07/14 15:30, Laurent Pinchart wrote:
> On Wednesday 07 May 2014 14:36:27 Daniel Vetter wrote:
>> On Wed, May 7, 2014 at 12:12 PM, Laurent Pinchart wrote:
>>> We have seen several review, test and documentation procedures being
>>> developed for different subsystems in the recent past (two examples are
>>> the DRM i915 driver API test rules explained by Daniel Vetter in a reply
>>> to this mail thread, and the V4L test suite and documentation procedure)
>>> but I have seen little effort to consolidate good practice rules. The
>>> kernel would certainly benefit from both sharing information about how
>>> various subsystems tackle the API review/test/documentation problem.
>>>
>>> Forcing all subsystems to adhere and enforce a superset of rules would
>>> likely put too much burden on maintainers and developers, especially for
>>> the smaller subsystems. However, I believe we could help by gathering and
>>> consolidating the good practice rules in a single location under
>>> Documentation/. Maintainers could then implement those rules (or a subset
>>> thereof) without having to reinvent the wheel. Rules such as "return
>>> -EINVAL when a reserved parameter is set" are not complex to implement in
>>> code, the real challenge is to implement them in the brain of all
>>> developers and reviewers.
>>
>> I'd be very interested in a discussions about existing best practices
>> already developed in different subsystems and figuring out what
>> minimal standards we should requires across the board.
> 
> So would I. The same topic is being discussed in the "stable issues" mail 
> thread, it thus looks like a good candidate to me. On the V4L side Hans 
> Verkuil (CC'ed) would likely be interested as a core V4L reviewer and 
> userspace test case developer.
> 

Absolutely. I've done a lot of work in that area. The V4L API is very large,
and without compliance tools it is almost impossible to write a faultless
driver. We now have about 95% coverage of the whole API and these days it is
a requirement of new drivers that they pass the test suite, otherwise I
will reject them.

And the flip-side of that is to provide applications with good test drivers
so they can test their application without requiring hard-to-get hardware
if they want to test support for features that are not commonly found.

I developed a very nice test driver for that. It needs a bit more work before
I can upstream it, though.

My experience with creating these tools is that they force you to take a
very critical look at the API. Any ambiguities you missed tend to be exposed
by creating these compliance tests.

Regards,

	Hans
