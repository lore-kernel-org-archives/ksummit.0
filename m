Return-Path: <teobaluta@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CB42B7B9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 18:14:34 +0000 (UTC)
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A4A772026B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 18:14:32 +0000 (UTC)
Received: by mail-ee0-f49.google.com with SMTP id e53so666282eek.36
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 11:14:31 -0700 (PDT)
References: <20140512155320.GW12708@titan.lakedaemon.net>
	<20140512164921.GB3509@linux.com> <53710053.4040100@zytor.com>
	<CACV2jQDDu91ug=xeJ235W4jMunvfAY1rSXLjFGqw0hoTS4gmxg@mail.gmail.com>
	<20140513112525.GB10733@kroah.com>
	<CABe+QzALCqDLEJn9LawN2+SxEwzoNN5mYxY-Ko0z37oJowzYMA@mail.gmail.com>
	<20140513150520.GA15857@kroah.com>
	<CABe+QzDo9PudGCPOQnEabnwL=M8L261x_GjB2xrkCgLhJi+ewQ@mail.gmail.com>
	<CA+5PVA5k=mVtR+gb+hfpc_05J_yP-TruX2DXFZdQkY+Nzq4p+w@mail.gmail.com>
	<20140513160743.GA11391@thunk.org>
	<20140513174350.GB3538@linux.com>
Mime-Version: 1.0 (1.0)
In-Reply-To: <20140513174350.GB3538@linux.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Message-Id: <7FE219EA-6E0E-4623-B7C0-3FDFD4EEFA92@gmail.com>
From: Teodora Baluta <teobaluta@gmail.com>
Date: Tue, 13 May 2014 21:14:21 +0300
To: Levente Kurusa <levex@linux.com>
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Josh Boyer <jwboyer@fedoraproject.org>,
	Dirk Hohndel <hohndel@infradead.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Sarah A Sharp <sarah@minilop.net>, Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


On May 13, 2014, at 20:43, Levente Kurusa <levex@linux.com> wrote:

Hi,

> On Tue, May 13, 2014 at 12:07:43PM -0400, Theodore Ts'o wrote:
> I'll note this discussion has started mutating to a more general "how
> do we get more useful bug reports in front of developers", which I
> think is a good thing.
>=20
> However, I'm still not sure how useful it would be to have a tech
> topic (or a core topic) dedicated to the matter, because we've had
> discussions about and at the end of the day, what's probably really
> necessary is to have someone, or a small team, dedicated all or most
> of their time to:
>=20
> a) improving kerneloops.org
> b) finding interesting patterns in the bulk reported data, and then
> forwarding that on to developers
> c) finding ways of automating (b)

* One possible way of improving kerneloops is that once an oops happens
 more than X times then it would be automatically sent to the
 maintainer.

* Adding some more stats specifically for the RCs, so we can get more
 information during the RC phase of a release.
 We have essentially the same for Stable and Longterm kernels.

(By the way, am I the only receiving frequent 503 Service Unavailable
errors from the oops.kernel.org site?)

I also have the same error code. So another possible subject is adding the i=
nfrastructure/web service for sending oops messages. As I understood for Kon=
stantin, the current API is a bit tricky to use so maybe adding a simple RES=
T API could simplify the pushing process.

Maybe one of the problems is not having where to send these bugs easily with=
 an automated process.=20

I am doing an app now so how can I make it worth the time? Should I just for=
get about bugzilla and just implement a server that collects these reports?

If it helps I can just post the link to the repository to the Android app to=
 get an idea how it looks (still in development).
>=20
> QR encoded oops might be a means towards that end, but there might be
> other things that could be done as well.
>=20
> If someone were to *do* all of this work, then reporting on it and
> then asking for suggestions about how this service could be improved,
> might make a great tech topic.
>=20
> But in the absence of that, can folks suggest ways that this doesn't
> turn into a "I know, let's put a bell on the cat!" sort of discussion
> that doesn't lead to anything useful?


Here are a few topics I think are worth discussing at the summit with
regards to this topic:

* How to disseminate bug reports?
  Have comaintainers looking at bugzilla and oops.kernel.org?
 For some time now, I have been trying to do some cleanup, i.e.
 fix some bugs there, but since I lack the capabilities to close bugs
 it still remains to others. I would, though, be very pleased to
 clean up bugzilla, if I got the capabilities.

* QR code in general.
  Is it actually worth it? I mean as it currently stands the QR code
 takes quite a bit of the screen and takes place over some (possibly
 valuable) information. This is because it is currently in the
 topleft corner. There was a suggestion to move it to the center, but
 I think that would as well take some information away from someone
 who wants to find out the information themselves.

  If we accept the QR encoding stuff to the kernel, then that will
 most likely mean that kerneloops will receive more (probably
 valuable) information. I think that this is a good thing, since as
 Greg mentioned we will better now which subsystems struggle. Maybe
 adding a bugzilla entry as well seems reasonable and maybe if we do
 clean up bugzilla, maintainers will eventually look at it and the
 bugzilla thing will become viable.

  Automatically adding a bugzilla might make sense as well once a
 certain oops hits the 'X-times-happenned' level. That way
 maintainers wouldn't be overflown with new bugs by mail.

* Should maintainers be sent digests of the oopses from
 oops.kernel.org and the bugs from bugzilla?
  Okay, I know that most maintainers get mails from the bugzilla each
 time a new bug is filed, but I guess a digest would be better. It
 wouldn't overflow a maintainer's mailbox nor it would be
 automatically added to the maintainer's spam folder.
 A feature like this already exists in bugzilla, in the 'Reports'
 menu, but it does not send any mails, so I guess that could be
 automatized.

Another suggestion is to add the possibility of analyzing bugs on the server=
 side: like it was said previously on this thread, keeping an eye on the fee=
ds that repeat more than X times. Or see which subsystem have most issues.=20=


After all, if the commitee decides that this topic is viable, I would
be happy to participate.

I would be happy to continue working on this and leading the discussion if t=
here is enough interest in discussing use of QR code in this process as we *=
do* have the prototype and the people (Levente and me) if there is support (=
infrastructure, feedback, etc. ) in adding this upstream.=20

Thanks,
Teodora=
