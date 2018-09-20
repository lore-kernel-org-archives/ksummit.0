Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 24D6C11E1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 09:15:47 +0000 (UTC)
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6F4D7174
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 09:15:45 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org,
	Steven Rostedt <rostedt@goodmis.org>
Date: Thu, 20 Sep 2018 11:12:56 +0200
Message-ID: <2926975.6qOp4mHNDQ@aspire.rjw.lan>
In-Reply-To: <20180918094332.2c0d066a@gandalf.local.home>
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	<20180918094332.2c0d066a@gandalf.local.home>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC FOR KS] CoC and Linus
	position (perhaps undocumented/closed/limited/invite session)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tuesday, September 18, 2018 3:43:32 PM CEST Steven Rostedt wrote:
> On Tue, 18 Sep 2018 15:55:23 +1000
> Dave Airlie <airlied@gmail.com> wrote:
> 
> > I think there might be place for a report from the people who did sign
> > off the CoC about the thoughts/process involved in updating it (and/or
> > urgency) to the rest of the Maintainer group.
> > 
> > Now I understand that having a public talk about such a thing will
> > likely descend into farce, there may be scope for something of a
> > Chatham House Rule style meeting, or just a non-recorded, non-public
> > session like we've done for sensitive subjects are previous kernel
> > summits.
> 
> I believe this topic merits a discussion at Maintainer's Summit. It can
> probably be much more productive face to face with several maintainers
> in one room than what would result in a mailing list (both public and
> private) discussion.
> 
> I'm willing to lead this if nobody else wants to do it.
> 
>   (I don't know why I do this to myself)
> 
> 
> > 
> > It might just be a readout from a similar meeting at Edinburgh summit
> > (maybe someone else can propose that), or maybe some sort of Q&A
> > session. Maybe Linus could record a piece to camera for the
> > maintainers that can't make Edinburgh, but would still like to
> > understand where everything currently sits. Said piece would of course
> > be burned afterwards.
> 
> I would like to get an honest opinion from everyone involved, and
> remove any of the ambiguities that people still have.
> 
> > 
> > After the past 2-3 days I get the feeling there are maintainers unsure
> > about how this affects them and I think assuaging those fears might be
> > a good thing.
> 
> Agreed.
> 
> > 
> > I'm also equally happy nailing the lid back on the can of worms and
> > never discussing it again.
> 
> No no, the can is now open and you have released the worms ;-)

Well, let's just pick one for that matter.

Can anyone explain the exact meaning of the "Our Responsibilities" section of
the new CoC to me, please?

Like what *exactly* am I expected to do, as a subsystem maintainer, when I spot
"unacceptable behavior" on a mailing list or elsewhere?  What would be generally
regarded as a "fair corrective action", in particular?

Also, the second paragraph in there openly suggests that maintainers are now
expected to reject contributions from the people who behave inappropriately
in their view.  Does this mean that I'm expected to reject correct code changes
(maybe including bug fixes and maybe even security-critical ones) from a person
whose behaviors "deem inappropriate, threatening, offensive, or harmful" in
my view?

Cheers,
Rafael
