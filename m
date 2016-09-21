Return-Path: <broonie@sirena.org.uk>
Date: Wed, 21 Sep 2016 19:22:04 +0100
From: Mark Brown <broonie@kernel.org>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Message-ID: <20160921182204.GD7994@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160902191637.GC6323@sasha-lappy>
	<20160903000518.GN3950@sirena.org.uk> <1656524.OIRTMDr3jV@avalon>
	<57E22F8E.1040801@linaro.org> <20160921092341.GA25038@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gE7i1rD7pdK0Ng3j"
Content-Disposition: inline
In-Reply-To: <20160921092341.GA25038@kroah.com>
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
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


--gE7i1rD7pdK0Ng3j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 21, 2016 at 11:23:41AM +0200, gregkh@linuxfoundation.org wrote:
> On Wed, Sep 21, 2016 at 02:58:22PM +0800, Alex Shi wrote:

> > I am not a fun of some scheduler solution. But focus on this can not
> > explain why many distributions are using 'old' stable kernel. Looking
> > into product world, could you find some real product are using
> > 'upstream' kernel?

> > 'upstream first' is good for feature development, but isn't good for
> > product.

> Not true, IBM and Intel have shown that it saves you time and money to
> do "upstream first", why do people claim that their reports of this is
> somehow false?  Other companies also agree, but just don't want to take
> the initial "hit" of time to do it correctly as it will affect the
> device today to save time and money for the device tomorrow.

One problem that bites people fairly hard trying to do upstream first is
that upstream turns too slowly to do things for the current product in
some markets, when I was working on phones it'd off the top of my head
typically be 3-4 months before anything ended up in a release (depending
on where we were in the release cycle) and another year or so before
that filtered back out into product (and this is mostly with very low
resistance subsystems where I'm the maintainer).  This doesn't play very
nicely when your total product development lifecycle is on the order of
six months, even when you scale down to individual reviews of patches
the latencies involved just don't fit that well.  Upstream is
simultaneously very fast moving (when you look at the overall change
volume flowing in) and very slow moving (when you look at some
individual changes).

When I talk to people about this I tend to talk about doing upstream
simultaneously rather than first, that is a lot more tractable.  Work on
things, try to push your latest work upstream as you write it and
incorporate review feedback from upstream into your product as you go
but don't gate things on upstream.  Try to view anything that's still in
review as a problem that needs to be fixed but acknowledge that there's
also a need to actually get product out the door.

> > Many product guys talked to me that the non-upstream porting didn't
> > cost much and not the reason to pin on some stable kernel.

> You must be talking to product people who only have to make one device,
> not a family of devices :)

What Alex is seeing reflects my experience talking to people as well.
It's not like anyone is saying this is free but it's a thing that people
have been doing for a while, figured out and have incorporated into
their planning - it's managable and reasonably well understood even if
not super productive.

> > All of them said that testing and stability was the most cost part.

> Sure, software is always free, it's that pesky testing and fixing all of
> the bugs found that costs money :)
> (hint, all of those backports and non-upstrem stuff is what is causing
> lots of those bugs...)

All code has problems, it's not like we've got a silver bullet here -
let's not pretend that we're in a position where upstream is shippable
on all systems or where we never have any performance regressions.

> > Not only the regular test case, benchmarks, but also the long time
> > using for some trick/corner case bugs in whole system.

> What do you mean by this?

I think Alex is referring to the detailed full system testing that
people do, I could be wrong though.

> > I doubt the 'keep rebasing on upstream' guys have been really worked on
> > product?

> I doubt those "let's not work upstream" have been in this business for
> as long as those of us who say "work upstrem first" have :)

I have worked in this environment at various levels all the way up to
being sat on site with major consumer electronics companies pushing
patches into market leading products (and onto the lists).  I have
talked and continue to talk to colleagues in this space who have varying
degrees of engagement with upstream.

> Fine, you can ignore us, but realize that it will cost you time and
> money to _not_ work upstream.  We are just trying to help you out...

People aren't just ignoring the idea of working upstream entirely.
People are doing work here, it's producing results (or at least a pile
of mainline code).  Some are doing more than others, some are more
successful than others but there is a lot happening here.  There's a lot
of things going on that I'm critical of but there's also a lot of
perfectly rational, practical decisions being made.  Getting the more
complex consumer electronics devices to the point where they work as
well upstream as servers do is not trivial and will take some time.

Simply repeating "upstream first" over and over again and telling people
that doing anything else is just silly isn't really helping move things
forward.  People have heard this but for a good chunk of the industry
there's a big gap between that simple statement and something that can
be practically acted on in any sort of direct fashion, it can easily
just come over as dismissive and hostile.  It's going to be much more
productive to acknowledge the realities people are dealing with and talk
about how people can improve their engagement with upstream, make the
situation better and close the gaps.

--gE7i1rD7pdK0Ng3j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX4s/KAAoJECTWi3JdVIfQ4rcH/253Uyqd6751GK4xSQHTU2wE
7LWw7YwpFDnc1mAN7vFsy2qs5+fwprrO92we0d9G0BY6qEkJpVqgsVpiegOpX+kQ
I43oi3jxmru8HrQQ541Yfrl0aw+mssjEZpPKD62jhwjGSc7lIFvtKyrKTRwvQySi
O1bEnML1Gv3CqlIrLF8JzWPEGLNMflwlFtJCz/LNDmkO7z4R34JeWU/AM9UQGINe
lZ4T5a4v69YKdtBL/OtfH0yl7WA6zH+pASoJjds8QsLE3D2Vdgi/1oku88RSGO8q
QNqOXOO1LV1gG+B1gZuTJXweJ+MWGW5jj6HXg2kK3hNcJwUYakQJHvlc3tCHk9U=
=TPmM
-----END PGP SIGNATURE-----

--gE7i1rD7pdK0Ng3j--
