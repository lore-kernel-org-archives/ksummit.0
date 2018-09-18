Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B76661364
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 19:52:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1DE5B8D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 19:52:11 +0000 (UTC)
Date: Tue, 18 Sep 2018 16:52:03 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20180918165203.69de8cc4@coco.lan>
In-Reply-To: <20180918193644.GA5400@localhost>
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	<1537279328.3424.6.camel@HansenPartnership.com>
	<20180918162948.769dda1d@coco.lan>
	<20180918193644.GA5400@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

Em Tue, 18 Sep 2018 12:36:45 -0700
Josh Triplett <josh@joshtriplett.org> escreveu:

> On Tue, Sep 18, 2018 at 04:29:48PM -0300, Mauro Carvalho Chehab wrote:
> > Em Tue, 18 Sep 2018 10:02:08 -0400
> > James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:
> >  =20
> > > > After the past 2-3 days I get the feeling there are maintainers
> > > > unsure about how this affects them and I think assuaging those fears
> > > > might be a good thing.
> > > >  =20
> >  =20
> > > From my perspective, which is probably fairly widespread: we're alrea=
dy
> > > pretty much policing the lists using a set of rules which match fairly
> > > closely to the new CoC, so there should really be no huge impact. =20
> >=20
> > After carefully reading it a couple of times, I think it has a huge
> > impact.
> >=20
> > The more immediate impact is with regards to this wording:
> >=20
> > 	"Examples of unacceptable behavior by participants include:
> > 	...
> > 	* Publishing others=E2=80=99 private information, such as a physical o=
r electronic
> > 	  address, without explicit permission"
> >=20
> > When we publish a patch with a Signed-off-by, Reviewed-by, Acked-by,
> > Requested-by, Suggested-by, etc, we are actually publishing an electron=
ic
> > address. =20
>=20
> If they've posted public mails from that email address, that isn't
> "private information" at that point. And in any case someone offering
> such a tag would constitute permission.

Good point, but I'm pretty sure it opens multiple interpretation, as
it explicitly forbids using "electronic address without explicit
permission".

> (Publishing someone's private, otherwise-unpublished email address in an
> Acked-by, on the other hand, *could* be problematic. Don't do that.)

Well, Requested-by, Suggested-by (and sometimes tested-by) is sometimes
added by the maintainer (or by the patch writer).

> Nonetheless, it probably couldn't hurt to have some notes on this
> situation somewhere.

Yes, that's my point: that part of the CoC should explicitly exclude any
electronic addresses that are used on public community-related channels,
specially on e-mail [1].

Thanks,
Mauro

[1] While this is not common, I merged in the past some patches whose
developer included parts of discussions that happened at freenode's
public IRC channels related to the project.
