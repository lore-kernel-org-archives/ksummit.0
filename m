Return-Path: <alexander.levin@verizon.com>
From: "Levin, Alexander" <alexander.levin@verizon.com>
To: Mark Brown <broonie@kernel.org>
Date: Fri, 2 Sep 2016 15:16:37 -0400
Message-ID: <20160902191637.GC6323@sasha-lappy>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
In-Reply-To: <20160902095417.GJ3950@sirena.org.uk>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
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

On Fri, Sep 02, 2016 at 05:54:17AM -0400, Mark Brown wrote:
> Sep 01, 2016 at 09:25:31PM -0400, Levin, Alexander via Ksummit-discuss wr=
ote:
> > On Wed, Aug 31, 2016 at 10:01:13PM -0400, Alex Shi wrote:
>=20
> > > I am a Linaro stable kernel maintainer. Our stable kernel is base on =
LTS
> > > plus much of upstream features backporting on them. Here is the detai=
led
>=20
> > I really disagree with this approach. I think that backporting board su=
pport
> > like what LTSI does might make sense since it's self contained, but wha=
t LSK
> > does is just crazy.
>=20
> The bulk of these features are exactly that - they're isolated driver
> specific code or new subsystems.  There are also some things with wider
> impact but it's nowhere near all of them.

It's nowhere near all of them, but all it takes is one.

Look at KASLR and KASan, it has complex interactions with pretty much the r=
est
of the kernel. Quite a few things not directly related to either of those h=
ad
to be fixed just because they were found to not integrate right (For exampl=
e,
KASLR uncovered a bunch of bugs before it was actually merged in), who says
that there aren't any similar interactions with the older kernels that no o=
ne
looked into?
=20
> > Stable kernels have very strict restrictions that are focused on not ta=
king
> > commits that have high potential to cause unintended side effects, inco=
rrect
> > interactions with the rest of the kernel or just introduce new bugs.
>=20
> > Mixing in new features that interact with multiple subsystems is a reci=
pe for
> > disaster. We barely pull off backporting what looks like trivial fixes,=
 trying
> > to do the same for more than that is bound be broken.
>=20
> It's what people are doing for products, they want newer features but
> they also don't want to rebase their product kernel onto mainline as
> that's an even bigger integration risk.  People aren't using this kernel
> raw, they're using it as the basis for product kernels.  What this is
> doing is getting a bunch of people using the same backports which shares
> effort and hopefully makes it more likely that some of the security
> relevant features will get deployed in products.  Ideally some of the
> saved time can be spent on upstreaming things though I fear that's a
> little optimistic.

I'm sorry but just calling a kernel "stable" doesn't mean that suddenly it
acquires the qualities of a stable kernel that follows the very strict rule=
s
we have for those.

Given that you're backporting features into a stable kernel it really inher=
its
the code quality of a release candidate kernel; nowhere close to a stable
kernel.

This following is just my opinion as an LTS kernel maintainer: if you think
that the integration risk of a newer stable/LTS is bigger than using these
frankenstein kernels you are very much mistaken.

In your case it's nice if you could share backports betweek multiple users
(just like we try doing for all the stable/LTS trees), but the coverage and
testing you're going to get for that isn't anywhere close to what you'll ha=
ve
for a more recent stable kernel that already has those features baked into
that.

> > As an alternative, why not use more recent stable kernels and customize=
 the
> > config specifically for each user to enable on features that that speci=
fic
> > user wants to have.
>=20
> That's just shipping a kernel - I don't think anyone is silly enough to
> ship an allmodconfig or similar in production (though I'm sure someone
> can come up with an example).

I highly doubt that most shipped kernels actually go through the process of
auditing every single config option and figuring out if they actually need =
it
or not (in part because the kernel's config is quite a mess). I really doub=
t
that the kernel is fine-tuned for majority of the released products that ru=
n
linux.

I think that time invested in improving the config code is much more import=
ant
that investing time in attempting to backport features.

> > The benefit here is that if used correctly you'll get to use all the ne=
w shiny
> > features you want on a more recent kernel, and none of the things you d=
on't
> > want. So yes, you're upgrading to a newer kernel all the time, but if I
> > understant your use-case right it shouldn't matter too much, more so if
> > you're already taking chances on backporting major features yourself.
>=20
> Like I say in this case updating to a newer kernel also means rebasing
> the out of tree patch stack and taking a bunch of test risk from that -
> in product development for the sorts of products that end up including
> the LSK the churn and risk from targeted backports is seen as much safer
> than updating to an entire new upstream kernel.

Same as I said before, the risk LSK introduces, IMO, is much greater than
rebasing and out-of-tree driver stack.

--=20

Thanks,
Sasha=
