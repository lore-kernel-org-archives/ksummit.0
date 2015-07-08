Return-Path: <jwboyer@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B788D9FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 11:43:26 +0000 (UTC)
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0D13617D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 11:43:26 +0000 (UTC)
Received: by igcsj18 with SMTP id sj18so284378812igc.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 08 Jul 2015 04:43:25 -0700 (PDT)
MIME-Version: 1.0
Sender: jwboyer@gmail.com
In-Reply-To: <20150708021128.GB3102@kroah.com>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<CA+5PVA4YON79=wrSTfQ8TJrQNOuLShvaVA1_+BDcTxrmVe_hcQ@mail.gmail.com>
	<20150708021128.GB3102@kroah.com>
Date: Wed, 8 Jul 2015 07:43:25 -0400
Message-ID: <CA+5PVA7MfHrrRz1+hZNsm27e+QnNL2A53ODWZ1CUZQUkwiouoA@mail.gmail.com>
From: Josh Boyer <jwboyer@fedoraproject.org>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset=UTF-8
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 7, 2015 at 10:11 PM, Greg KH <greg@kroah.com> wrote:
> On Tue, Jul 07, 2015 at 09:14:00PM -0400, Josh Boyer wrote:
>> You could make a Reviewed-by tag required before a patch can be
>> included in a submaintainer's tree.  At least some maintainers seem to
>> (arbitrarily?) require this at times.  However, if you do that then it
>> would likely slow down development quite a bit.
>
> It doesn't seem to have slowed down the rate of change for the
> subsystems that currently require this, so why do you think it would?

Probably because such subsystems have always required it?  If it were
a new imposition on a subsystem, I suspect it would certainly impact
things, at least at first.

>> Then Greg might cry because he wouldn't get to show pretty graphs at
>> conferences about how fast the rate of change is in the kernel.
>
> I don't have any graphs showing rate of change.  I have a few "raw"
> numbers that I talk about, but that's just to scare people.  Even if we
> went back to 2.5 development speeds (2.5 changes per hour), that's
> enough to scare people for my needs :)

Heh.

>> (I would love to see a graph comparing rate of change to rate of
>> regressions/bugs, but then people would have to know the latter.)
>
> Want to start tracking that?  We've needed someone to do that work for
> quite some time now, the fact that we've gotten by without it either
> means that no one sees the value in funding such a position and/or it's
> not really something that anyone cares about...

I think you're wrong on both counts there, sorry.

In order to track this well, you need data from users.  And therein
lies one of the problems.  The majority of users don't use kernel.org
kernels.  They use distro kernels.  The distros have data and tools to
help track bugs and regressions, but upstream is somewhat loathe to
look at anything that starts with b and ends with zilla.  Why?
Because the data coming from users is often utterly junk.  You get a
kernel splat and a "I don't know why this happened."  And frankly, I
don't expect them to know why it happened either.  Particularly when
you have subsystems that are using WARN_ON as a fixme comment and
sprinkling them all over the damn place.

So you have users that don't/are afraid to talk to upstream, distro
maintainers trying to play middle men and being overwhelmed, and
upstream who is very responsive when contacted directly but because
they use self-built kernels the request is usually "bisect".  End
users can't bisect without hand-holding, so the distro maintainers are
left doing that too.  The learning curve for creating a good bug
report is pretty steep, and the ability to help debug it is even
steeper.

Now that isn't to say that data doesn't exist.  As I alluded to, the
various bugzillas are full of regressions and bugs.  But there is no
aggregation of that data across instances, and everything is terrible.
I literally spent a year doing very little other than bug triage and
random fixing.  Fedora's bug count for the kernel went from over 1000
bugs to just under 500.  That sounds great, but it really isn't.  The
net result wasn't 500 bugfixes.  I don't have 500 commits in the
kernel, nor 500 Reviewed-by or Tested-by or Reported-by tags.  It was
literally cleanup of bugzilla, not kernel issues.  (To be sure, some
issues were fixes for the users, but those were rare.)  And this was
with Fedora, which sticks very very closely to the latest upstream
release.

Ignoring the bug reporting pipeline problem for a minute, there is
other data as well.  The new Fixes: tag could easily be scripted to
count as a bug/regression.  Except it is fairly new, and isn't as
widely used as one would like yet.  That is pretty trivial to count
though and I don't think it would paint an accurate picture at all.

I intended this to be short, but it wasn't.  Hopefully it didn't come
off as a big rant.  I simply think the problem is a lot more
complicated that "no one sees value or no one cares."  It is really
signal to noise, a huge backlog, and figuring out how to get the end
users working with the developers without needed a distro translator.
Or getting the developers working the other way, but when has that
ever happened in the software industry?

josh
