Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 329FF3C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 21:35:45 +0000 (UTC)
Date: Sun, 11 May 2014 17:35:39 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <20140511213539.GB5480@thunk.org>
References: <20140511053037.GQ12708@titan.lakedaemon.net>
	<536FBA0E.5090301@gmail.com> <20140511190752.GC2527@linux.com>
	<20140511192630.GA14115@kroah.com>
	<20140511195011.GD2527@linux.com> <536FDE91.3050708@xs4all.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <536FDE91.3050708@xs4all.nl>
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] hobbyist recruiting
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, May 11, 2014 at 10:33:21PM +0200, Hans Verkuil wrote:
> It certainly wouldn't hurt, but I'm not sure if this will really solve
> much. In general all you have to do is find the subsystem mailinglist
> (or email of the subsystem maintainer) you are interested in and post
> an email offering to help. Generally there are always jobs available
> that need doing.
> 
> My experience though is that there is a big gap between offering to do
> some work and actually doing that, and at least as large a gap from
> going from posting a single patch to becoming a regular contributor.

Perhaps something that's worth considering is the standard advice
given to people considering mentoring GSOC --- which is that you need
to spend at least 6-8 hours on your mentoring duties --- and after
doing that, about 25% of your mentees will end up hanging around
enough to contribute more to the project than the time invested in
said mentee; another 25% or so would more or less break even in terms
of time ROI, and then other 50% will end up being a net loss in terms
of time invested[1].  And that's for a student who is getting paid to
work full time for a few months.

[1] blogs.gnome.org/bolsh/2011/05/31/effective-mentoring-programs/

What this implies is that people who approach mentoring should do so
with some other goal than trying to get sh*t done.  A montor might be
trying to encourage more women to participate in open source, for
example.  And just as stock options in startup, if it pays off in
other ways, that's pure gravy --- but it's not anything should count
upon.

The same is true in many work environments, by the way.  In general, a
new employee needs at least 3 months, sometimes more, learning how to
use the build and debugging environent, before they can really be
counted upon to contribute in significant ways.  And that's for an
employee who is working full time!

The challenge with a hobbyist is from the perspective of the
maintainer, is that there is absolutely no guarantee that any
particular hobbyist is going to stick around.  And unlike a summer
intern or a new hire, the hobbist is in general not going to be
working full time.

As a result, it simply doesn't make any sense to expect most
maintainers to spend as much time as a intern mentor; since the
expected returns for a hobbyist showing up asking for help is most
likely going to be much less than for an summer intern.

> I guess my point is that I wonder what the real problem is: are we driving
> away newbies because of some bad practices on our side, or is it just
> simply hard to find qualified and motivated developers?

I'd say that it is extremely hard to find someone who is self-starting
enough who is able get started hacking on a subsystem or any open
source project on a part time basis, with minimal assistance from
maintainers who are, after all, trying to make sure they can scale
properly.

So some of this may be a matter of setting expectations.  I started
out as a hobbyist.  But I was spending at least 20+ hours/week of my
free time learning Linux on my free time --- 12 hours or so on the
weekends, plus 2-3 hours every evening or in the early mornings.  I
got essentially zero "support" from the project (which at the time,
was just Linus and a few other poeple like myself).  Linus did nothing
special to support me as a hobbyist, other than accepting patches if
they were good ones.  After all, he was a hobbyist himself at the time!  :-)

The one difference from the way things were in 1991 is that kernel has
gotten much more complicated, so it is true that it's a lot harder for
someone to get started from ground zero than I had.  (Although in my
case, it's true that also had several years of BSD 4.3 development
experience as a paid student systems programmer, had contributed
patches to perl and tcsh, and was the tech lead for Kerberos --- so as
far as an open source hobbyist was concerned, I was admittedly in a
fairly privileged position, even before I started working on Linux.)

However, the dynamic in terms of time and the return on investment
hasn't changed.  From a purely self-interested perspective, if you
have the choice of investing time bringing someone who has been
assigned to work full-time on your subsystem, perhaps at your company,
or perhaps at some other company, or taking that same time, and
investing it in a hobbyist --- what choice makes sense from a
rational, economically self-interested point of view?

							- Ted
