Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 178759D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 23:04:17 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 533B11CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 23:04:16 +0000 (UTC)
Date: Sat, 27 Aug 2016 01:04:13 +0200
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20160826230413.GJ3296@wotan.suse.de>
References: <CA+55aFxZTeJoPqRCHX+o_eEJ4RGDC_rOk6ZuL1Vz8Bk+7LfkfQ@mail.gmail.com>
	<1472225332.2751.56.camel@redhat.com>
	<CA+55aFxLB+1TtSPR9C5HG1+boZcGrub6VMATCa_Og9Jg51ttZw@mail.gmail.com>
	<1472230114.2751.67.camel@redhat.com>
	<CA+55aFxedcKe7q1SsVK48zkrzmUHwb8p3g8oKAHR4nUsbsobxA@mail.gmail.com>
	<CAPeXnHswT0dSvdzvc1p7yr_cewXrX1mHi0dQE=p1E4sFkjn=HQ@mail.gmail.com>
	<CA+55aFyOSV0cRGEHWjsKMxsxjs6Kp6oghpE+-ueVFi7irnmSCA@mail.gmail.com>
	<CAPeXnHvKF2sPoiBiDCMEiguR1QScn5wNpQ7deaz=MDxofReNOw@mail.gmail.com>
	<1472241199.5189.86.camel@HansenPartnership.com>
	<20160826214136.e6oeapzxzwzichdb@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160826214136.e6oeapzxzwzichdb@thunk.org>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
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

On Fri, Aug 26, 2016 at 05:41:36PM -0400, Theodore Ts'o wrote:
> On Fri, Aug 26, 2016 at 03:53:19PM -0400, James Bottomley wrote:
> > 
> > I think the disagreement is over *when* you give up and go for the
> > final resort.  And who you trust to take that decision.
> >
> 
> At the end of the day this is really a governance question.  There are
> a huge number of stakeholders involved.  It includes the kernel
> developers who do the work; and those who own the copyright; and those
> who pay many of our salaries; and those who might pay our salaries in
> the future if we can convince them to be good citizens; and so on.
> Not all of them will be represented at the Kernel Summit.
> 
> It will include those entities who are GPL maximalists and who believe
> that kernel modules are always infected by the GPLv2, and those who
> take a looser interpretation of that particular issue.  And that's a
> political question and a legal interpretation question.

<-- snip -->

> These sorts of legal / political questions are things for which I
> believe the Kernel Summit isn't well equipped to handle.  In
> particular, if the SFC has a pre-existing agenda --- that is, if they
> have clients and have lawyers who who believe very strongly that the
> next step is to "bring the question to a lot of Courts"[1] --- and
> they want a forum to try to convince kernel developers to support them
> in trying to force the courts around the world to give us an answer to
> legal questions around the GPL --- that's inherently a political
> question, and I don't think it's appropriate give them a soapbox to
> try to let them advance that agenda at the Kernel Summit.

Its a great point, however, that does mean SFC and developers part of the
kernel developer SFC alliance cannot get feedback from other contributors when
last-resort measures really have been reached. That seems to a pretty
neutral topic to consider.

If not, and I *personally* understand if its not possible to discuss this at KS,
at the very least this thread seems to clarify that many of us seem to be on
the same page than previously thought, legal action should be last resort. The
exception to everyone being on the same page seems of course to be the lack of
trust towards a few folks at SFC, or maybe just one. If that is a concern of
yours, you care about Linux and amicable compliance over Linux, and if you can
legally join SFC, you can vocalize your opinion on our lists when we review
matters -- you can help shape the opinion of the SFC kernel developer alliance.
Consensus is what we strive for.

> I've already gotten more than one request from representatives from
> other non-developer stakeholders requesting that they also be able to
> attend.  And in fairness, if we were to give the SFC a soapbox, then
> there will be any number of lawyers who would want to attend to make
> sure that the interests of their clients would also be protected ---
> and under what standards of fairness would we give lawyers with a
> specific agenda that they want to push access, but deny access for
> other lawyers to attend?  Let's just not go there.

I'd like to give a little wake up call then to those developers who *do care*
about the situation but feel hopeless. You should not feel hopeless, and you
should be able to echo your opinions and care. If you cannot care about how we
should do compliance on the project you contribute to, a right has been taken
away from you. You may or may not care about that -- and that's also one reason
why I personally think some of this is not appropriate to KS -- I suspect a
good portion of developers simply don't give a shit, and that's fine! If you'd
like to care though and want that right, consider an employer that gives you
that right.  There are a few. As I see it, its to the interest of the companies
and our community that that kernel developers that do care can express review /
consent over matters. Its the type of thing that will help avoid these sorts of
shitstorms.

> The Linux Foundation has run Legal Summits before, and has invited
> kernel developers to give input to the legal beagles at those Legal
> Summits.  But we're talking about the Kernel Summit here, and not a LF
> Legal Summit.

Its important these summits take into consideration to all sides, equally.

  Luis
