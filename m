Return-Path: <ilevex.linux@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3026CAAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 17:01:48 +0000 (UTC)
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E1C3D201A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 17:01:46 +0000 (UTC)
Received: by mail-ee0-f49.google.com with SMTP id e53so846659eek.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 10:01:45 -0700 (PDT)
Sender: Levente Kurusa <ilevex.linux@gmail.com>
Date: Thu, 15 May 2014 19:01:38 +0200
From: Levente Kurusa <levex@linux.com>
To: Josh Boyer <jwboyer@fedoraproject.org>
Message-ID: <20140515170138.GC2599@linux.com>
References: <20140512164921.GB3509@linux.com> <53710053.4040100@zytor.com>
	<CACV2jQDDu91ug=xeJ235W4jMunvfAY1rSXLjFGqw0hoTS4gmxg@mail.gmail.com>
	<20140513112525.GB10733@kroah.com>
	<CABe+QzALCqDLEJn9LawN2+SxEwzoNN5mYxY-Ko0z37oJowzYMA@mail.gmail.com>
	<20140513150520.GA15857@kroah.com>
	<CABe+QzDo9PudGCPOQnEabnwL=M8L261x_GjB2xrkCgLhJi+ewQ@mail.gmail.com>
	<CA+5PVA5k=mVtR+gb+hfpc_05J_yP-TruX2DXFZdQkY+Nzq4p+w@mail.gmail.com>
	<20140513160743.GA11391@thunk.org>
	<CA+5PVA5fun_4d3N57TPnV4uczG2rCQpGk-d8KYR92t4Xju0a8A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="96YOpH+ONegL0A3E"
Content-Disposition: inline
In-Reply-To: <CA+5PVA5fun_4d3N57TPnV4uczG2rCQpGk-d8KYR92t4Xju0a8A@mail.gmail.com>
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
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


--96YOpH+ONegL0A3E
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, May 13, 2014 at 09:14:48PM -0400, Josh Boyer wrote:
> On Tue, May 13, 2014 at 12:07 PM, Theodore Ts'o <tytso@mit.edu> wrote:
> > I'll note this discussion has started mutating to a more general "how
> > do we get more useful bug reports in front of developers", which I
> > think is a good thing.
>=20
> Yes, agreed.
>=20
> > However, I'm still not sure how useful it would be to have a tech
> > topic (or a core topic) dedicated to the matter, because we've had
> > discussions about and at the end of the day, what's probably really
> > necessary is to have someone, or a small team, dedicated all or most
> > of their time to:
> >
> > a) improving kerneloops.org
> > b) finding interesting patterns in the bulk reported data, and then
> > forwarding that on to developers
> > c) finding ways of automating (b)
>=20
> I think that's not really the full answer.  Having that setup would
> certainly be beneficial, but it ignores the time delay required to
> both 1) actually get kernel releases to large numbers of users, and 2)
> find said interesting patterns.
>=20
> The number of users testing the latest kernel release is certainly
> more today than ever, but the bulk of users are still using distro
> kernels.  Even with Fedora, Arch, and other distros rebasing rather
> quickly, we are still looking at that kernel release hitting the user
> base after the merge window is closed for the next version already
> (N+1).  That means the upstream kernel developers are off developing
> for the release after (N+2).
>=20
> So if a large number of users starts hitting bugs in version N, and
> the upstream developers are already working on changes for N+2,
> waiting for interesting patterns to develop is actually increasing the
> "cost" to the developers to go back and look at code they did 2
> releases ago.  The typical response is "does this recreate on Linus'
> latest tree or some subsystem git tree", which is N+1 in this case.
> It's a fair request from a developer's perspective, but it's not as
> simple for an end user or distro.  Often times they'll try N+1 and hit
> a different bug on their system, making it even more confusing to try
> and work the original report to conclusion.  (That appears to be Dave
> Jones' life in a nutshell with trinity reports at the moment, so it's
> not just Aunt Tillie either.)
>=20
> Often times the bugs are still in N+1 as well, so it's certainly
> helpful to report either way.  The areas where we tend to see this
> problem aren't in core MM or VFS code, but more in things like
> backlights, GPU drivers, wireless drivers, etc.  These aren't trivial
> areas to debug or git bisect (which is a nightmare to work and end
> user through).  They are also the same areas where we depend on
> end-user testing and reporting because of the huge amount of
> variability in the hardware itself.  E.g. a change to fix something in
> i915 on one machine/chipset seems to inevitably break a different
> machine/chipset.

One thing I would add is if a user actually reports a bug on Bugzilla
often times they are able to do a git bisect. What I have observed is
that less tech-savvy people don't even bother with trying to report
the bug nor they would try to do anything to fix it if the bug isn't
that fatal. Of course, ABRT and the like has improved the number of
quality bug reports, but there still exists a number of fatal bugs
that with which we remain less informed.=20

Naturally a question arises. How could get technically not-so-capable
people to report bugs? I guess QR codes have become so mainstream
nowadays, that they can provide a solution. What I see nowadays is
that when people see a QR code, they almost automatically try to scan
it. Not to mention when they have nothing else to do as with a kernel
crash. :-)

>=20
> I realize QR codes, kerneloops.org, and things of that nature aren't
> going to solve this problem.  That's kind of why I'd like to see it
> discussed more broadly, and not assume that it can be automated away.
> I'm just concerned that the rate of development today is outpacing our
> ability to get the releases into user's hands and get valid and useful
> bug reports from them.

Indeed, by the time the people's favourite distro rebases, we are
already working on a new release. This mostly does not tend to be
a very bad delay with bleeding-edge distros like Arch and Fedora,
but what I am concerned of is what happens with the conservative
distros like Debian. AFAIK, the latest version of Debian is still
shipping the 3.2 stable kernel. If we start receiving reports from the
3.2 kernel, which is N-13 at the moment, then chances are the reports
are less useless, since the subsystems have evolved so much since 3.2.

Thanks,
    Levente Kurusa

--96YOpH+ONegL0A3E
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQEcBAEBAgAGBQJTdPLyAAoJELBqK2lO9dZBot8H/A3WCqss+GxOi2gH7fdM9f4I
11ZeN++7Pt/N2oDOxnbbEeznNvGPSf7/wSTv10yG7X08Jo+hG81q3+qb6ipgkYuq
N2vKzVVkNzvH7Y2ZAIIB4GgMFxRQnP7L6aHtmfCmbKIIUVgsp39j8lN5M2nhTv2S
1kcWoGfkB70hpK8BgS6mPWJPzWjsnR0YJfFllUTPUXO+LXD8Y7E+8hZAi6AhYff5
jmjfB/X42mCM+m5ZSqqZiPXOkT3kj0Tw0TTCPhvnpeMmb/9WmAhyu7C/3N/mjue5
hKVTU+hp2f+I10064BRd6QfRzJDxxuZrouNbY3dZk3xTrOYTFhjW6CVTszWoBwA=
=ha2H
-----END PGP SIGNATURE-----

--96YOpH+ONegL0A3E--
