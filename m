Return-Path: <broonie@sirena.org.uk>
Date: Fri, 2 Sep 2016 10:54:17 +0100
From: Mark Brown <broonie@kernel.org>
To: "Levin, Alexander" <alexander.levin@verizon.com>
Message-ID: <20160902095417.GJ3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org>
 <20160902012531.GB28461@sasha-lappy>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hnsKUeImFCk/igEn"
Content-Disposition: inline
In-Reply-To: <20160902012531.GB28461@sasha-lappy>
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
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


--hnsKUeImFCk/igEn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 01, 2016 at 09:25:31PM -0400, Levin, Alexander via Ksummit-discuss wrote:
> On Wed, Aug 31, 2016 at 10:01:13PM -0400, Alex Shi wrote:

> > I am a Linaro stable kernel maintainer. Our stable kernel is base on LTS
> > plus much of upstream features backporting on them. Here is the detailed

> I really disagree with this approach. I think that backporting board support
> like what LTSI does might make sense since it's self contained, but what LSK
> does is just crazy.

The bulk of these features are exactly that - they're isolated driver
specific code or new subsystems.  There are also some things with wider
impact but it's nowhere near all of them.

> Stable kernels have very strict restrictions that are focused on not taking
> commits that have high potential to cause unintended side effects, incorrect
> interactions with the rest of the kernel or just introduce new bugs.

> Mixing in new features that interact with multiple subsystems is a recipe for
> disaster. We barely pull off backporting what looks like trivial fixes, trying
> to do the same for more than that is bound be broken.

It's what people are doing for products, they want newer features but
they also don't want to rebase their product kernel onto mainline as
that's an even bigger integration risk.  People aren't using this kernel
raw, they're using it as the basis for product kernels.  What this is
doing is getting a bunch of people using the same backports which shares
effort and hopefully makes it more likely that some of the security
relevant features will get deployed in products.  Ideally some of the
saved time can be spent on upstreaming things though I fear that's a
little optimistic.

> As an alternative, why not use more recent stable kernels and customize the
> config specifically for each user to enable on features that that specific
> user wants to have.

That's just shipping a kernel - I don't think anyone is silly enough to
ship an allmodconfig or similar in production (though I'm sure someone
can come up with an example).

> The benefit here is that if used correctly you'll get to use all the new shiny
> features you want on a more recent kernel, and none of the things you don't
> want. So yes, you're upgrading to a newer kernel all the time, but if I
> understant your use-case right it shouldn't matter too much, more so if
> you're already taking chances on backporting major features yourself.

Like I say in this case updating to a newer kernel also means rebasing
the out of tree patch stack and taking a bunch of test risk from that -
in product development for the sorts of products that end up including
the LSK the churn and risk from targeted backports is seen as much safer
than updating to an entire new upstream kernel.

--hnsKUeImFCk/igEn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJXyUxIAAoJECTWi3JdVIfQOtAH+gM/fQlOjUkiSaIyDelJJ16O
CTg0etefhukkCVYTd76dAfwOPQhq+sQ7glegVLy5SFx1S0poaF+LLhhQMCwjRwtp
fjYwHEruVFQ70pivy4KNZhjhucAGHtLz9wP1OrQRxW4AmiLBGXoOddjbSuSnK+5Y
sFqp5OvB2mxbenkTh8jg5nvqcw7zYl9OGGZUSnSaqfMNt1RTCP5sOHAybk1M0j3Z
T2URbjShK3yh+Cy6XLGlRZdUlpFIyGZkdK8IxBLf3bBdZeGBm12A6Z4xq5DM6XMw
YMsazjwrN5yx5JoXAjFVRG/jrWIzvFL2AaF+1UUsQB/XWT6rHTUJgAf7B+XeDyQ=
=iKs4
-----END PGP SIGNATURE-----

--hnsKUeImFCk/igEn--
