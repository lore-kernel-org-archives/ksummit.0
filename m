Return-Path: <laforge@gnumonks.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EC6B771
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 09:17:38 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [213.95.27.120])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 564CB15A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 09:17:37 +0000 (UTC)
Date: Mon, 29 Aug 2016 11:01:38 +0200
From: Harald Welte <laforge@gnumonks.org>
To: "Bradley M. Kuhn" <bkuhn@ebb.org>
Message-ID: <20160829090138.p4lxsewuxjnvzer2@nataraja>
References: <CA+55aFyvFJ0gz++ApyO7gFGd0wz4ysjs=6wNZi-91VUJuVK2_w@mail.gmail.com>
	<87inunxf14.fsf@ebb.org> <20160827162655.GB27132@kroah.com>
	<87bn0dnc6f.fsf@ebb.org>
	<1472348609.2440.37.camel@HansenPartnership.com>
	<20160828042454.GA8742@jeremy-acer>
	<20160828125542.7oejzcbpeozkrq3k@thunk.org>
	<87y43gx3jq.fsf@ebb.org>
	<20160828195805.z4tyu3bcabpfyqpw@thunk.org>
	<20160828225454.GA19927@ebb.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160828225454.GA19927@ebb.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Dear Linus, Ted, Greg and others,

sorry for being late to the party.

Given that I've been somebody doing quite a bit of GPL enforcement on
the Linux kernel in the 2003-2010 time frame with my gpl-violations.org
initiative, I think I may share some perspective.

For those not aware, gpl-violations.org was created out of some
netfilter/iptables project enforcement after the first Linux based WiFi
routers came on the market in about 2003.  It used my own copyright on
netfilter/iptables, as well as some copyright from Rusty Russel, David
Woodhouse and Werner Almesberger, who helped me with that effort.

As I've been mostly absent from netfilter/iptables and moved my focus to
a topic that I feel is in more desparate need of free software
development (FOSS cellular infrastructure, now at osmocom.org), the
gpl-violations.org efforts had become dormant meanwhile.

During the active time of the project, we had some ~ 300 GPL violation
cases, out of which the large majority could be resolved out of court.
IIRC, less than 10 had to go to court, because the respective infringing
entity has not been willing to get into compliance.  All enforcement in
court was successful, i.e. in the end, the ruling was in favor of
upholding and enforcing the GPL against those infringers.  All of the
cases were about cease + desist, and none about damages.

We always had way more (confirmed) reports of GPL violations than we
ever could handle, and despite a general trend to more compliance in the
industry today than 10 years ago, Linux is entering new markets / device
types / uses cases, and as a result of that I doubt that we've reached
"peak violation" yet.  So *lots* of work remains to be done.

I've also been a bit sad that many developers of copyleft-licensed
software told me they think it's great that somebody is doing
enforcement - but they didn't want to get active themselves, due to the
unpleasant paperwork involved, which only distracts them from actual
development work.

So there clearly was space for an entity that would enable the
developers (who hold their own copyright) to do something about license
enforcement, but without having to take care of all the nitty-gritty
legal details themselves.  And I'm quite happy that the SFC has done
something to fill that void.

* I agree with David Woodhouse and others earlier in the thread: Using
  the GPL and not doing enforcement is useless, and you should have gone
  for BSD/MIT instead, if that's the goal.

* In all I know, see and hear about the activities of the Software
  Freedom Conservancy, they always explicitly act upon what the
  developers ask them to do.  What I know about their "Coalition
  Membership" agreement is that it exactly reflects that notion, i.e.
  the SFC cannot act on its own, but only on behalf of its coalition
  members, who are individual Linux kernel developers who hold their
  copyright.

* It might differ from jurisdiction to jurisdiction, but in general if
  you hold copyright on one part of a collaborative project like the
  Linux kernel, you are entitled to enforce at least a cease + desist
  claim on your own behalf and do not need the support of all the other
  copyright holders or even the majority of the copyright holders.  I
  consider this a strength of the "distributed copyright" approach,
  where you don't have a single point of failure (copyright holder), or
  an ologopoly of large corporations who have control over who can
  enforce or cannot enforce.  Sure, this has some risks as we have seen
  with the alleged actions by Patrick McHardy.  But then, doesn't every
  freedom come with some risk?

On Sat Aug 27 00:19:55 UTC 2016, Linus Torvalds wrote:

> I'd not be interested in ever having a lawsuit to "clarify" such an
> issue. I don't think it would really clarify anything anyway (it will
> just set one boundary in one case for one specific thing).

You might not have an interest in that lawsuit, but actually a lot of
corporate users (and lawyers) might actually like to have more clarity
here.  Yes, every case will be very specific about the exact type of
integration between two parts of the code, within the given
jurisdiction, etc. - but if you have a set of these, they can give
guidance as to what is acceptable under copyright law and it's notion of
derived (and other combined/collective) works, and what not.

That's how legal grey areas are generally treated.  Some rules exist,
some people do something that other people thinks goes beyond the
boundary of those rules, a legal conflict ensues and one precedent after
another, courts bring more fine-grained clarity to narrow down the grey
area into more black and white, and less grey.

Now whether it would be good for Linux (or FOSS in general), is probably
a philosophical question.  I'm just saying particularly corporate users
would love to have more clear-cut rules by which they could determine
compliance in derived works.

Also, of course it is not clear whether "we" (Linux developers) would
like the exact outcome of suhc cases.

In the end it boils down to: Do we want to linger more in grey areas and
have people with varying view points and agendas making all kinds of
statements and assumptions, or do we defer to the "arbitration" of case
law to do it for us?

I'm personally not so sure that keeping things lingering in the grey is
always the best strategy, also from a commercial/economical point of view.

But then, I still think that cases about derived works like the
VMware vs. Christph Hellwig are important.  Otherwise, once again, what
is the point of having a copyleft/GPL licensed OS kernel, if vendors of
proprietary OSs can just take entire sub-systems (or parts of that), and
hack that up to run inside their proprietary kernels?  If that's the
intent, again, BSD/MIT would have been the right license.

On Sat Aug 27 16:26:55 UTC 2016, Greg-KH wrote:

> Seriously, this is NOT how to to things.  Over the years yes, my
> position has changed from being pissed when I see devices ship without
> code for their changes, to realizing that I actually can do much more
> than any lawyer can.  I can take those developers and make them part
> of our own project, ensuring we can survive.

I don't think it is an exclusive-or.  In many cases, legal action
(either out of court or in court) has been a trigger to companines
putting attention on FOSS / GPL license compliance in the first place,
and massively helped even those forces inside the company that wanted to
release the code.

You talk in legal language to the legal departments.  They bring it up
to the senior management for a risk assessment.  And the result of that
assessment will determine whether or not they feel inclined to do
anything about it (both for the current case and for future strategy),
as the latter will cost money/resources.  So in the absence or mostly
absence of legal enforcement, the result of the risk analysis will be
"it won't cost us anything to continue to not care".

At the same time you can try to get in touch with the engineers in terms
of working more cooperatively with the community.  But then, they don't
make those decisions and have to defert that up to their management.  If
the management then in the ideal case at some point realizes that
a) they don't want to keep stuff proprietary for legal risk reasons, and
b) they might have other benefits from not doing 'gpl code drops' but
working with upstream,
you have won.

However, the legal enforcement is in my experience often a neccessary
first step to make them release source code in the first place.  Only
then you can have a discussion about the form (code drop vs. git repos
vs. community interaction).

On Sun Aug 28 08:04:59 UTC 2016, Greg-KH wrote:

> Let's please stick to what has gotten us this far, and not change to
> being rude and disrespectful to our users and developers by getting
> lawyers involved.

I am not sure if we live on the same planet ;)

Using a lawsuit as the last resort option to get incompliant companies
in line is not rude at all.  It is at the end of a process, where the
infringing entity is not willing to be compliant (translates to: release
the complete+corresponding source code) without such a lawsuit.

So if you want to talk about 'rude' in this context, you could also say
the other way around:  The infringing entity is rude by ignoring our
community and how it works, and by furthermore ignoring the essential
requirement to comply with the license term (like any software or
copyrighted material).

I can even confirm about several cases where the "Linux friendly" people
(including lawyers + technical) at formerly-infringing companies have
thanked me privately again and again for giving their cause inside the
company a stronger backing, and for being the external trigger that
helps to bring them around internally.

As described above, I think talking to the legal departments gives you a
very important vector into those companies.

On Sun Aug 28 08:04:59 UTC 2016, Greg-KH wrote:

> That way we know will cause us to fail.

I can tell you about one of te largest electronics companies on this
planet, who have set up internal teams to study and review license
compliance in more than 1000 products _after_ their market introduction,
and who have significnat departments inside the organizations to ensure
license compliance from thereon.  That all was the result of legal
enforcement (all out of court, but involving lawyers) being done at
gpl-violations.org.  And btw, at some point later, they also started
contributing to FOSS projects more openly.

The point here is: Legal threats (or sometimes lawsuits) are wake-up
calls to companies that _want_ to do the right thing, but who simply
haven't been aware of it, or who haven't given it theright
attention/priority before.  They are *not* upset about enforcement being
brought against them.

Of course this largely depens on corporate culture of the respective
formerly-infringing entity.  But I really have to dispute your blanket
statement on "getting lawyers involved will cause us to fail".

On Sun Aug 28 08:04:59 UTC 2016, Greg-KH wrote:

> Do you know who the next "Intel" will be as a huge corporate sponsor
> of Linux developers and intrinsic to our future?  I sure don't, but I
> do know that by treating offenders with lawyers, you ensure that they
> never will be that type of supporter.

I don't want to call out the name of my above example, but they actually
fit your description pretty well and have become a large corporate
sponsor of Linux.  I'm happy to share the example privately, if you'd
like.

Legal disputes are not the end of the world, or a nuclear option, or a
drone bomb.  They are part of a civilized discoures between entities
that at least at that point have a different opinion, or had ben
ignorant.  And a legal dispute escalating to court (even in case the
infringing defendant agrees they were wrong) may have all kinds of
reasons unreated to the subject matter.

On Sun Aug 28 08:04:59 UTC 2016, Greg-KH wrote:

> What is the case is that so far, I have seen that it is _ALWAYS_ better
> to work with the offending company than it is to go in with lawyers.  Or
> representatives.

You can get very good results by talking to legal departments of
companies, I can absolutely vouch for that.  In fact, at
gpl-violations.org I had given up to try to contact the companies in any
other way.  You simply never get to the right person in charge, and are
mostly wasting your time. However, if you go through the legal
department, you get the attention of the decision makers pretty soon.
In most cases, it is a very productive dialogue, and not a battle or a
fight.  I really think you're overly paranoid when it comes to members
of the legal profession.

In any case, getting slightly more on topic regarding ksummit: If anyone
was interested to hear more about my take on Linux GPL enforcement, I'd
be more than happy to share it. Be it at the kernel summit or other
event.  Be it as a bof, talk, panel, whatever.  I would like to hope
that I'm perceived as less "partisan" here, given that
a) I am an actual (albeit past) Linux kernel developer, and
b) was never aligned with the SFC or the FSF, nor any large corporation
c) have lots of hands-on experience on the subject matter.

It's an offer.  I don't seek to push myself onto centerstage with this,
but let me know if anyone thought it would be useful.

Regards,
	Harald
-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
