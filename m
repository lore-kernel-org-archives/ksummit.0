Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DC4CCB78
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 08:26:10 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 86420F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 08:26:09 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Thomas Gleixner <tglx@linutronix.de>
Date: Wed, 19 Sep 2018 11:26:20 +0300
Message-ID: <17698287.4NULLKGPAa@avalon>
In-Reply-To: <alpine.DEB.2.21.1809121531280.9957@nanos.tec.linutronix.de>
References: <20180910174638.26fff182@vmware.local.home>
	<3070742.JVHc92YBtH@avalon>
	<alpine.DEB.2.21.1809121531280.9957@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Thomas,

On Wednesday, 12 September 2018 17:11:34 EEST Thomas Gleixner wrote:
> On Wed, 12 Sep 2018, Laurent Pinchart wrote:
> > Maintainers are much more than patch juggling monkeys, otherwise they
> > could be replaced by machines. I believe that maintainers are given the
> > huge responsibility of taking care of their community. Fostering a
> > productive work environment, attracting (and keeping) talented developers
> > and reviewers is a huge and honourable task, and gets my full respect. On
> > top of that, if a maintainer has great technical skills, it's even
> > better, and I've learnt a lot from talented maintainers over the time. I
> > however believe that technical skills are not an excuse for not leading
> > by example and showing what the good practices are by applying them.
> 
> I surely agree, but reality is different.
> 
> I definitely apply my own patches w/o a review tag from time to time. And
> aside of obvious typo cleanups/fixlets, which really can and have to do
> without, all of my patches are posted to LKML and I carefuly respect and
> address review comments.
> 
> Though, what am I supposed to do if nothing happens? Repost them five times
> to annoy people? Been there, tried that. Does not help.

Certainly not. I do apply my own patches without Reviewed-by tags from time to 
time as well because nobody cared enough about a particular driver to review 
the code. When working in corporate environment, or on code that is developed 
by a group of people, it gets a bit easier to find interested (or in the 
corporate case one could argue coerced) reviewers, but in the general case 
it's not always possible. I trust that you will actively try to find a 
reviewer for changes you have doubts about yourself, while you won't 
necessarily go and ping people for a typo fix.

I don't see anything wrong with this. My point with maintainers privilege was 
that maintainers shouldn't bypass the normal review procedure of sending 
patches out to public mailing lists, CC'ing the appropriate developers, giving 
a bit of time for the review to take place, and incorporating review comments 
in new versions. If no reviewer shows up, it's business as usual, but not 
different than what happens with other developers than subsystem maintainers, 
code can still be merged (I'd love our review rate to be improved, but that's 
not specific to maintainers patches, it's a general issue).

As I believe I have mentioned before a case where a maintainer submitted a 
patch touching my code, I reviewed it within a few hours, asking for changes, 
and the patch was still merged as-is. That's very demotivating for reviewers. 
Worse, I've pointed out the problem twice by replying to my original review, 
and still haven't received an answer. This is the kind of maintainers 
privilege culture that I think isn't acceptable.

> Most of these patches are refactoring and cleanups of the subsystems I
> maintain and I do them for three reasons:
> 
>   1) Making the code more maintainable, which in the first place serves the
>      egoistic bastard I am, because it makes my life as a maintainer
>      simpler in the long run. It also allows others to work easier on top
>      of that, which again makes it easier for me to review.
> 
>   2) During review of a feature patch submitted by someone else, I notice
>      that the code is crap already and the feature adds more crap to it.
> 
>      So I first try to nudge the submitter to fix that up, but either it's
>      outside their expertise level or they are simply telling me: 'I need
>      to get this in and cleanup is outside of the scope of my task'.
> 
>      For the latter, I just refuse to merge it most of the times, but then
>      I already identified how it should be done and go back to #1
> 
>   3) New hardware, new levels of scale unearth shortcomings in the code. I
>      get problem reports and because I deeply care about the stuff I'm
>      responsible for, I go and fix it if nobody else cares. Guess what,
>      often enough I do not even get a tested-by reply by the people who
>      complained in the first place. But with the knowledge of the problem
>      and the solution, I would be outright stupid to just put them into
>      /dev/null because applying them again makes my life easier.
> 
> So again, it's a problem which has to do with the lack of review capacity
> and the lack of people who really care beyond the brim of their teacup.
> 
> The 'Make feature X work upstream' task mentality of companies is part of
> the problem along with the expectation, that maintainers will coach,
> educate and babysit their newbies when they have been tasked with problems
> way over their expertise levels. Especially the last part is frustrating
> for everyone. The submitter has worked on this feature for a long time just
> to get it shredded in pieces and then after I got frustrated by the review
> ping pong, I give up and fix it myself in order to have time for other
> things on that ever growing todo list.
> 
> This simply cannot scale at all and I'm well aware of it, but I completely
> disagree that this can be fixed by more formalistic processes, gitlab or
> whatever people dream up.

No disagreement here. While gitlab offers interesting features (such as CI 
integration), no tool will magically improve our review capacity (a new tool 
could cause a marginal influx of new reviewers currently put off by the need 
to use e-mail, but I think that in many cases it would be canceled by the 
exodus of current reviewers who would be forced to use something else - gerrit 
comes to mind, I think that particular tool it could kill the kernel 
community).

> It has to be fixed at the mindset level. A code base as large and as
> complex as the kernel needs continous refactoring and cannot be used as
> dumping ground for new features in a drive by mode.
> 
> Aside of that, I see people working for large companies doing reviews in
> their spare time, because they care about it. But that's just wrong, they
> should be able to enjoy their spare time as anybody else and get the time
> to review during their work hours.

I've successfully negotiated in the past budget (as in time) with a customer 
to review code in subsystems of interest not directly related to the 
customer's needs. My main argument was that review was allowing the team to be 
recognized as a major actor in the subsystem, and to influence technical 
decisions in a direction as favourable as possible for the customer (but not 
at the detriment of others of course). This was unfortunately an exception 
rather than a rule, but I think that if we could hammer the message in at a 
larger scale, there would be hope for improvement.

> I surely encourage people to review things and I offload quite some of the
> work to people who care, but finding them and keeping them on board is hard
> because their daily work just does not allow them to keep up.
> 
> I'm definitely open for new ideas and new ways to work, but OTOH I'm not
> interested at all in the 'fix the symptoms' approach and thereby hoping
> that the root cause will cure itself. It simply does not work independent
> of the problem space.

-- 
Regards,

Laurent Pinchart
