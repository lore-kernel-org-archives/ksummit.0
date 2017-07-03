Return-Path: <SRS0=ZvpJ=6G=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 18FDC596
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jul 2017 16:30:30 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3AAFC10A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jul 2017 16:30:28 +0000 (UTC)
Date: Mon, 3 Jul 2017 12:30:25 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <20170703123025.7479702e@gandalf.local.home>
In-Reply-To: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: linux-api@vger.kernel.org, Shuah Khan <shuahkh@osg.samsung.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] & [TECH TOPIC] Improve
 regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, 2 Jul 2017 19:51:43 +0200
Thorsten Leemhuis <linux@leemhuis.info> wrote:

> Hi! Sorry, I know I'm late -- real life (travel, day job, ...) kept me
> away from spending time on Linux kernel regression work :-/
>=20
> Maybe I'm taking it a bit to far for the new kid in town, but I think I
> want to propose two sessions. One for the maintainer summit, that deals
> with a the most critical issues relevant to regression tracking. And one
> technical session to deal with all the other stuff. Obviously we can
> move below mentioned topics from one to the other or talk about them at
> both if we want.
>=20
> =3D [MAINTAINERS SUMMIT] Improve regression tracking =3D
>=20
>  * Follow up from last year: What to do about bugzilla.kernel.org?
> Reporters still get stranded there.
>  * How to get subsystems maintainer involved more in regression tracking
> to better make sure that reported regressions are tracked and not
> forgotten accidentally.

We should push harder for all reproducer tests to be put into
selftests. I try to do that myself (although I admit, I forget to do it
myself here and there. But I'm pushing myself to be better)

>  * Frustrations with regression tracking aka. how to establish
> regression tracking properly to make sure it will never go away again.

By adding reproducing tests to selftests, we can easily see what
regressions are still there.

>=20
> =3D [TECH TOPIC] Improve the kernels quality by getting more people
> involved in regression testing and reporting =3D

Again, this can be answered by placing more reproducers into selftests.

>=20
>  * A short report from the outcome of the maintainer summit discussion;
> also pick up and topics here that where not properly discussed on the
> maintainer summit or were postponed to this session.
>  * How to get distros more involved in regression tracking; especially
> those that have a technical aware user base or normally ship up2date
> kernel images (and thus have an greater interest in avoiding
> regressions). I'm mainly thinking about Arch Linux, Debian, Fedora, and
> openSUSE Tumbleweed here; having Ubuntu in the boat would be good, too!
> (might be wise to talk about this on the maintainers summit as well, if
> the right people are there)
>  * How to make it more easy to (ideally automatically!) track the
> current status and the progress of each regression? Are there any tools
> that could make regression tracking easier for all of us while not
> introducing much overhead for maintainers?

What is selftests?  (Jeopardy answer for all of the above ;-)

>=20
> =3D Details =3D
>=20
> Below you'll find few more words about some points mentioned above;
> there are a few other topics as well we could discuss if we want. But
> first, a few general words on regression tracking from my point of view:
>=20
>  * There are a lot of areas in regression tracking where things are far
> from good (read: in a bad state). That makes it easy to discuss current
> problems and their solutions for hours -- and at the same time forget
> that discussing itself doesn't get us much forward (the old bugzilla
> issue mentioned in this mail is a good example). We thus IMHO should
> focus on the most important issues and lay the groundwork to establish
> regression tracking properly again, then we move on to solve things that
> are harder to solve.
>=20
>  * Regression tracking currently is quite boring and exhausting (read:
> high burn-out risk), as it involves quite a lot of manual work finding
> regressions and keeping track of their progress (and at the end of the
> day it does not feel like you achieved much). Some of that work can not
> be automated. But quite a bit can and that would help a great deal to
> establish regression tracking properly (currently I'm the only one doing
> it and some development cycles I simply don't find spare time for it).
>=20
>    I currently don't see any existing solutions that fit well with our
> mail focused workflow and at the same time do not introduce much
> overhead for subsystem maintainers (which I assume is what everyone
> wants, as I fear solutions with much overhead won't fly at all). Ideas
> how to solve this tricky problem area are highly welcomed. It's
> something that can be discussed when the aforementioned points
> "establish regression tracking properly" and "make it more easy to
> manually or automatically track the current status of a regression" come =
up.
>=20
> =3D=3D What to do about bugzilla.kernel.org =3D
>=20
> Discussed last year already; see https://lwn.net/Articles/705245/ for
> details. Situation didn't change much since then: the bugzilla instance
> was updated, but people still get stranded there as most subsystems
> ignore it. That afaics frustrates people and makes them stop testing or
> reporting bugs.
>=20
> Discuss how to improve things. [my2cent] Maybe a short term solution
> like this could work: Serve a static page on bugzilla.kernel.org that
> tells people where regressions/bugs for certain subsystems can be
> reported, as it most of the time is some mailing list anyway. Such a
> page could get compiled from MAINTAINERS (there is the "B:" field now
> that points to bugzilla; if its not there point to a mailing lists; also
> explain get_maintainers.pl).
>=20
>   Leave our bugzilla reachable via bugzilla.kernel.org/frontpage (or
> something like that) for those few subsystems that use it; that's afaics
> ACPI and PM (including Cpufreq, Cpuidle, Hibernation, Suspend, ...) and
> maybe PCI (not sure) -- or should we tell them to move to
> bugzilla.freedesktop.org (or somewhere else) to get rid of our bugzilla
> in the long etrm and make Konstantins life easier? Anyway: Make sure
> bugs for other subsystems can't get filed in bugzilla.kernel.org anymore
> to make sure they get lost there. [/my2cent]
>=20
> =3D=3D How to get subsystems maintainer more involved in regression track=
ing
> to [=E2=80=A6] =3D=3D
>=20
> One reasons why I put this up is: It would help me a lot if people let
> regressions@leemhuis.info (side note: might be wise to make a
> mailing-list that replaces this address) get told about regressions --
> simply CCing it on reports or answers to regressions reports is enough;
> forwarding/bouncing mails there (even without additional text) is fine,
> too.
>=20
> The other reason I included it: This came up in last years discussion on
> this list and it seemed some people thought we can get the subsystems
> maintainers more involved; so I thought it might be wise to discuss it.
> Might also be a good idea to discuss here how to get distro kernel
> maintainer more involved if enough are around.
>=20
> =3D=3D How to establish regression tracking properly [=E2=80=A6] =3D=3D
>=20
> This is a pretty vague topic on purpose. People seem to agree that
> regression tracking is important, but for years nobody did it (it
> stopped a little while after Rafael had to move on) and the little bit
> that I can do in my rare spare time won't help much (and I have no idea
> how long I can continue to find time for it).
>=20
> =3D=3D Make it easier to track the progress of regression =3D=3D
>=20
> One of the main reasons that makes regression tracking hard currently:
> getting aware or regressions and tracking their progress is a lot of
> manual work. I plan one step that hopefully makes the job a little
> easier and at the same time might allow some automation in the long
> term: ask people to include a certain keyword in their regressions
> reports. Maybe something like "Linux-Regression" that doesn't get too
> much false positives when searching for it on lists and via Google
> (suggestions for a better tag welcome).
>=20
> In addition, I plan to hand out some form of ID for each regressions I
> track and ask people to include it -- especially when they post patches
> that fix said regression or move the discussion to a new place (like
> "Corrects: Linux-Regression-d2afd"; again: suggestions welcome! Maybe I
> should just use a URL where people find details?).
>=20
> That way I can notice more easy when a fix for a regression hits
> linux-next or master; I also get aware if a discussion moves from
> bugzilla to LKML or from one thread to another (fingers crossed).
> Obviously it depends on cooperation of those involved.
>=20
> If this works out we could write a script or something that watches
> mailing lists, bug trackers and git trees for the tag in question. That
> script could file a database and automatically do some of the tracking jo=
b.
>=20
> =3D=3D get distros more involved =3D=3D
>=20
> I assume at least Ben (Debian), Laura (Fedora), and Takashi (openSUSE)
> are around, so it might be a good idea to sit together and talk
> regression tracking in general and how we could get the distros kernel
> maintainers more involved. Even better would be to sit down before to
> maybe come up with some ideas/plans we could talk during this session.
>=20
> One topic could be: How to make it easier for users of popular distros
> to get involved in testing. The "Kernel of the day" (KOTD) from
> SUSE/openSUSE was mentioned recently on this list already, but I got the
> impression that the existence of this repo is not well known; guess it's
> the same for my own Kernel Vanilla Repositories for Fedora (those
> contain packages with a quite recent mainline version; see
> https://fedoraproject.org/wiki/Kernel_Vanilla_Repositories ) or the fact
> that Fedora rawhide ships a recent mainline snapshot all the time. But
> should distros also offer Linux-next somewhere? Or anything else? And
> should the distros send experienced users upstream when they found a
> regression? Or will subsystem maintainers send those users away because
> they assume those kernels are not vanilla?
>=20
>=20
> =3D=3D Topics or vague ideas I left out on purpose =3D=3D
>=20
> Here is a list of other things we could talk about, but I think better
> left for a later time:
>=20
>  * Kerneloops (http://oops.kernel.org/): It was discussed last year on
> this list. I have no idea what the current status is. Is someone
> watching & analysing it? And poking the right people when needed? (I
> doubt it)
>=20
>  * Regression tracking for stable kernels (many bugs only get noticed
> once a new mainline version got released; at that time it might still be
> easy to revert a certain patch in mainline and stable)
>=20
>  * statistics: I didn't spend time to create statistics, like Rafael did
> in the past. They'd be nice to have, but for now I think my time is
> better spend elsewhere.
>=20
>  * work towards growing the number of tester by making it easier for
> them (better documentation, easier configuration, bisection scripts, ...)
>=20
>  * maybe document a few some procedures for those that are not regular
> kernel developers (like the "When users report bugs on the Fedora
> tracker that look like actual upstream bugs, what's the best way to have
> those reported?" thing that Laura mentioned earlier this month in the
> mail "Bug reporting feedback loop"
>=20
>  * provide better services than only a plain text list of regression on
> a mailing list?
>=20
>  * better documentation? for example explain the difference between bugs
> and regressions somewhere to make people understand why their bugs might
> get ignored, but as the same time know that we handle regressions more
> seriously.
>=20
>  * Should the regression tracker nag subsystem maintainers (and
> reporters) more often if they are inactive? How do people for example
> feel about (Semi-)Automatic nagging mails for regressions where there is
> no progress?
>=20
>  * Is the data and the format of the current reports show useful at all?
> If not: How to improve it?
>=20
>  * regression tracking is a fair amount of work, and it's frustrating,
> and people burn out. How to avoid that? Can we maybe get regression
> tracking on solid ground by somehow building a healthy community around
> it (containing kernel developers, Distro maintainers and people that are
> willing to help in their spare time) that work on regressions
> testing/tracking and other QA stuff?
>=20
>  * how to make the Linux kernel development so good that the mainstream
> distros stop their kernel forks and do what they do with Firefox: Ship
> the latest stable version (users get a new version with new features
> every few weeks) or a longterm branch (makes a big version jump about
> once a year; see Firefox ESR).

This wont ever happen (famous last words). Distros want "stable
kernels" with new features. That's not what stable is about.

>=20
> Ugh, pretty long mail. Sorry about that. Maybe I shouldn't have looked
> so closely into LWN.net articles about regression tracking and older
> discussions about it.

Anyway, I know that selftests are not the answer for everything, but
anything that has a way to reproduce a bug should be added to it. Sure,
it may depend on various hardware and/or file systems and different
configs, but if we have a central location to place all bug reproducing
tests (which we do have), then we should utilize it.

When it's in the kernel tree, it will be used much more often.

-- Steve
