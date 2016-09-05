Return-Path: <broonie@sirena.org.uk>
Date: Mon, 5 Sep 2016 13:58:31 +0100
From: Mark Brown <broonie@kernel.org>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20160905125831.GX3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
	<CAOesGMibzGC3Nz+DmERJUea4jbJQ28hDGDGMuHkr+o=Wb3iUdA@mail.gmail.com>
	<20160904001031.t7sv5isw5tc46pxr@thunk.org>
	<CAP245DVwmwkG3VbpiKmCx1Y4d3Hf62idZyHuroNf9TZ=yFuDsg@mail.gmail.com>
	<20160904235157.dyyevfr5wbasi7aq@thunk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PEpdcbHbO3kvNF3k"
Content-Disposition: inline
In-Reply-To: <20160904235157.dyyevfr5wbasi7aq@thunk.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--PEpdcbHbO3kvNF3k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 04, 2016 at 07:51:57PM -0400, Theodore Ts'o wrote:
> On Mon, Sep 05, 2016 at 04:28:44AM +0530, Amit Kucheria wrote:

> > But since 4.4 LTS misses some key features that have landed in 4.5,
> > 4.6, 4.7 and 4.8, something like LSK will fill that gap by backporting
> > those features.

> But the BSP kernel already has thousands of commits and tens of
> thousands of lines of code (some of which guarantee that the kernel
> won't build on anything other than ARM, which makes testing file
> systems using KVM Very Hard).  So if you backport to LSK, that's not
> going to help the BSP kernel unless someone then cherry picks patches
> from LSK to the BSP kernel.  So you are doing two very risky things;
> one is backporting a feature to 4.4 LTS, and then cherry picking the
> feature from the 4.4 LTS upstream kernel to the BSP kernel.

It's generally a merge rather than a cherry pick but whatever.

> I've done this sort of thing before, with ext4 encryption, where I was
> very familiar with the code and where I had a comprehensive test suite
> so I could at least test the first part of it using kvm/x86.  And I
> can tell you it's an *extremely* fraught and tricky thing.  What works

The difficulty level is all really dependent on what the feature is,
where it hooks in and how many implicit dependencies it has on things.
Filesystem code is some of the most fraught but other places it's a lot
more straightforward and commonly done - for my subsystems I know that
huge chunks of the code have been developed and then immediately
backported (and probably also developed downstream and then forward
ported a lot) and consider this a totally reasonable thing to do for a
lot of features.=20

> for device A won't work for device B, and just because you've
> backported the feature a 3.10 or 3.18 upstream kernel, and tested it
> extensively, doesn't mean that it is easy and risk free to cherry pick
> the patch to device kernel A and device kernel B, because the changes
> made by SOC vendor A and SOC vendor B may be quite different (and may
> not even be based on the same upstream kernel version).  And although
> we finally have xfstests (sorta[1]) working under Android today, we
> didn't have it when we started, and there were bugs introduced just
> doing the cherry pick.

One of the secondary goals here is to get more people using the same
backports for the common code so that the variance between the vendor
kernels is mitigated and where there are problems we can at least deal
with them centrally.

In terms of consistent versions one of the really positive things that
Android has achieved is that the Android kernel versions have managed to
get most of the vendors onto the same set of kernel versions (which are
normally LTSs too) - product schedules being what they are this doesn't
work out 100% but normally current products will all be on the same
version.  Things could get a little better but we're so far forward
compared to where we were before Android.

> > Now, if everything was on its way upstream, the BSP deltas would be
> > smaller and the whole porting and validation exercise on top of the
> > Android common tree would take much less time. But we aren't there yet
> > for all vendors, some are doing better than others.

> Has there been *any* forward progress since last year in terms of
> reducing the BSP deltas?

Things could be a lot better than they are but there's progress.  For me
the most encouraging thing is that we're seeing changes going into
common code which make it more suitable for embedded use cases, the
drivers are annoying but ultimately relatively minor in impact and easy
to address but once people start going off on their own with generic
code it is a much bigger problem.

Off the top of my head the EAS work is a nice example of this happening -
it's still in progress but that's a nice big chunk of non-trivial
scheduler changes which are being actively worked on upstream and seem
to be getting somewhere (there are some changes in already).  There's
been different bits of out of tree code around for this for years which
are now on their way out.  Things like power domains have been quite
active too, and I know a good chunk of the framework changes I'm
personally merging are coming from vendors.  Indeed I've recently had to
push Intel to finally start using the common clock framework because x86
has been holding back progress on integrating things.

> Even if we can't get everyone working from upstream, if multiple BSP
> deltas for different SOC's could be integrated into a single common
> 4.4 tree, and if that 4.4 tree could still generate bootable x86

That's impractical - nobody wants to be sitting between a vendor and
their customer when things are getting hairy, and if people are paying
the integration costs of getting everything into a common tree then we
want them to be doing that upstream rather than in some downstream tree.
You can get a long way in terms of lines of code relatively easily but
less so in terms of usefulness and if you can solve the problems there
then you've probably solved the upstreaming problem.

> kernels, so that could be the basis of an Android common branch, that
> would be a good start.  But I suspect we are a looooooong way away
> from that.

The Android tree itself is minimal because there's a desire to get
people taking updates to it as far into the product development cycle as
possible, the less code there is in there the easier that is.

--PEpdcbHbO3kvNF3k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJXzWv2AAoJECTWi3JdVIfQ4uMH/AyBv6oFVP/l7ZgYe3xL5/hI
ZVavH2WoROeuAz8Pi+cYPazl0REg9nEi7MZ4Da621YrtLtL5AFAEO5/KPP/9KjkU
3oSop8s/lXbgyMgHRnCeyYXaO0PFPumSMD/0dHzpZ+tkigWqv/0Y97GRcVsAZQPG
FIMyGb9w8Q165fiVBwwElcyGDsnhYlt7lI48jPe32VaGRjbmWKt61i7CUWWIA1Jb
0vRTXHpxFsAynrn/tGam861A1lD3Nf4CIl3e4uIh/GFJBb598+sYzG+R2ZCJR1U5
CLzmPLMG+cQGeSQbKx8jURLJco5BJpe9oa7/+trzg6wGCURn2p+3cnH5bMC+Kko=
=Au+/
-----END PGP SIGNATURE-----

--PEpdcbHbO3kvNF3k--
