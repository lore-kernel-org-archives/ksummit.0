Return-Path: <broonie@sirena.org.uk>
Date: Sat, 3 Sep 2016 00:29:18 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160902232918.GL3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="B3NBd8mrXZtPJEYR"
Content-Disposition: inline
In-Reply-To: <1472827326.2519.14.camel@HansenPartnership.com>
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


--B3NBd8mrXZtPJEYR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 02, 2016 at 07:42:06AM -0700, James Bottomley wrote:
> On Fri, 2016-09-02 at 10:54 +0100, Mark Brown wrote:

> > The bulk of these features are exactly that - they're isolated driver
> > specific code or new subsystems.  There are also some things with=20
> > wider impact but it's nowhere near all of them.

> It's crazy because it encourages precisely the wrong behaviour: vendors
> target this tree not upstream.

By "vendors" you mean "the people paying for the work"...

> And history repeats itself: this is almost the precise rationale the
> distros used for all their out of tree patches in their 2.4 enterprise
> kernels.  The disaster that ended up with (patch sets bigger than the
> kernel itself with no way of getting them all upstream) is what led
> directly to their upstream first policy.

Right, this is nothing new - but as we discussed earlier on this year we
can't just wish away the product needs people have or the time taken to
implement change.

> >  Ideally some of the saved time can be spent on upstreaming things
> > though I fear that's a little optimistic.

> Such as a diff to mainline that grows without bound ...

Or gets smaller - some of the vendors are actually making some progress
here, and one of the things that people have worked out is that it's
really helpful if you want to try to push forwards to make sure that if
a problem is solved upstream you work with that solution rather than
rolling your own (and if one isn't there you get it upstream at the same
time as you develop it).

There's a continum of behaviour here, obviously there are some vendors
who just don't care at all but you also have vendors working with
varying degrees of engagement in the community all the way up to those
who have real live customers running mainline on their systems. =20

It's also interesting to look at where the diffs are - for example are
people rewriting subsystems or are they adding new drivers?  The more
it's just simple driver work the closer we're getting.

> > Like I say in this case updating to a newer kernel also means=20
> > rebasing the out of tree patch stack and taking a bunch of test risk=20
> > from that

> Risk you wouldn't have if you just followed upstream first.  You can
> add this to the list of problems you created by not upstreaming the
> patches.

You're not really engaging with the problem here.  People aren't
rewriting their entire stacks every time they move forwards, telling
them to just bin their entire code bases or not release any new products
for a year isn't helpful here, running mainline isn't a change people
can make overnight.  It's good to know where we want to get to but we
need to recognise that it's a journey.

It's not like things like laptops are doing a perfect job here - as was
covered in the previous stable discussion this year the experience using
a newly released x86 laptop chipset on Linux is usually not a fun one
initially.  Embedded vendors need to ship a fully working product, they
have to get things together before market rather than after.

> >  - in product development for the sorts of products that end up
> > including the LSK the churn and risk from targeted backports is seen=20
> > as much safer than updating to an entire new upstream kernel.

> This is the attitude that needs to change.  If enterprises can finally
> realise that tracking upstream more closely is a good strategy: shared
> testing on the trunk, why can't embedded?

Note that what the LSK itself is doing is an example of the enterprise
approach - we're backporting things that are already upstream. =20

>  What is this huge risk they
> see with the upstream kernel?  Granted, they have this vicious circle

As one progresses in system integration and QA the amount of change you
can tolerate in the product decreases - change control tightens up
considerably, by the time you get to shipping an end product you'll
often be at the point where any change is individually reviewed at the
top level of the engineering teams before it goes in.  There's a window
in people's development cycles where it is viable for them to move to a
newer kernel version (which is when they do do this) but after that the
need for retesting and the risk that something will break from a rebase
just becomes too great.

Now, one can work upstream and then do backports but that's not trivial
(especially when you're relying on other in flight things) and at some
point you are always going to end up shipping things downstream first
simply because upstream's timescales don't match up with the product
needs.

This is very much what the enterprise distributions are doing (although
on a much longer product cycle compared to the consumer electronics
world) - for example RHEL 7 shipped in June 2014 using a v3.10 based
kernel, v3.10 having been release in June 2013, and still has a v3.10
based kernel and it's those vendor kernels where their QA efforts are
focused.

> where they need stuff that's not upstream because they targetted a non
> -upstream kernel, which leads to them not wanting to upport it, but
> surely it's Linaro's job to break this circle?

The issue isn't not wanting to work upstream, the issue is wanting to
continue to get products out the door with a reasonable degree of QA.

--B3NBd8mrXZtPJEYR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJXygtLAAoJECTWi3JdVIfQfiYH/j959/huYNzPaLiVFWmLp1BZ
hhA0ocm0eeUsZ6OpG3puaiN2xMs2XTGT85dQw/JWArBgVGTzi4bHTUIKUlj1Rd18
RXuwh37MiX7yKxxEvLPtR9y3q2jvmZcVcPFhmd44iowHuF7HgqRpJrHqzthpxxoQ
g1sOTasSbY/D2jWdfkeclirpDLPa6N22Ib2gxtDmE5KS1ax4ILiD+Bc+yBo501OK
pPivprOBbAoDxtZUSMBvyD+Bawtp76r7OvJD3MBDMVf3PCgeHnMRzKpw81M7f/4d
zIe+QUN3DhINLQrFm6Ch8vB3bpbowDEjwfmvm8ZQq3M7AyrJjrBhauR12TQRSs8=
=XcDd
-----END PGP SIGNATURE-----

--B3NBd8mrXZtPJEYR--
