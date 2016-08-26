Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A34021BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 00:59:17 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7A26B1E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 00:59:16 +0000 (UTC)
Date: Thu, 25 Aug 2016 20:59:14 -0400
From: Greg KH <greg@kroah.com>
To: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>
Message-ID: <20160826005914.GA12749@kroah.com>
References: <e315013e77cc851b040b5b5f4fe9f0bf@motives.com>
	<20160824130832.GA28564@kroah.com>
	<1472052583.61594.577.camel@infradead.org>
	<20160824174724.GE30853@kroah.com> <20160824205011.GA31615@ebb.org>
	<20160824215447.GA5368@kroah.com> <20160825040619.GA32072@ebb.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160825040619.GA32072@ebb.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 24, 2016 at 09:06:19PM -0700, Bradley M. Kuhn wrote:
> Greg KH wrote:
> > I don't want Linux to be a test case for the GPL as you put it
> > recently.
> 
> I am certainly sympathetic to your position.  But I myself don't
> have the power nor will to make Linux into GPL's test case; a confluence of
> external events already did that without my help.  I've been involved with
> copyleft enforcement and policy for almost copyleft's entire existence.  I
> observe now that the last 10 years brought something that never occurred
> before with any other copylefted code.  Specifically, with Linux, we find
> both major and minor industry players determined to violate the GPL, on
> purpose, and refuse to comply, and tell us to our faces: "you think that we
> have to follow the GPL?  Ok, then take us to Court.  We won't comply
> otherwise."  (None of the companies in your historical examples ever did
> this, Greg.)  And, the decision to take that position is wholly in the hands
> of the violators, not the enforcers.
> 
> In response, we have two options: we can all decide to give up on the GPL, or
> we can enforce it in Courts.

I call bullshit on this.

And frankly, I'm tired of hearing it, as it's completely incorrect and
trivializes the effort that thousands of people have been doing for 25+
years to preserve the rights that the GPL grants us.

> There's another vocal and significant minority of Linux contributors and
> users who oppose GPL enforcement.  Greg, I wouldn't have pegged you for being
> in that camp until this thread, but it seems that you now are. :)

I have NEVER said I oppose "GPL enforcement", I will say that I oppose
the way that _you_ approach this task.

And here is why.

I too have had people say to my face, numerous times, "you think that we
have to follow the GPL?  Ok, then take us to Court.  We won't comply
otherwise."  And guess what, no one took anyone to court, and every
single time, I ended up with the code[1].

As you well know, when you take legal action against someone, you have
to be prepared to lose, and accept the consequences of that loss.

Frankly, I am not prepared to lose, and there is no way in hell that I
am willing to accept the consequences of such a loss.

You have told me yourself that you are willing to take that risk, and I
have told you that I am not.  I want Linux to succeed, I think it's the
right way to develop a software project, it's personally immensely
satisfying work, and the benefits it brings to millions of people
allowing them to create and control their lives is invaluable.

I've spent the last decade of my life working to support, grow, and
enhance our community.  And corporations are a _huge_ part of our
community, and frankly, the only reason we are where we are today.  We
_have_ to work to bring more companies and their developers into our
group, never working to purposefully alienate anyone.

Here's what happens when you threaten legal action against a company:
	- they instantly stop talking to any "external" developer that
	  might have been working with them to figure this community and
	  license thing out.  So much for our "back channel" to them
	  that was slowing starting to pay off.
	- they bring in more lawyers, and react defensively to protect
	  themselves, as that's what they have to do to preserve the
	  company.
	- Anyone in the company that pushed to use Linux is now seen as
	  "wrong" and instantly is pissed off that external people just
	  messed up their employment future.
	- Anyone in the company that resisted the use of Linux (possibly
	  in ways that caused the code not to be released over the
	  objection of the previously mentioned people) are vindicated
	  in their opinion of those "hippy"[2] programmers who develop
	  Linux.
	- The lawyers know that now that you are willing to accept that
	  loosing is an option, and will do everything in their
	  capability to ensure that it happens (drag it out, annoy the
	  hell out of developers by disposing them, burn your money in
	  whatever way they can, etc.)

Now, even if, after many years of work on your part, you do get that
code, what is the end result?  You have made an enemy for life from the
people who brought Linux into the company, you have pissed off the
people who didn't like Linux in the first place as they were right and
yet you "defeated" them.  Both of those groups of people will now work
together to never use Linux again as they don't want to go through that
hell again, no matter what.

And look, we have a case study of this, BusyBox.  That's exactly what
happened numerous times.  Some of those people/companies you upset had
enough resources to create a competing project to replace it and ensure
that they never have to deal with that mess again.

And yes, you are "vindicated", but at what cost?  You have the code,
it's useless as it's old, obsolete, not mergable, and oops, your
development community is now dead and the project is obsolete.

So, turn it around, and look at how _we_ have been doing enforcement in
the Linux community for the past 25 years.

We do it quietly, working with companies, from within, convincing them
that yes, this license that seems so strange and crazy is really worth
following, not only because it is the law (companies ignore the law all
the time, it's called risk management), but because it turns out it is
the right thing to do from a business point of view.  It's cheaper to do
so, the benefit is huge, and the return on investment is immense when
they join together to work with us, instead of off in their own bubble.

By doing this, the people that pushed for Linux in their company are
vindicated and love you more, some of the naysayers are convinced,
slowly, of the real truth here, and boom, you now have grown and
strengthened your community and the feedback loop continues.

Now back to one of those companies that told me to my face I was going
to have to sue them.  I just reviewed a major patch set from that
company a few weeks ago[3]  Would that have worked if I had taken legal
action against them?  No way!  They are now a part of our community and
helping to make it succeed as their company relies on it.[4]  It took
many many years of work, but it happened.

So, by working with people, and showing them the BENEFIT of the GPL,
we grow our community, ensure our survival, and win converts to the
license itself as now those people have a stake in it as their company
relies on it.

A very smart senior kernel developer once told me over drinks in a bar
in Germany many years ago, something along the lines of "A foolish man
bangs on the outside trying to change a company, a wise and cunning man
works from within the company, changing it from inside such that it
never knew what happened."

And look, that's _exactly_ what we have done.  Us "punks" have grown up,
changed companies from within in ways that no one had ever imagined was
possible, and now hold major influence within them, if not total control
in some instances!  Look at the success of Linux, we took over the
world, by working from the bottom up, embracing and taking over all
possible industries in ways that has never been done before.

And we did it all by not suing anyone, as some of us know that's the
quickest way to piss businesses off and make enemies.[5]

Now you are in a problem here.  Being the representative of a number of
copyright holders, you only can use a legal approach in order to try to
get companies to comply.  All you have is a threat of litigation, which
clouds the viewpoint you are coming from (as is evident in your original
statement above about "enforce or give up".)

But me, and hundreds like me, who are the developers of the code, and
the people with the most at stake in the project, have more tools at our
disposal in order to achieve the goal of getting the code created by
companies, and bringing them into "the fold."  Bringing a developer in
to talk to people, and work with people, and discussing things
face-to-face, without any lawyers involved, is a incredibly powerful
force. Yeah, it's not flashy or public, it's slow, a grind, frustrating,
thankless, and burns airline miles like crazy.

But it's working.  And has worked.  So to dismiss the way a large number
of us have been doing this for decades as "not working" is personally
hurtful, and totally short-sighted.  I feel we have the proof that this
_does_ work based on the success of Linux.

Remember, "carrot vs. stick", "honey vs. vinegar", and the like.  Maybe
it's just me and my "attachment parenting" model of approaching the
world, but I honestly think that it's better to be nice to people than
to piss them off, if you wish to have them join you in your goals.

Another proof point, look at Microsoft and the BSA.  How many companies
did they piss of when they went in with lawyers to enforce their
licenses?  Wasn't it Fender Guitar that flat out refuses to ever use
anything from Microsoft again because of that?  We don't ever want to be
accused of acting like that to any company.

And yes, I know you work with companies before resorting to legal
action.  But it's not the developers of the project working with the
company, it's their representative, a VERY big difference, as is seen by
how it has worked out with Busybox.

This has gotten way off topic, sorry, but I felt I had to set the record
straight of being accused of not working on, or wanting to, enforce the
license of the project I have spent decades working on, that I feel is
one of the main reasons it has succeeded.

As you like to quote Linus, I will too, "once the lawyers are involved,
you have lost".

And you can quote me, "I do not want to lose."

So, back on topic, I think that the kernel summit should be left to
technical issues, as well as development issues (how maintainers work,
how releases happen, if we will finally turn off bugzilla, etc.)  Let's
keep the legal, and political, things out of it, in my opinion that
doesn't belong there.

Especially as I don't want to have to have my lawyer present in order
for me to be able to attend :)

thanks,

greg k-h


[1] It always, without fail, totally sucked.
[2] Personally I prefer being called a "punk", as that's much more
    accurate as to where the majority of us came from, yourself
    included.
[3] It still sucked, they haven't learned much, but they are trying and
    willing to learn.
[4] I want to resist the analogy of a drug pusher "first hit is free!",
    so I'll bury it here in a footnote.
[5] Till and Harald did take people to court, and it was good, but the
    issues there were much different than what you are proposing, and
    the stakes were much lower.
