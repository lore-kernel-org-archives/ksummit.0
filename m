Return-Path: <SRS0=zQUY=LZ=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 20CDC1287
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 20:31:40 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 73AA8716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 20:31:39 +0000 (UTC)
Date: Tue, 11 Sep 2018 16:31:36 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20180911163136.1d6653a6@vmware.local.home>
In-Reply-To: <1536696572.3511.12.camel@HansenPartnership.com>
References: <CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180910174638.26fff182@vmware.local.home>
	<20180910230301.GB1764@localhost.localdomain>
	<20180910191329.70f90a14@vmware.local.home>
	<20180911114227.241f2e5d@vmware.local.home>
	<20180911174043.GK5659@atomide.com>
	<1536688022.3511.5.camel@HansenPartnership.com>
	<20180911143923.11e479ea@vmware.local.home>
	<1536696572.3511.12.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 11 Sep 2018 16:09:32 -0400
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

> On Tue, 2018-09-11 at 14:39 -0400, Steven Rostedt wrote:
> > On Tue, 11 Sep 2018 10:47:02 -0700
> > James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> > =C2=A0 =20
> > > I really don't think that helps.=C2=A0=C2=A0The 0day mailing list bot=
 seems
> > > to be a bit overloaded and about 80% of the automation isn't run
> > > *unless* =20
> >=20
> > Really? I get reports on my branches about a lot of issues without
> > ever pushing it to next. Maybe I lucked out and these issues were
> > caught by the 20%.
> >=20
> > When I have a branch ready to test, I push it to my local branch on
> > kernel.org and then kick off my own test suite. I like to see which
> > one will catch any bugs first. I usually get a response from 0day and
> > a couple of hours later my tests will fail with the same error. Thus
> > I found 0day to be quite efficient. =20
>=20
> I treat -next as the integration tree: I push to it when we're ready to
> integrate.  I don't think that's unreasonable and I do see it being
> unreasonable to impose a delay on this process.

I believe that's exactly what -next is for. Integration with
development from other sub systems.

>=20
> > > your branch hits -next.=C2=A0=C2=A0Our criterion for -next queueing i=
s local
> > > tests pass, code inspection complete and 0day ML didn't complain.=C2=
=A0
> > > However, we still get quite a few reports from the -next automated
> > > testing even after our local stuff.=C2=A0=C2=A0I really don't see what
> > > delaying into -next buys you except delaying finding and fixing
> > > bugs. =20
> >=20
> > But you state you have your own local tests, which I think could be
> > enough of a requirement. Although running allmod and allyes should be
> > part of a local test, but I think 0day does that too (as that's
> > usually the test that fails most often that 0day catches first). =20
>=20
> So when local tests are complete we're ready for integration.

If your local tests catch most common bugs. (testing on non-SMP,
x86_32, and other non-common cases where things can break).

>=20
> > > This applies to 0day as well, because, by agreement, it has a much
> > > deeper set of xfstest runs for branches we actually queue for -next
> > > rather than the more cursory set of tests it runs on ML patches. =20
> >=20
> > What about the tests on local branches? Not what you post to the ML. =20
>=20
> I don't really see any point having a local -pre-next pass and hoping
> 0day will find it.  It's much more valuable (and faster) to push to
> -next and have all the integrated tests work on it once we've done
> everything we can locally.

Why not do what I do and push to a -pre-next branch when you kick off
your local tests? Then perhaps 0day may catch something you introduced
before it heads off to -next. -next is about catching bugs due to
integration with other sub systems, it shouldn't be used to catch bugs
that could have been caught without the integration.

Kind of like if you give blood in the US. There's a note that tells you
to not use blood donation as a way to get tested for a particular
disease. Just get tested for it before giving blood and possibly
infecting others.

-- Steve
