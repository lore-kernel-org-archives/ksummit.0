Return-Path: <broonie@sirena.org.uk>
Date: Sat, 3 Sep 2016 03:04:28 +0100
From: Mark Brown <broonie@kernel.org>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20160903020428.GQ3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org>
	<20160902134711.movdpffcdcsx6kzv@thunk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZNotpC0yWfjHZxBL"
Content-Disposition: inline
In-Reply-To: <20160902134711.movdpffcdcsx6kzv@thunk.org>
Cc: ltsi-dev@lists.linuxfoundation.org,
	ksummit-discuss@lists.linuxfoundation.org,
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


--ZNotpC0yWfjHZxBL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 02, 2016 at 09:47:11AM -0400, Theodore Ts'o wrote:

> As near as I can tell, the kernels provided by a SOC vendor are a
> snapshot in time of some LTS kernel, and after that, they don't bother
> merging any bug fixes or security fixes from the upstream kernel.
> They might take individual patches if they notice there's a problem
> (e.g., it gets written about in the national press), but otherwise,
> they'll be stuck on some nonsense such as 3.10.23.

That's really not the case universally and it's not helpful to just
dismiss all SoC vendors out of hand like this.  There are some vendors
who do a bad job, there are other vendors who pride themselves on things
like keeping current and use it as a selling point with their customers.
Obviously the bad vendors are going to be more visible and more
memorable, and given your mention of v3.10 I'm guessing your experiences
here may have been quite a while ago and those vendors you were looking
at then may have changed the way they work.

> Then the product vendors take the SOC kernel, and further hack it up,

I think many of the companies and people involved would characterise at
least some of what they're doing as being substantial and useful
engineering.  I'm saying this not just from the point of view of
politeness but also because one of the fears that people often have is
that they're just going to get ignored and dismissed upstream by people
who don't understand anything except PCs.  Obviously that's not
generally the case, but as we were reminded in the other thread there
are times when a diplomatic approach can be helpful in changing the
behaviour of companies.

> and then once they take a snapshot, as far as I can tell, they don't
> take any rolling updates from the SOC vendor either.  I'm not sure how
> much of this is due to lack of engineering bandwidth, and how much of
> this is due to being worried that a newer SOC kernel will introduce
> regressions, but either way, they'll lock onto an old SOC kernel, and

Assuming the product vendor is doing product updates at all it's much
more the fear of regressions than anything else - the SoC vendor is
likely to be doing all kinds of work to make their SoC more appealing to
customers which often won't be compatible with something that people
want to be more stable and people can get *very* conservative about what
they'll touch.

> apparently only take bug fixes when they notice there is a problem.
> (And in multiple cases I've gotten calls from help of SOC vendors
> asking for assistance in figuring out a problem, and more often than
> not, the fix is in the latest LTS kernel, but that doesn't help them.)
> And of course, in some cases, "never", unless it's written about in
> the aforementioned national press, and even then, I'm not convinced
> the product vendors will have the engineering staff to turn out
> firmware upgrades for an older product.

As with so much here this varies a lot between vendors and the markets
they're in - some produce a fairly constant stream of firmware updates
over a long period of time and are geared up to do that, others never
think about the product once it's out the door.  In the case of phones
you've also got the whole carrier mess to deal with even when updates do
get provided by the system integrator.

> So what's the point of moving features into some ancient kernel?

For values of "ancient" that are mostly "current LTS" and "current
Android kernel" (there is usually the prior LTS too but the focus is on
the current one, that's generally getting wound down).  The Android
kernel thing is a separate issue which is being worked on, one of the
goals with the decision at last year's KS to move the time LTS kernels
are announced was to help move towards keeping the two in sync.

> Who's going to take it?  Certainly not the product vendors, who
> consume the SOC kernel.  The SOC vendors?  Why not just encourage them

This is for SoC vendors.

> to get their device drivers into staging, and just go to a newer LTS

People in the embedded space are doing a *little* bit more than just
churning out drivers.

> kernel?  Because I guarantee that's going to be less risky than taking
> a random collection of features, and backporting them into some
> ancient kernel.

People mostly have been persuaded to use a current LTS kernel for new
development, moving to a newer LTS than the current one has it's
challenges. =20

> Or for that matter, why not simply going to the latest mainline
> kernel.  Since the SOC vendors aren't taking updates from the LTS
> kernel anyway, if the LTS kernel exists only as a patch repository

Like I say that's not universally the case so your assumptions here are
a bit flawed...

> where people can look for security fixes and bug fixes (sometimes
> after the upstream maintainer has to point out it's in the LTS
> kernel), if they take, say, 4.7, in the future they might need to take
> a look at 4.8.x, 4.9.x, etc., until the next LTS kernel is declared.
> So that means that an SOC vendor or a downstream product vendors might
> have to look at 3 or 4 patch releases instead of one.  Is that really
> that hard?

I'm not entirely sure I understand what you are saying here or how it
differs from what people are already doing with LTSs here?

If you're saying people at the start of development should track
mainline then to an extent until an LTS people already do that if
they've got the capacity to track upstream and have a reasonable belief
that there's going to be a LTS in a window that's useful to them (the
new timing does make that much more likely).  That does not, however,
mean that there isn't a substantial period after the kernel version is
locked in where development is still going on.

If you're saying people should just ship on mainline then I think that's
predicated on nobody ever doing LTS updates and even if that were the
case I'd have thought we want to encourage this.

You also have the problem that if everyone decides to pick different
baseline kernel versions (at the SoC vendor or product level) then any
third party vendor who wants to integrate with them ends up having to
target multiple kernel versions which hurts the ecosystem - it's more
work for them, and it makes it harder for people who want to buy these
devices to get software support if they happen to be on a different
version.

--ZNotpC0yWfjHZxBL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJXyi+rAAoJECTWi3JdVIfQoNsH/Api6vljLa6wtrEX6Nqes9Lt
MSOBYOs36ZZJpbyGu2HwIJai3WOLZbKO3E3PAPlW+5fPQ3mJg811upPo0gvJ36jw
bMhvQhi91fmzq906qjEBsb6TQpL/AI/24fvDv2eZ0WGUQSqeWzJune49xTN3PTMj
o7MAWbEkO/u1a8a+9Q1pQmyTsoPpg8AwsX5asi7p8zeIn/eXTZYArD3iGv87UJNB
9mwjuxB3pCVNh/N3BQ+qjqhTI4GJSldUDpICs20UCGpj1wbvxyBY6Skj8c9gqii0
c2aWEDTxM8n+SG1ut77Ko/EMkCHEPEAs99tk8jjphLIImeP1bDtQ0LvYXwC4vpw=
=GDDY
-----END PGP SIGNATURE-----

--ZNotpC0yWfjHZxBL--
