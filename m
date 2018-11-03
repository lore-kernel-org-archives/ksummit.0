Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3AD6E8B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 Nov 2018 17:38:04 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3311675B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 Nov 2018 17:38:02 +0000 (UTC)
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	wA3HXh4K120269 for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 3 Nov 2018 13:38:01 -0400
Received: from e16.ny.us.ibm.com (e16.ny.us.ibm.com [129.33.205.206])
	by mx0b-001b2d01.pphosted.com with ESMTP id 2nh7tymy9v-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 03 Nov 2018 13:38:01 -0400
Received: from localhost
	by e16.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Sat, 3 Nov 2018 17:38:00 -0000
Date: Sat, 3 Nov 2018 10:37:56 -0700
From: "Paul E. McKenney" <paulmck@linux.ibm.com>
To: NeilBrown <neil@brown.name>
Reply-To: paulmck@linux.ibm.com
References: <87y3ar80ac.fsf@notabene.neil.brown.name>
	<20181021222608.GA24845@localhost>
	<875zxt919d.fsf@notabene.neil.brown.name>
	<20181024121622.GA10942@localhost>
	<87ftwt6850.fsf@notabene.neil.brown.name>
	<20181027011010.GA29769@localhost>
	<20181101164544.GA31540@linux.ibm.com>
	<8736sk31t8.fsf@notabene.neil.brown.name>
	<20181102133309.GQ4170@linux.ibm.com>
	<87lg6a1rss.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87lg6a1rss.fsf@notabene.neil.brown.name>
Message-Id: <20181103173756.GG4170@linux.ibm.com>
Cc: Mishi Choudhary <mishi@linux.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] Call to Action Re: [PATCH 0/7] Code of
 Conduct: Fix some wording, and add an interpretation document
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Nov 03, 2018 at 07:36:19PM +1100, NeilBrown wrote:
> On Fri, Nov 02 2018, Paul E. McKenney wrote:
> 
> > On Fri, Nov 02, 2018 at 08:50:11AM +1100, NeilBrown wrote:
> >> On Thu, Nov 01 2018, Paul E. McKenney wrote:
> >> 
> >> > On Sat, Oct 27, 2018 at 02:10:10AM +0100, Josh Triplett wrote:
> >> >> On Fri, Oct 26, 2018 at 08:14:51AM +1100, NeilBrown wrote:
> >> >> > On Wed, Oct 24 2018, Josh Triplett wrote:
> >> >> > 
> >> >> > > On Tue, Oct 23, 2018 at 07:26:06AM +1100, NeilBrown wrote:
> >> >> > >> On Sun, Oct 21 2018, Josh Triplett wrote:
> >> >> > >> 
> >> >> > >> > On Mon, Oct 22, 2018 at 08:20:11AM +1100, NeilBrown wrote:
> >> >> > >> >> I call on you, Greg:
> >> >> > >> >>  - to abandon this divisive attempt to impose a "Code of Conduct"
> >> >> > >> >>  - to revert 8a104f8b5867c68
> >> >> > >> >>  - to return to your core competence of building a great team around
> >> >> > >> >>    a great kernel
> >> >> > >> >> 
> >> >> > >> >>  #Isupportreversion
> >> >> > >> >> 
> >> >> > >> >> I call on the community to consider what *does* need to be said, about
> >> >> > >> >> conduct, to people outside the community and who have recently joined.
> >> >> > >> >> What is the document that you would have liked to have read as you were
> >> >> > >> >> starting out?  It is all too long ago for me to remember clearly, and so
> >> >> > >> >> much has changed.
> >> >> > >> >
> >> >> > >> > The document I would have liked to have read when starting out is
> >> >> > >> > currently checked into the source tree in
> >> >> > >> > Documentation/process/code-of-conduct.rst .
> >> >> > >> 
> >> >> > >> I'm curious - what would you have gained by reading that document?
> >> >> > >
> >> >> > > I would have then had rather less of a pervasive feeling of "if I make
> >> >> > > even a single mistake I get made an example of in ways that will feed
> >> >> > > people's quotes files for years to come".
> >> >> > 
> >> >> > Thanks for your reply.  Certainly feeling safe is important, and having
> >> >> > clear statements that the community values and promotes psychological
> >> >> > safety is valuable.
> >> >> > 
> >> >> > The old "code of conflict" said
> >> >> >    If however, anyone feels personally abused, threatened, or otherwise
> >> >> >    uncomfortable due to this process, that is not acceptable. 
> >> >> > 
> >> >> > would you have not found this a strong enough statement to ward off that
> >> >> > pervasive feeling?
> >> >> 
> >> >> Not when that document started out effectively saying, in an elaborate
> >> >> way, "code > people".
> >> >
> >> > Interesting.
> >> >
> >> > I am curious what leads you to your "code > people" statement.  Of course,
> >> > one could argue that this does not really matter given that the code of
> >> > conflict is no longer.  However, I would like to understand for future
> >> > reference, if for no other reason.
> >> >
> >> > One possibility is that you are restricting the "people" to only those
> >> > people directly contributing in one way or another.  But those using the
> >> > kernel (both directly and indirectly) are important as well, and it is
> >> > exactly this group that is served by "the most robust operating system
> >> > kernel ever", the chest-beating sentiment notwithstanding.  Which is in
> >> > fact why I must reject (or rework or whatever) any patch that might result
> >> > in too-short RCU grace periods:  The needs of the patch's submitter are
> >> > quite emphatically outweighed by the needs of the kernel's many users,
> >> > and many of the various technical requirements and restrictions are in
> >> > fact proxies for the needs of these users.
> >> >
> >> > But you knew that already.
> >> >
> >> > Similarly for the Linux kernel's various code-style strictures, which
> >> > serve the surprisingly large group of people reading the kernel's code.
> >> > Including the stricture that I most love to hate, which is the one
> >> > stating that single-line do/for/if/while statements must not be enclosed
> >> > in braces, which sometimes causes me trouble when inserting debug code,
> >> > but which also makes more code fit into a window of a given size.  ;-)
> >> >
> >> > But you knew that already, too.
> >> >
> >> > The maintainability requirements can be argued to mostly serve the
> >> > maintainers, but if the code becomes unmaintainable, future users
> >> > will be inconvenienced, to say the least.  So even the maintainability
> >> > requirements serve the kernel's many users.
> >> >
> >> > But you also knew that already.
> >> >
> >> > So what am I missing here?
> >> >
> >> 
> >> Hi Paul,
> >>  thanks for contributing your thoughts.  It is nice to have a new voice
> >>  in the conversation, it helps me to maintain my illusion that this
> >>  issue is relevant to the whole community.
> >
> > I am not sure whether I should feel Australia-style chastened,
> > American-style encouraged, or what, but either way, good show on that
> > paragraph.  ;-)
> >
> >>  I cannot, of course, speak to why Josh wrote what he did, but I can
> >>  give some insight into why I had no disagreement with that part of his
> >>  statement.
> >>  A key insight, worth your time to consider and unpack I think, is
> >> 
> >>       People won't care what you know, until they know that you care.
> >> 
> >>  I won't dwell on that here, but will make some more obviously relevant
> >>  observations.
> >> 
> >>  Firstly, you gave an analytical response to what was, in my view, an
> >>  emotional observation.  While I agree with your analysis, it is largely
> >>  irrelevant.  It is not how people *feel* about kernel development.
> >> 
> >>  You say that the code of conflict is gone, but in fact much of it is
> >>  preserved in the code-of-conduct-interpretation.  If you reflect on the
> >>  focus of the second para of that document (which I think was directly
> >>  lifted from the code-of-conflict) you will see that value is placed
> >>  squarely on the code (kernel code, not code of conduct).  The code is
> >>  put forward as the thing of primary importance.  People (you, me) are
> >>  only mentioned in the context of being the authors of code that will be
> >>  criticised  - because (it almost says this) we care about the code, but
> >>  not about you.
> >> 
> >>  So I think it is beyond argument that the value system presented by
> >>  this paragraph is
> >>       code > people
> >> 
> >>  I think this is particularly unfortunate as it is not really how the
> >>  community works, and not really how Linus works, except in those
> >>  occasional outbursts that are publicised so much.
> >> 
> >>  I recall two specific events (there were probably others) from early in
> >>  my Linux experience where Linus said/did things which said to me that
> >>  he valued me, not just the code that I wrote.  I think he did that a
> >>  lot (and probably still does).  As I knew that he "cared", I was much
> >>  more interested in what he knew/thought.
> >> 
> >>  I think that the fact that Linus is now acknowledging every "pull"
> >>  request is brilliant.  It doesn't really help the process much (we all
> >>  have plenty of visibility into what Linus has pulled) and doesn't help
> >>  the code (directly) at all.  But it tells people that Linus can see
> >>  them, and has seen them.  It also allows people to see that they have
> >>  an email from Linus without expecting it to be a criticism.  Certainly
> >>  he still criticises and is right to do so, and he doesn't say "Pulled,
> >>  thanks", which would be my preference, but the fact that he responds at
> >>  least says "me responding to you matters" and by implication "you
> >>  matter".
> >> 
> >>  (The code-of-conflict only acknowledged that you matter once you feel
> >>  personally abused).
> >
> > I agree that Linus's acknowledging pull requests is a good thing.  I have
> > long appreciated my upstream maintainer doing the same, and I do try to
> > acknowledge patch submissions myself.  And yes, motivating people is an
> > underappreciated art, and an art made more difficult by the wide variety
> > of mindsets, even within a relatively like-minded community such as the
> > Linux kernel community.  So I agree that improvements are welcome, and
> > further believe that there always will be room for improvement.
> >
> > But I am still not seeing "code > people" in the interpretation document.
> > For me, it is all about people.
> >
> > Back to "People won't care what you know, until they know that you care."
> >
> > Fortunately for me, it is not necessary for all that many people to care
> > what I know, given that I have the usual human limitations on the number
> > of individuals that I can directly relate to, and this number is way
> > less than the billions that have some relationship to the Linux kernel,
> > unwitting though that relationship is in the common case.
> >
> > In contrast, back in the late 70s, my software had two users, and I
> > frequently chatted with both of them.  This is clearly not possible in
> > the case of the Linux kernel.  Nor would it be all that helpful, given
> > that all they really need from me is to keep RCU working properly.
> > So I instead create an abstraction of those users' needs in the form
> > of requirements.  These requirements might seem dull and uninspiring,
> > but they are in fact a proxy for the needs of the users.
> >
> > In short, instead of "code > people", I am seeing "our users need us".
> 
> Ok, maybe we need to introduce a distinction here.
> - our users are affected by our product
> - our developers are affected by our process
> 
> The para in question talks a lot about meeting the needs of our users,
> and says almost nothing about meeting the needs of our developers.  In
> fact, our developers need to submit their needs to the needs for the
> users.  So maybe the inequality is "users > developers".
> 
> Now you and I and most of the community know that this isn't true, the
> developers are actually valued: patches are reviewed, bug reports are
> attended to, questions are answered.

I completely and emphatically agree that the reality is quite a bit more
complicated and nuanced than can be captured by sound bites, whether
inequalities or otherwise.  For example, one sense in which "users >
developers" might be said to be true is that things usually don't go
at all well for developers when users vote with their feet, abandoning
the project.  And one sense in which "developers > users" might be said
to be true is in terms of direct influence over the project itself.

I am quite confident that you could easily come up with a very large
number of additional examples supporting any number of inequalities
between any number of pairs of subgroups within the greater Linux-kernel
community.  ;-)

> On re-reading the text in question, I see that it says:
> 
>    Your contributions and ideas behind them will be
>    carefully reviewed, ...
> 
> and while that is a good thing, it really doesn't come across as
> welcoming to me. ( .... will be *welcomed* and carefully reviewed....)

Heh!  Like many people in my country, there is a mat labeled "Welcome" in
front of my door.  And, again like many people in my country, that door
is almost always locked, which is admittedly strange and ironic enough.
But given where the code of conduct is located, it would be more like a
"Welcome" mat hidden in the shrubbery behind my house, now wouldn't it?
Which would be even more strange, though perhaps no more ironic.

Yet putting the code of conduct (say) in all caps in the Linux kernel's
home directory might not be sending all that positive a message, so
it makes no sense to move it from its current location.  We therefore
cannot really rely on the code of conduct to serve as the Linux kernel's
"Welcome" mat.  Nor should that be its purpose.

> And I guess this highlights the wisdom of your response to Josh:
>    Communication is inherently difficult.

Thank you, much though I wish I was wrong on this point.

> This is, in part, why I suggest that we shouldn't have a code of conduct
> at all.  Whatever we write, different people will understand it
> differently.  And history suggests that some of us will treat it like a
> legal document and try to be lawyers, but without all the training real
> lawyers have.
> 
> Instead of a code of conduct, we just need good conduct, and to
> encourage that conduct when we see it.
> This builds on our core competencies as a community:  our usual mode of
> working is to each work independently on our own areas, and to combine
> our skills intermittently as need and opportunity arises.  The "Linux
> kernel" emerges organically from the work of multiple developers, and
> likewise, the only meaningful statement of the conduct of the community is
> that conduct with emerges organically from the conduct of the members.

If the was a perfect world, we might well not need a code of conduct.
On the other hand, in a perfect world we also just might not need locks
(with or without the ironic "Welcome" mat), passwords, urgent security
patches, fences topped with concertina wire, weapons, and much more
besides.

So rather than randomly mutate the code of conduct further, let alone
remove it completely, let's instead leave it alone for a few years.
We then might have enough experience with it to make any needed
adjustments.

Of course, the optimal outcome would be zero experience with it at all
ever due to overwhelming best behavior on the part of all concerned,
but again, this world is sometimes less than perfect.

							Thanx, Paul
