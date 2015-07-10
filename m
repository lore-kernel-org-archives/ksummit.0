Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 82A94B88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 00:29:04 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 430ADA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 00:29:03 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 10 Jul 2015 02:55:32 +0200
Message-ID: <2859525.zQ8ln2Qgy6@vostro.rjw.lan>
In-Reply-To: <20150709233854.GE111846@vmdeb7>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1436481109.3324.219.camel@infradead.org>
	<20150709233854.GE111846@vmdeb7>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Cc: Jason Cooper <jason@lakedaemon.net>
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

On Thursday, July 09, 2015 04:38:54 PM Darren Hart wrote:
> On Thu, Jul 09, 2015 at 11:31:49PM +0100, David Woodhouse wrote:
> > On Thu, 2015-07-09 at 12:37 -0700, Darren Hart wrote:
> > > I spend a highly disproportionate amount of my time, relative to =
measurable
> > > quality impact to the kernel, going over the nuances of submittin=
g patches.
> > >=20
> > > 1) Must have a complete commit message
> > > 2) DCO goes above the ---
> > > 3) Include a patch changelog, do so below ---
> > > 4) Cc maintainers :-)
> > > 5) Checkpatch... checkpatch... checkpatch...
> > > 6) Compiler warnings
> > > 7) CodingStyle :-)
> > > 8) Use ascii or utf8 character encodings
> > >=20
> > > All of these are distractions from reviewing the code. I'm often =
on=20
> > > version 3 of a series before I'm actually reviewing content.
> >=20
> > I don't think it's entirely appropriate to call all of those
> > 'distractions'.
> >=20
> > The "content" in question is a proposed change to the code base. Su=
ch a
> > change requires a coherent commit message which will make sense whe=
n we
> > look back at this commit in the future. We will need to understand =
what
> > was happening and why, in order to fix it or tweak it for new
> > circumstances.
> >=20
> > Doing that is *not* a peculiarity of the Linux 'process'. It is bas=
ic
> > engineering discipline, and it is *part* of the work. Just like the=

> > task of breaking a change down into incremental, bisectable commits=
 =E2=80=94
> > which I'm surprised wasn't in your list.
> >=20
> > Yes, there are a lot of people who *lack* that basic engineering
> > discipline, to the point where it *can* start to look like it's a L=
inux
> > -only requirement. But it's not. And there's not a lot we can do if=
 an
> > "engineer" lacks it, short of educating them. That part isn't a pro=
cess
> > issue.
>=20
> Fair enough. Agreed.
>=20
> Small functional changes isn't something that is readily automated, a=
nd it's the
> kind of feedback I do expect to give as a maintainer. That's why it i=
sn't on the
> list. I understand your point that some things that are on the list a=
re just
> good SW Eng 101 material - in practice, it still wastes my time :-) a=
s it can
> be automated.
>=20
> >=20
> > Likewise, compiler warnings. If your developers are actually
> > *submitting* code with unresolved compiler warnings, again there's =
not
> > a lot we can do to help them or you. Apart from confiscating their
> > keyboard.
>=20
> In the simplest case, sure. However, it isn't uncommon for config fuz=
z testing
> or different compiler versions to result in compiler warnings that th=
e original
> submitter could legitimately not seen. Right now my choice is to igno=
re their
> code or spend the time to educate - but either way I have to build it=
 and find
> the error. That step could be automated.

Yeah.  That's why I have the bleeding-edge branch. :-)

> > Coding style, again, isn't a Linux-specific thing. All large code b=
ases
> > attempt to have some kind of consistency to make the code readable,=
 and
> > anyone attempting to work on *any* code base should expect to becom=
e
> > familiar with the idioms and conventions (and charset choice) of th=
e
> > code they're working on.
> >=20
> > These *aren't* process issues, in my view. What you're saying with =
some
> > of these is that you're having to do *basic* (non-Linux-specific)
> > education of people who want to contribute code, and that *that*
> > doesn't scale. Which is true, but it's hard to know how to address
> > that, except with programs like GSoC etc.
> >=20
> > Josh suggests that we should provide a service that people could pu=
sh
> > code to and 'get automated feedback on what needs fixing'... but is=
n't
> > that what checkpatch was for? OK, a local tool can't cross-compile =
it
> > for you on every platform we support, but it can do a lot of stuff
> > short of that.
> >=20
> > I do like the idea of a 'test' mailing list which receives patches =
and
> > checks them for corruption though.
>=20
> I believe we're in agreement on some additional automation being avai=
lable to
> a broader audience would catch more errors with less maintainer/revie=
wer time.

That service only requires somebody with a kernel.org account and enoug=
h time
to apply *all* patches they get (except for the ones that don't apply, =
of course)
and push the result out into a public git branch on a regular basis.

That might be a robot, but arguably not running on kernel.org for safet=
y
reasons.

> As to what should be expected from contributors... I don't know. I wi=
sh everyone
> was as meticulous as you and so many other kernel developers (it's on=
e of the
> things I really appreciate about Linux kernel development), and somet=
hing I
> personally strive for. The reality is, they aren't, and since we're t=
alking
> about recruiting, my point was by implementing some of these things w=
e can
> maintain our standards while reducing maintainer/reviewer overhead.

With all tools/scripts/0-days/whatever in place there always is the tim=
e when
*you* (the maintainer) have to decide whether or not to apply the patch=
 (and
sometimes when to apply it too), so you have to look at it and understa=
nd
what it is doing.

Fortunately or not, no kind of software is able to understand things as=
 of
today, so you need a human for that job.  And *that* really should be t=
he
job for reviewers (including maintainers in a reviewer role).  All of t=
he
coding style/build errors/white space/etc is secondary in principle.
However, people often request things to be cleaned up to start with, be=
cause
those small details prevent them from being able to understand the gene=
ral
idea in the first place.

So the automation is only useful here as long as it helps patch submitt=
ers to
get their work to the point at which it can be understood by a reviewer=
 in
a relatively short time.  Otherwise, it is just not helpful in that res=
pect.

For example, if someone sends me a patch that doesn't apply, but that I=
 can
easily understand and I think "Yeah, that's a good idea!", I may fix it=
 up
and make it build and so on just fine.  But without understanding, I pr=
etty
much can't do anything with it even if it got all of the details perfec=
t.

Thanks,
Rafael
