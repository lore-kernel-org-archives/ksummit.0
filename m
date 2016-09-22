Return-Path: <broonie@sirena.org.uk>
Date: Thu, 22 Sep 2016 01:43:40 +0100
From: Mark Brown <broonie@kernel.org>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20160922004340.GG7994@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160902191637.GC6323@sasha-lappy>
	<20160903000518.GN3950@sirena.org.uk> <1656524.OIRTMDr3jV@avalon>
	<57E22F8E.1040801@linaro.org> <20160921092341.GA25038@kroah.com>
	<20160921182204.GD7994@sirena.org.uk>
	<20160921195241.bwkizm55y5hjtczc@thunk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Sw7tCqrGA+HQ0/zt"
Content-Disposition: inline
In-Reply-To: <20160921195241.bwkizm55y5hjtczc@thunk.org>
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
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


--Sw7tCqrGA+HQ0/zt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 21, 2016 at 03:52:41PM -0400, Theodore Ts'o wrote:
> On Wed, Sep 21, 2016 at 07:22:04PM +0100, Mark Brown wrote:
> > One problem that bites people fairly hard trying to do upstream first is
> > that upstream turns too slowly to do things for the current product in
> > some markets, when I was working on phones it'd off the top of my head

> To me, "upstream first" doesn't mean wait for things to cycle out to a
> release.  It means "develop first on upstream" and then backport to
> your product kernel.  And I tend to think of this as something that

I'm not sure that's what everyone understands when they are just told to
"upstream first" - I'd say a good proportion people understand upstream
first as meaning getting things merged first, and we certainly don't
want people to just post patches once and then declare themselves happy
that they've done their bit.

> But this tends to avoid a huge build-up of horrific technical debt
> where you have a completely horrific scheduler change that is
> completely invasive to the core kernel structures, and guarantees that

It certainly mitigates it but it doesn't avoid it - you will get a
backlog, and probably not in the easy bits either.  This is already how
a lot of things are developed today, especially when they fiddle around
in core.

What's a bit less clear to me is that it's worth everyone assembling
enough of people's out of tree stuff to actually run things usefully on
the systems people are developing on day to day which is what you'd need
to do to make things practical for most end developers to actually do
anything with.  The mechanics for actually pushing things found in
production out from those production trees as they stand are not trivial
(especially when working through combinations of large companies many of
which don't want to talk to the world in general about what they're
doing during a large portion of development), until we're in a better
place upstreaming wise I'm not sure that *everyone* trying to focus on
in flight upstream work directly wouldn't generate more heat than light. =
=20

At some point the balance will tip, I think it already has tipped in
some market segments that are less concerned about some of the more fun
features like power, but there are places where we need to get enough
building blocks in place for upstream to be a viable basis for
development - Tim Bird has some interesting presentations based on his
experience trying to push this at Sony Mobile.

> your changes will break the kernel building on any other architecture.

This is basically unrelated to upstreaming - it's just a quality thing
people can do if they like.  I know there are vendors that do actually
keep track of x86 already for their product kernels but honestly for a
lot of environments the practical use cases are fairly marginal so I can
totally understand why people would just fix it if they needed to.

I know you had really bad experiences with some product trees in the
past but that's not the entire world today.

> Most of the time, the comments that you will get back from the
> community are actually good ideas; not just nit-picking to slow you
> down.  (And, if you know that your changes are going upstream, this
> tends to invoke a bit more professional pride with the result that
> what you put forward for external review, and what shows up in the
> product kernel, isn't a terrible hack filled with techincal debt.)

I think at this point there has been enough repititon to ensure that
everyone who might care has heard these basic arguments for working
upstream.  They just aren't flying well enough to solve the problem by
themselves, sorry.  If that's all we're saying then at this point it's
probably doing more harm than good to keep on repeating them over and
over again.

> > When I talk to people about this I tend to talk about doing upstream
> > simultaneously rather than first, that is a lot more tractable.  Work on

> Sure.  I tend to think of that as upstream first, although if people
> are happier calling it "upstream simultaneously", the terminology
> doesn't really matter all that much.

Like I say I think a lot of people tend to take the natural English
meaning of "first" when they hear the term.

> What *does* matter is an attitude that the goal should be to have
> stuff in your product kernel which is upstreamable as the default
> goal, and having things that are out-of-tree should be the exception
> and not the rule.  And if it does happen, there ought to be good
> reasons for each of those changes, and an acknowledgement that
> out-of-tree changes represent technical debt.

I'm not sure there's any meaningful set of people who are actively
enthusiastic about the current situation.  Thing is that we're already
in that situation, it is more useful to focus on improving it and we
need to be aware that this isn't something that can change overnight.
It's true that it's a huge pile of technical debt and we want to deal
with that but we also don't want people to view this as such a large
problem that it's insurmountable so they just give up.

> Perhaps those that are doing good work here should be called out and
> given praise?  While there are some negative consequences with calling
> out those folks who aren't willing to do more, highlighting the people
> who are doing a good job should be all upside.

Yes, we should do more of that.

--Sw7tCqrGA+HQ0/zt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX4yk8AAoJECTWi3JdVIfQ4rIH/jXaeBzt7d6Aw06Q4Uhbh6o2
rMzUMy1svTdGEdA3aC9GqJOhl4oZF167dHoyx16WzNsJvlG4sDcPDVbCDDdKEwGo
o3fH76qAUbfKs1xtzEYkyzyKcTLPvNVwssRa/gi8Ikixeb0erCCh29BPfg/Vf4iQ
VtTYlSxj99E3SWd0Ti+sClR1BDh9+2hiBO7uY/VrCJmbmOd/bIAb+R6W7cCsvnsc
SZfLF8n4pzer2h9qwbVaZRvZFDiR26TtR+VZ4QdkW+yjOU+zQhJ8Q42eMKWmpeyz
g9hGkXKC5yLO2e+JGDTo7Iouz7OaLLdp5Dum4MTCSqjEDkZI0hW2IGclMZkiP9k=
=wrqA
-----END PGP SIGNATURE-----

--Sw7tCqrGA+HQ0/zt--
