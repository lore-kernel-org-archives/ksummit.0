Return-Path: <James.Bottomley@HansenPartnership.com>
Message-ID: <1472827326.2519.14.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Mark Brown <broonie@kernel.org>, "Levin, Alexander"
	<alexander.levin@verizon.com>
Date: Fri, 02 Sep 2016 07:42:06 -0700
In-Reply-To: <20160902095417.GJ3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-fOsPIiJYj6kmGZ56CnR3"
Mime-Version: 1.0
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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


--=-fOsPIiJYj6kmGZ56CnR3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2016-09-02 at 10:54 +0100, Mark Brown wrote:
> On Thu, Sep 01, 2016 at 09:25:31PM -0400, Levin, Alexander via
> Ksummit-discuss wrote:
> > On Wed, Aug 31, 2016 at 10:01:13PM -0400, Alex Shi wrote:
>=20
> > > I am a Linaro stable kernel maintainer. Our stable kernel is base=20
> > > on LTS plus much of upstream features backporting on them. Here=20
> > > is the detailed
>=20
> > I really disagree with this approach. I think that backporting=20
> > board support like what LTSI does might make sense since it's self=20
> > contained, but what LSK does is just crazy.
>=20
> The bulk of these features are exactly that - they're isolated driver
> specific code or new subsystems.  There are also some things with=20
> wider impact but it's nowhere near all of them.

It's crazy because it encourages precisely the wrong behaviour: vendors
target this tree not upstream.

> > Stable kernels have very strict restrictions that are focused on=20
> > not taking commits that have high potential to cause unintended=20
> > side effects, incorrect interactions with the rest of the kernel or=20
> > just introduce new bugs.
>=20
> > Mixing in new features that interact with multiple subsystems is a=20
> > recipe for disaster. We barely pull off backporting what looks like=20
> > trivial fixes, trying to do the same for more than that is bound be
> > broken.
>=20
> It's what people are doing for products, they want newer features but
> they also don't want to rebase their product kernel onto mainline as
> that's an even bigger integration risk.  People aren't using this=20
> kernel raw, they're using it as the basis for product kernels.  What=20
> this is doing is getting a bunch of people using the same backports=20
> which shares effort and hopefully makes it more likely that some of=20
> the security relevant features will get deployed in products.=20


And history repeats itself: this is almost the precise rationale the
distros used for all their out of tree patches in their 2.4 enterprise
kernels.  The disaster that ended up with (patch sets bigger than the
kernel itself with no way of getting them all upstream) is what led
directly to their upstream first policy.

The fact that all the distros track upstream more closely also means it's b=
etter tested: the farther away from upstream you move, the more problems yo=
u'll have.

>  Ideally some of the saved time can be spent on upstreaming things
> though I fear that's a little optimistic.

Such as a diff to mainline that grows without bound ...

> > As an alternative, why not use more recent stable kernels and=20
> > customize the config specifically for each user to enable on=20
> > features that that specific user wants to have.
>=20
> That's just shipping a kernel - I don't think anyone is silly enough=20
> to ship an allmodconfig or similar in production (though I'm sure
> someone can come up with an example).
>=20
> > The benefit here is that if used correctly you'll get to use all=20
> > the new shiny features you want on a more recent kernel, and none=20
> > of the things you don't want. So yes, you're upgrading to a newer=20
> > kernel all the time, but if I understant your use-case right it=20
> > shouldn't matter too much, more so if you're already taking chances=20
> > on backporting major features yourself.
>=20
> Like I say in this case updating to a newer kernel also means=20
> rebasing the out of tree patch stack and taking a bunch of test risk=20
> from that

Risk you wouldn't have if you just followed upstream first.  You can
add this to the list of problems you created by not upstreaming the
patches.

>  - in product development for the sorts of products that end up
> including the LSK the churn and risk from targeted backports is seen=20
> as much safer than updating to an entire new upstream kernel.

This is the attitude that needs to change.  If enterprises can finally
realise that tracking upstream more closely is a good strategy: shared
testing on the trunk, why can't embedded?  What is this huge risk they
see with the upstream kernel?  Granted, they have this vicious circle
where they need stuff that's not upstream because they targetted a non
-upstream kernel, which leads to them not wanting to upport it, but
surely it's Linaro's job to break this circle?

James


--=-fOsPIiJYj6kmGZ56CnR3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJXyY++AAoJEAVr7HOZEZN4rX0P/3y5qLVnap7qe0ecAG6jtpPm
dPlPwtKyf+zuAYhroG/IMb7w5pWKQ+smOdgvOaVtpml4PIiOEvVLrL2160zuOAnE
ATOljTxC+MxJ4r/gHF+3wHESe4VoIow4NbciIFsOxlfjvevbw7elq4pQbqdq/CnT
Ws2ukb3W6svjgr+t44v6x1vSjDGbCg2z4Rk195czV1uNJgFbyScCJc9dlV+oxFOD
oMIhtnDHHRfwztPpI5SL+NqCo2s6OTFyi228qXX5pfZmzXEFv3Yar0Q8eq8BKSxa
qDgw8+ZL30hNkWn8mGPrVsJSDSMxSmSlwN1lGYOmaeMqhp9/44xRIQxJEtBNNfta
XJqDUZRlyt6LDt+HdpgLZgb0PqC24XhVmQE6yDvYDWOLs37a7h1CMCtSqi78CKAU
x/0w1Ss1iIvcEEwO0Sg4i8/B0HljF+dVxeFMhFm5Cosmduda6uYUYzO6SO7hn2Ex
PCdfExg6XhDDdYCEbUQ5R3+lmo0DMaSqyb83upLFhErjW74Kk+DlJ72qfA7PMaKw
VNT7Akj1Nh+FMcKh3KbNCLw8MkZDjxI0bPBw71z3HjOMrDFT1QmH/3/aalSEgpcw
HQgQOi4gg2NkWLarocZ3fRnNBfSC742E0M7JPBckg/XvVxdeHCMfoyEAHy0QWEpR
P/ta3tQlT4GsYDVl32fs
=Dp7W
-----END PGP SIGNATURE-----

--=-fOsPIiJYj6kmGZ56CnR3--
