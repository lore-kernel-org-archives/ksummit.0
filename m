Return-Path: <Bart.VanAssche@sandisk.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2C080BAE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Apr 2017 16:02:26 +0000 (UTC)
Received: from esa4.hgst.iphmx.com (esa4.hgst.iphmx.com [216.71.154.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 46D2A1F3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Apr 2017 16:02:25 +0000 (UTC)
To: James Bottomley <James.Bottomley@HansenPartnership.com>, Laurent Pinchart
	<laurent.pinchart@ideasonboard.com>, Linus Torvalds
	<torvalds@linux-foundation.org>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<20188905.kHbMkj7sB6@avalon>
	<CA+55aFxFyX-6y0MH2QivC+GAVThEFNHVKc3DBZJzDBc9JU_nCQ@mail.gmail.com>
	<1834084.5qZ8rLimvk@avalon>
	<1492631703.3217.30.camel@HansenPartnership.com>
From: Bart Van Assche <bart.vanassche@sandisk.com>
Message-ID: <3f55980c-1e8d-c841-2555-472ed10eb2fc@sandisk.com>
Date: Tue, 25 Apr 2017 09:02:12 -0700
MIME-Version: 1.0
In-Reply-To: <1492631703.3217.30.camel@HansenPartnership.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Miller <davem@davemloft.net>,
	Doug Ledford <dledford@redhat.com>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 04/19/17 12:55, James Bottomley wrote:
> On Wed, 2017-04-19 at 22:50 +0300, Laurent Pinchart wrote:
>> On Wednesday 19 Apr 2017 12:40:47 Linus Torvalds wrote:
>>> On Wed, Apr 19, 2017 at 12:25 PM, Laurent Pinchart wrote:
>>>> Agreed, for a maintainer summit to be useful, we need to have 
>>>> multiple sides present. Gathering core maintainers with key
>>>> representatives of the downstream communities around the table is 
>>>> great, but I think we would be missing one category whose opinion 
>>>> is equally important: kernel developers.
>>>>
>>>> When everything goes well developers can be represented by their
>>>> maintainers. That's the case where the process flows smoothly, so 
>>>> there isn't likely to be much to discuss. However, problems 
>>>> occurring in the maintenance process are likely to result in, if 
>>>> not conflicts, at least different views between maintainers and 
>>>> developers, in which case developers won't be represented at the
>>>> summit.
>>>>
>>>> I'm not sure how to handle that. I certainly don't want to 
>>>> increase the number of attendees to include key representatives 
>>>> of developers (and while I'd be very curious to see how they 
>>>> would be selected, I doubt it would work in practice), but I also 
>>>> believe we need to address this class of maintainership issues.
>>>
>>> I do agree that it would be a great thing to have a "bitch at
>>> maintainers" session where developers get to vent frustration at 
>>> how their patches are (or are _not_) accepted by maintainers.
>>>
>>> I know we've had issues in the VFS layer, with Al sometimes
>>> effectively dropping off the intenet for a time, for example.  And 
>>> I'm sure it happens elsewhere too, I'm just aware of the VFS side
>>> because it's one of the areas where I end up personally being a 
>>> secondary maintainer.
>>>
>>> But the problem with that "bitch at maintainers" thing is that I 
>>> can't for the life of me come up with a sane small set of people to 
>>> do that. So I don't see it happening ;(
>>
>> I currently don't have any good idea to make that happen either, but 
>> I'll keep thinking about it :-) More than bitching at maintainers, I 
>> believe that lots of developers, especially "smaller" or infrequent 
>> kernel contributors, are frustrated by maintainership issues that the 
>> related maintainers might not even be aware of.
> 
> Isn't it easy?  The Maintainers summit is going to be part of a larger
> kernel track within LinuxCon EU  (not that everyone plans on staying
> on, of course, but several will be).  Just put the bitch at Maintainers
> session in that as a round table, so any attendee of LinuxCon EU can
> come and complain if they want to.

We all know that the stability and the long-term success of the Linux
kernel strongly depend on how well kernel maintainers do their job. What
I noticed myself is that for some subsystems I contribute to (e.g.
block, SCSI and RDMA) maintainers provide feedback about patches within
a very reasonable time. For two other subsystems I contribute to it can
take weeks or months before adequate feedback is provided. Sorry but I
don't think that it is acceptable that it takes that long before
feedback is provided and hence that this is a topic that deserves to be
discussed during the maintainer summit.

Bart.
