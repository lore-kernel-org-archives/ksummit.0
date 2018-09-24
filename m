Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 93288114E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 23:15:06 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0D76A7EA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 23:15:05 +0000 (UTC)
Message-ID: <1537830902.4935.1.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Shuah Khan <shuah@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org,  Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, clm@fb.com, dan.j.williams@intel.com,
	Jonathan Corbet <corbet@lwn.net>, olof@lxom.net, rostedt@goodmis.org,
	torvalds@linux-foundation.org
Date: Mon, 24 Sep 2018 16:15:02 -0700
In-Reply-To: <cf7638b9-c25d-d47e-f539-192a43268122@kernel.org>
References: <cf7638b9-c25d-d47e-f539-192a43268122@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [TECH-TOPIC] Review - Code of Conduct: Let's
 revamp it.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2018-09-24 at 08:24 -0600, Shuah Khan wrote:
> I have been trying to follow various threads on this topic and none
> of them address the review of this patch that went in. There is no
> mistake in the title of this topic. I do consider this topic to be
> more general than limited to Maintainer Summit. Hence, the choice of
> a wider Technical designation.
> 
> So I am kicking off a thread to do the review with my comments. I am
> in general agreement with the spirit of this change to the existing
> "Code of Conflict".

I'm also on record in a precious thread of saying I don't think the new
code of conduct covers the behaviours we actually want to control and
the advice we'd like to give about list (and other) interactions.

> Now specific concerns and comments:
> 
> I am concerned about the added responsibilities as a maintainer. I
> have to not only worry about the quality of code and technical
> aspects, but also be responsible for behavior of individuals I might
> not have any control or sway over. That said, I am hopeful that this
> will help all of us in the community, maintainers and contributors
> alike to think a bit more about how their response will be received
> and would they like it if they are at the receiving end of that kind
> of message, before hitting that send button. When we see a response
> that is offensive and/or hurtful, there is usually silence
> on such threads. So maybe that will change with this CoC and at least
> some of us will say, let's use a firm and polite message as opposed
> to offensive/hurtful message.
> 
> I also have a concern that what is hurtful can be somewhat
> subjective. What a maintainer considers isn't hurtful, could be
> perceived as hurtful by the individual at the receiving end.
> 
> What is offensive is a bit more clear. It will be learning curve for
> us as a community and I do think we will get there. I believe our
> kernel community at large is respectful and helpful.

Actually, reading the above and agreeing with it I think the main
problem is that what we're discussing as a Code of Conduct isn't one at
all; it's really an anti Harassment policy.  That's why I think it
doesn't cover the email reviews and things very well and why we're all
concerned that it gives maintainers a load of responsibilities they
can't really police.

Perhaps we could do with finding a middle ground between the previous
code of conflict, which was fairly tailored to our environment but
lacked some specifics and the new code of conduct which doesn't seem to
be well tailored at all for us.

Perhaps what we're looking for as the middle ground is something based
on the Debian code of conduct (obviously with modifications for us):

https://www.debian.org/code_of_conduct

It seems to keep their discussions (even on debian-legal) within the
bounds of civility.

Perhaps the one thing lacking in the Debian CoC is the actual
responsibilities of a maintainer, so perhaps that's the bit we should
concentrate on.

To try to kick off: as a maintainer, I'm happy to try to police
civility by calling adverse behaviours out on the list and trying to
get people to see each other's point of view in an argument (it's
basically what the SCSI maintainers already do).  I do think we also
have the ultimate sanction of asking for a ban of people who prove
incorrigible (we've done that before on vger), but we should use it
very sparingly.

> This decision to change the existing "Code of Conflict" signed off by
> a large number of developers, has been changed and committed with a
> few people signing off on it.
> 
> It would be good to know the circumstances that necessitated the
> decision to include this patch without the proper review process. if
> that isn't possible, it is important to follow the review
> process now for v2. Also, discussing this in the Maintainer summit
> and/or kernel summit will not make the community feel like it is a
> community approved decision. At least, kernel community should
> be given a chance to discuss this change just like any other change.

I think a lot of people have pieces but very few know the whole.  I
also trust Jon who said he'd try to put it together for us and lwn.net
so hopefully by the time even the maintainers' summit rolls around this
won't be such a big issue.

James
