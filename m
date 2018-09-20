Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DEA9112D2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 15:57:48 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 53D6B7CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 15:57:48 +0000 (UTC)
Date: Thu, 20 Sep 2018 08:57:40 -0700
From: Mark Brown <broonie@kernel.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20180920155740.GJ2471@sirena.org.uk>
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	<20180918094332.2c0d066a@gandalf.local.home>
	<2926975.6qOp4mHNDQ@aspire.rjw.lan>
	<CAKMK7uH54r6UATpEsVDT6VpBUe8FuwsXVy1mBzC3SWSVRax-7g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/T+UM55GOh1Yge7W"
Content-Disposition: inline
In-Reply-To: <CAKMK7uH54r6UATpEsVDT6VpBUe8FuwsXVy1mBzC3SWSVRax-7g@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
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


--/T+UM55GOh1Yge7W
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 20, 2018 at 11:53:26AM +0200, Daniel Vetter wrote:
> On Thu, Sep 20, 2018 at 11:12 AM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:

> > Also, the second paragraph in there openly suggests that maintainers are now
> > expected to reject contributions from the people who behave inappropriately
> > in their view.  Does this mean that I'm expected to reject correct code changes
> > (maybe including bug fixes and maybe even security-critical ones) from a person
> > whose behaviors "deem inappropriate, threatening, offensive, or harmful" in
> > my view?

> Ultimately, yes. On dri-devel we didn't yet have to pull out that
> threat yet. If you look at other communities, a permanent ban (which
> is what you defacto do if you reject all contributions from someone)
> is an extremely rare measure.

> What we have done is temporarily suspend people's commit rights, so
> they can cool down a bit. Or making it clear that we might remove them
> from maintainer duties. The amount of damage a maintainer/committer
> can do is much bigger than someone just submitting patches, so usually
> that's all that's needed. All while making it clear that their
> contributions are still very much welcome. But someone who really only
> wreaks a massive wake of destruction, even if their patches themselves
> are fine, will be thrown out completely from dri-devel. Just not worth
> to deal with.

I did once run into a situation where I just flat out refused to apply
what was apparently a bugfix patch from someone due to the fact that the
commit message consisted entirely of abusive comments about everyone
involved in introducing the bug and they refused to improve the commit
message in any way.  It didn't help that they weren't willing to
describe the bug itself other than to make derogatory comments about
those who couldn't see the issue.  This is just an edge case that's
really extreme and really rare.

--/T+UM55GOh1Yge7W
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlujw3MACgkQJNaLcl1U
h9CzPAf/fzqtTbddNbghijcBDEnESVK/kKhQuZZUTzjeurthdArQYhohxw9biy7v
srQiLTOCsTRcSP/uyv0cuSWBv750Wob31wVlyf9N8tx6UwAMAEWA00aTM0stEav9
z2kJ/9eoRBzF2+FNS524ms+fpc6+EJytWaJfj/iA8+z0JBz7R2Vxck77Wy4oUU31
t+wY5Q2Uz1hZU16lvmEIOYDNKnowg7t2CCgeNRvvvG1yzY8uD7ji/K/HLPVhSC5p
lx6PqLgGqoUEPVN8ZDwc6oUwKUt1CUCyh6ZZzJ2mijxb6sao01Jj3Tq7l2kk0QPt
shIaWXWb2TeJZ73cGAYgePPOi2fuqQ==
=fT8B
-----END PGP SIGNATURE-----

--/T+UM55GOh1Yge7W--
