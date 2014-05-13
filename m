Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 655FC4C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 19:02:21 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D14F4201B3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 19:02:20 +0000 (UTC)
Date: Tue, 13 May 2014 20:02:06 +0100
From: Mark Brown <broonie@kernel.org>
To: josh@joshtriplett.org
Message-ID: <20140513190206.GP12304@sirena.org.uk>
References: <s5htx8tizaf.wl%tiwai@suse.de>
	<alpine.LNX.2.00.1405131627480.16459@pobox.suse.cz>
	<CABe+QzDMfRzedp+HROr7jqycCMueF=OWiUMEoFraVSVV+CTL2Q@mail.gmail.com>
	<20140513162844.GA1647@cloud>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="G1ZIZCEpqeWhtTv2"
Content-Disposition: inline
In-Reply-To: <20140513162844.GA1647@cloud>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Guidance for subsystem maintainers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--G1ZIZCEpqeWhtTv2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 13, 2014 at 09:28:44AM -0700, josh@joshtriplett.org wrote:
> On Tue, May 13, 2014 at 07:57:16AM -0700, Sarah A Sharp wrote:

> > Patch testing and review is a social problem, and trying to mandate a
> > workflow or even a set of technical tools will not help solve the
> > social problem of patches getting dropped or ignored.

> Perhaps, but part of why Linus switched to git (and BK before that) was
> to avoid the resend-patches-until-Linus-doesn't-drop-them-on-the-floor
> problem.  It seems like we haven't so much *fixed* that problem as moved
> it further down the chain to a subset of maintainers.

Indeed, and communicating best practice is part of helping to make
things work better.

> This holds even more true if you're trying to make a cross-subsystem
> change: if you have 30 patches across 15 subsystems, you'll have a few
> merged right away with an explicit email acknowledgement (notably Andrew
> and Greg who have automated that), a few merged with no acknowledgement
> (have fun finding where they got merged or figuring out where they'll go
> from there), most of them disappear into a black hole until they
> magically show up in Linus's tree two major versions in the future, and
> a few just fall into /dev/null.  And I don't see an obvious way to
> distinguish between the last three cases.

-next is *relatively* good for tracking things that are actually going
to Linus, though it's not a guarantee of course and does nothing for
the unresponsive case.

> 1) The cross-subsystem difficulties sometimes tempt me to queue up
> patches into my own git tree and send direct pull requests to Linus once
> I have a patch series that gets no objections from maintainers, but I'm
> concerned about doing that for cross-subsystem "topics" and drawing
> flames from subsystem maintainers about not going through their tree(s).
> Is that a real problem, or is it considered reasonable to maintain a
> repository by topic rather than by subsystem?  (I would, for instance,
> be quite willing to maintain a "tiny" tree, and accept tinification
> patches from others to merge upstream.)

The main thing with these issues in terms of interpersonal conflict
avoidance mostly seems to be people talking to each other and cross tree
merges like Olof said.  The biggest issue I've seen with this stuff is
that it gets quite tedious seeing lots of reposts of frequently very
similar serieses as they go round and round loops which I fear tends to
encourage people to ignore such serieses.

> 2) We could improve the experience for patch submitters without
> necessarily pushing changes to maintainer workflows.  I wonder if we
> could do a better job of providing automated tools that make life easier
> for maintainers and patch submitters?  For instance, what about having
> easy-to-enable git hooks on git.kernel.org similar to those Andrew and
> Greg use, notifying the patch submitter when a maintainer merges their
> patch?  Maintainers could opt into those hooks specifically for
> whichever repository has their "will go upstream eventually" branches,
> and supply a short description of where patches typically flow from
> their tree so submitters know what to expect.

> Would that be useful?  Would maintainers want it?  What properties would
> it need to have?  Could kernel.org support that?  And would anyone be
> interested in helping to write it?  (I'm willing to help, given answers
> to those questions to make sure it'll actually get *used*.)

Meh, my artisan hand crafted "Applied, thanks" mails aren't good enough? :P

More seriously just getting some common place where people can work on
scripts would be useful even if they don't end up hosted on kernel.org.
I do have some scripts I use locally but they don't send replies, they
mainly just do patchwork for the trees I'm able to get patchwork working
for and remap my local git repo into the public branch names.

--G1ZIZCEpqeWhtTv2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTcmwrAAoJELSic+t+oim9iA4P/RgDavU453Ce/p6nahmVpIZf
GWevYse2H4waqQY6MG+fehO2HIB+VSNZ5tFwIPeO0s5YfFU0sCek5j3HJXqW4Hag
p0OhF+wcl7H8N2nRosxaEvF7uIjsXftFKQlxjxH4KK0RnVeI+gnWXUqq23AUy9Qp
nENYKVaiH2zAXxmFDQjruERMGl5jG0A2SLm9JOvlWujT8elXRpo45IYFfjFozwy0
pjlCLbsewcP/P05QhuJZHHTnIZusTxw874XqIwIHdKoG4ChwQ14fcIw6JkMBESog
aeZFKohzzynRvvxB8+PxdXyYxdSWaDywc8LElkJlgMYjxH8gokaO1F8pTa+8kPBg
2VwGWCFNgIpZ6boxfJ7TpnhRwaRrrb8oZE7zec0kd3Hb51v7QOcwZZPKIbu5Yj5+
Pk2Vu/r6MXO0eWZBZv6ONbYqlSwh0LRbZwzxVS7u0PFDDS8nHuY20wHTq4JYEUQU
Txcautw8nieLVTamvGAJyzkt8yNLiax4Ejb2KFub3y1HGbsaQOKC/+w0lY61SjlC
boCU93TXn6uCnz+mdhpl+uJ+S7rFrvOoHNUpU+ioyYnz0bH1LRgidxmjsk7T7N6z
Y6smV8F0/A/ZiAefaYiJniVGI1ilajqB831KIYhHO0N1hc+vONTy8rCWU3hUZTfK
7bqwJ7Fjnejj39DdBNyY
=WkY0
-----END PGP SIGNATURE-----

--G1ZIZCEpqeWhtTv2--
