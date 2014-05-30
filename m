Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 26A14AF1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 15:17:31 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.228])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 86ADB201CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 15:17:30 +0000 (UTC)
Date: Fri, 30 May 2014 11:17:28 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Olof Johansson <olof@lixom.net>
Message-ID: <20140530111728.19902fc4@gandalf.local.home>
In-Reply-To: <CAOesGMgmFkMRurwKdLpmFSOqz-tZ51Phws5ZAA71dieVbHPRFQ@mail.gmail.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.02.1405281847450.1280@utopia.booyaka.com>
	<20140529182753.GJ25041@thunk.org>
	<700704721.GMn4j9GJx9@vostro.rjw.lan>
	<CAOesGMgmFkMRurwKdLpmFSOqz-tZ51Phws5ZAA71dieVbHPRFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Reforming Acked-by (was Re: [TOPIC]
 Encouraging more reviewers)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 29 May 2014 14:03:16 -0700
Olof Johansson <olof@lixom.net> wrote:

> What are we really trying to fix here? Is the current process really
> broken or are we trying to create more process that's not needed for
> some other reason?

The only reason I'm actually for adding another tag is that I get
confused in what to tag something with. I get Cc'd on most things
related to tracing or x86 or scheduling. Yes, I'm the maintainer of
tracing, but the code I'm Cc'd on is about tracing a particular
subsystem that I do not have the expertise to really review the patch
that is changing. I'm assuming they just want me to ack that the
tracing parts are correct. I don't add a reviewed-by because I'm not
saying that I review the guts of the change, just the tracing parts.

I send an Acked-by, which you could argue that as maintainer of tracing
it fits. But really, the code is completely self contained in some
particular subsystem that I have no connection with, besides that they
are using my tracing infrastructure.

The maintainers may want my Acked-by to give them a warm fuzzy feeling
that they did the tracing correct, but I don't want others to think
that I'm in any way a maintainer of their system. This is why I would
like to see a maintainer only tag. For others that are reviewing the
change logs, they can see, "oh this person must be important to require
the approved-by tag on this commit".

Then I get Cc'd on x86 and scheduling because I do work there, but I'm
far from a maintainer of that code. If I get a chance, I will do a
quick review and send a Acked-by, especially if it touches the code
I've changed. But I may not have time to review it enough to designate
a reviewed-by tag.

> 
> As a maintainer for arm-soc, I know which subsystem maintainers I
> should get an Acked-by before I'm ok merging in a branch with, say,
> some driver changes from a platform maintainer. I mostly know because
> we keep intersecting with the same subsystems, but for new ones
> there's one natural place I go to look: MAINTAINERS. Figuring out
> merge paths and when something should go through our tree instead of
> the maintainers tree is always going to be something where people
> actually need to talk to each other and make a decision, I don't think
> we can make tools and process for it.
> 
> Renaming the tag that they use isn't going to change the due diligence
> I have to make (I still need to make sure they're actually the right
> person to give it out, etc). And I'm definitely not worried by the
> possible conflict of the "I gave this a casual review and I think we
> should let it go in" acks since a maintainer is unlikely to give out
> those kind of acks to code that he would otherwise merge himself.

You also are forgetting that you push to Linus. Now this may be a
question to Linus if he would like a separate tag. If he notices that
you included a change from another subsystem, he will need to check if
you got all the necessary acked-bys from the maintainers. If there's a
bunch of Acked-bys he needs to make sure the maintainer is one of them.
Having a single Approved-by may facilitate this for him.

-- Steve
