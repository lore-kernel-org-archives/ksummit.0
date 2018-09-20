Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C9089E38
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 10:10:09 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9BBA22D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 10:10:08 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Date: Thu, 20 Sep 2018 13:10:19 +0300
Message-ID: <6032585.bO9iOMYsh1@avalon>
In-Reply-To: <5667498.l7gq0jG24g@aspire.rjw.lan>
References: <20180910174638.26fff182@vmware.local.home>
	<17698287.4NULLKGPAa@avalon> <5667498.l7gq0jG24g@aspire.rjw.lan>
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

Hi Rafael,

On Thursday, 20 September 2018 12:02:33 EEST Rafael J. Wysocki wrote:
> On Wednesday, September 19, 2018 10:26:20 AM CEST Laurent Pinchart wrote:
> > On Wednesday, 12 September 2018 17:11:34 EEST Thomas Gleixner wrote:
> >> On Wed, 12 Sep 2018, Laurent Pinchart wrote:
> >>> Maintainers are much more than patch juggling monkeys, otherwise they
> >>> could be replaced by machines. I believe that maintainers are given
> >>> the huge responsibility of taking care of their community. Fostering a
> >>> productive work environment, attracting (and keeping) talented
> >>> developers and reviewers is a huge and honourable task, and gets my
> >>> full respect. On top of that, if a maintainer has great technical
> >>> skills, it's even better, and I've learnt a lot from talented
> >>> maintainers over the time. I however believe that technical skills are
> >>> not an excuse for not leading by example and showing what the good
> >>> practices are by applying them.
> >> 
> >> I surely agree, but reality is different.
> >> 
> >> I definitely apply my own patches w/o a review tag from time to time.
> >> And aside of obvious typo cleanups/fixlets, which really can and have to
> >> do without, all of my patches are posted to LKML and I carefuly respect
> >> and address review comments.
> >> 
> >> Though, what am I supposed to do if nothing happens? Repost them five
> >> times to annoy people? Been there, tried that. Does not help.
> > 
> > Certainly not. I do apply my own patches without Reviewed-by tags from
> > time to time as well because nobody cared enough about a particular
> > driver to review the code. When working in corporate environment, or on
> > code that is developed by a group of people, it gets a bit easier to find
> > interested (or in the corporate case one could argue coerced) reviewers,
> > but in the general case it's not always possible. I trust that you will
> > actively try to find a reviewer for changes you have doubts about
> > yourself, while you won't necessarily go and ping people for a typo fix.
> > 
> > I don't see anything wrong with this. My point with maintainers privilege
> > was that maintainers shouldn't bypass the normal review procedure of
> > sending patches out to public mailing lists, CC'ing the appropriate
> > developers, giving a bit of time for the review to take place, and
> > incorporating review comments in new versions. If no reviewer shows up,
> > it's business as usual, but not different than what happens with other
> > developers than subsystem maintainers, code can still be merged (I'd love
> > our review rate to be improved, but that's not specific to maintainers
> > patches, it's a general issue).
> > 
> > As I believe I have mentioned before a case where a maintainer submitted a
> > patch touching my code, I reviewed it within a few hours, asking for
> > changes, and the patch was still merged as-is. That's very demotivating
> > for reviewers. Worse, I've pointed out the problem twice by replying to
> > my original review, and still haven't received an answer. This is the
> > kind of maintainers privilege culture that I think isn't acceptable.
> 
> Agreed, but how many maintainers do that?

This specific example is a single person, but that's not an isolated incident. 
I don't have exact numbers though.

> Also, did you talk about the situation to anyone except for the given
> maintainer?

I haven't reported the situation higher up. I more or less gave up due to lack 
of time. And that's not a good thing: I know I got tough enough to think I can 
live with this kind of behaviour, but giving up has an effect on all the other 
developers who could also be subject to this.

> Such practices are potentially dangerous from the technical standpoint too,
> so it would be good to bring them more to light when such things happen.
> 
> That said, talking about "maintainers privilege" in general terms sort of
> puts all maintainers into one "ugly" bucket which many of them don't
> deserve.

I certainly didn't want to imply that the above behaviour was the norm from 
all maintainers, and I do apologize if someone took it personally when that 
wasn't intended, but I have received reports that it's not an isolate case 
either. We do have maintainers privileges in the kernel in the sense that 
maintainers can get away with lots of questionable actions. It does *not* mean 
that those privileges are used and abused by everyone, I am personally of the 
opinion that an overwhelming majority of maintainers do their best, and most 
of them do a good job (mistakes happen, but as long as they're not recurring, 
I have no concern there). There are however cases of abuse, and I don't think 
we should be silent about them on the basis that putting them under the 
spotlight would cast a bad light on all the good maintainers we have. Quite 
the contrary, I think that ignoring issues has a more damaging potential for 
the community as a whole.

I'm thus open to proposal for an alternative vocabulary to discuss what I have 
described so far as maintainers privileges.

> >> Most of these patches are refactoring and cleanups of the subsystems I
> >> 
> >> maintain and I do them for three reasons:
> >>   1) Making the code more maintainable, which in the first place serves
> >>      the egoistic bastard I am, because it makes my life as a maintainer
> >>      simpler in the long run. It also allows others to work easier on
> >>      top of that, which again makes it easier for me to review.
> >>   
> >>   2) During review of a feature patch submitted by someone else, I
> >>      notice that the code is crap already and the feature adds more crap
> >>      to it.
> >>      
> >>      So I first try to nudge the submitter to fix that up, but either
> >>      it's outside their expertise level or they are simply telling me:
> >>      'I need to get this in and cleanup is outside of the scope of my
> >>      task'.
> >>      
> >>      For the latter, I just refuse to merge it most of the times, but
> >>      then I already identified how it should be done and go back to #1
> >>   
> >>   3) New hardware, new levels of scale unearth shortcomings in the code.
> >>      I get problem reports and because I deeply care about the stuff I'm
> >>      responsible for, I go and fix it if nobody else cares. Guess what,
> >>      often enough I do not even get a tested-by reply by the people who
> >>      complained in the first place. But with the knowledge of the
> >>      problem and the solution, I would be outright stupid to just put
> >>      them into /dev/null because applying them again makes my life
> >>      easier.
> >> 
> >> So again, it's a problem which has to do with the lack of review
> >> capacity and the lack of people who really care beyond the brim of their
> >> teacup.
> >> 
> >> The 'Make feature X work upstream' task mentality of companies is part
> >> of the problem along with the expectation, that maintainers will coach,
> >> educate and babysit their newbies when they have been tasked with
> >> problems way over their expertise levels. Especially the last part is
> >> frustrating for everyone. The submitter has worked on this feature for a
> >> long time just to get it shredded in pieces and then after I got
> >> frustrated by the review ping pong, I give up and fix it myself in order
> >> to have time for other things on that ever growing todo list.
> >> 
> >> This simply cannot scale at all and I'm well aware of it, but I
> >> completely disagree that this can be fixed by more formalistic
> >> processes, gitlab or whatever people dream up.
> > 
> > No disagreement here. While gitlab offers interesting features (such as CI
> > integration), no tool will magically improve our review capacity (a new
> > tool could cause a marginal influx of new reviewers currently put off by
> > the need to use e-mail, but I think that in many cases it would be
> > canceled by the exodus of current reviewers who would be forced to use
> > something else - gerrit comes to mind, I think that particular tool it
> > could kill the kernel community).
> 
> Well, to be a meaningful reviewer, you need to be sufficiently familiar with
> the code in question and, to put it bluntly, switching over to a new tool
> won't make people magically acquire that knowledge.

Slightly out of topic, this is one of my concerns with the DRM multi-
committers model. The subsystem has gained lots of reviewers in the sense that 
people have been pushed to cross-review patches (which in itself is not a bad 
idea). However, I'm worried that the global review knowledge (that's a notion 
that may be worth a more formal definition) gets diluted in the process, 
lowering the value of each review independently. I don't know how to fix that 
though, and what the right balance would be between a single reviewer with all 
the knowledge and a myriad of reviewers with little knowledge each.

> Honestly, do we have any research data on how many people actually are put
> off by the "unfriendly" e-mail use for patch review requirement or is it
> just pure speculation?

I believe Daniel has more information.

> >> It has to be fixed at the mindset level. A code base as large and as
> >> complex as the kernel needs continous refactoring and cannot be used as
> >> dumping ground for new features in a drive by mode.
> >> 
> >> Aside of that, I see people working for large companies doing reviews in
> >> their spare time, because they care about it. But that's just wrong,
> >> they should be able to enjoy their spare time as anybody else and get
> >> the time to review during their work hours.
> > 
> > I've successfully negotiated in the past budget (as in time) with a
> > customer to review code in subsystems of interest not directly related to
> > the customer's needs. My main argument was that review was allowing the
> > team to be recognized as a major actor in the subsystem, and to influence
> > technical decisions in a direction as favourable as possible for the
> > customer (but not at the detriment of others of course). This was
> > unfortunately an exception rather than a rule, but I think that if we
> > could hammer the message in at a larger scale, there would be hope for
> > improvement.
> 
> In the first place, as stated above, there need to be more people
> sufficiently failiar with the code where the review is needed and,
> importantly enough, with the assumptions behind it.  Unfortunately, this
> requires quite a bit of learning and, in many cases, significant
> involvement in the development of the code in question.  For mature and
> complex pieces of code this means a steep learning curve for pretty much no
> benefit at least to start with, unless you have a vested interest in that
> code for some reason.
> 
> IMO the only way to improve the situation in that respect would be to find a
> way to retain the people who had already invested time and effort in
> thorough understanding of some kernel code in the community as reviewers,
> but unfortunately I don't see any easy way to achieve that.

I don't think there's an easy way, but I've also been in touch with customers 
who were willing to pay for just development guidance and patch review. That 
was a small minority though (as in a single one :-)), but if we could show 
that companies benefits from such services, it could create a business case 
for kernel developers.

> Also, I don't really think that the tooling and workflow organization
> changes discussed in this thread and elsewhere are likely to really help
> with this particular thing.

-- 
Regards,

Laurent Pinchart
