Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E93D0C9F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 10:47:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D02EE2D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 10:47:13 +0000 (UTC)
Date: Sat, 8 Sep 2018 07:47:08 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20180908074708.249571f4@coco.lan>
In-Reply-To: <1536263475.6012.5.camel@HansenPartnership.com>
References: <1536263073.6012.3.camel@HansenPartnership.com>
	<CAKMK7uFHOP+shcnAdHEEELOth+d3BR0LdUZ9rXdrhYueHdqF9A@mail.gmail.com>
	<1536263475.6012.5.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] Succession Planning: Is It
 time to Throw Linus Under a Bus?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Thu, 06 Sep 2018 12:51:15 -0700
James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:

> On Thu, 2018-09-06 at 21:47 +0200, Daniel Vetter wrote:
> > On Thu, Sep 6, 2018 at 9:44 PM, James Bottomley
> > <James.Bottomley@hansenpartnership.com> wrote: =20
> > > Since our fearless leader apparently can't even remember the dates
> > > of
> > > the only conference he goes to, perhaps now might be a good time to
> > > talk about how we'd run an orderly succession process (purely
> > > theoretically, of course ...)
> > >=20
> > > I think a vote amongst the Maintainer Summit attendees might be the
> > > way
> > > to elect a new leader, but others probably have different ideas. =20
> >=20
> > Why I single leader?
> >=20
> > This group maintainer ship thing ... it=C2=A0=C2=A0works. =20
>=20
> I also note that group maintainership seems only to work for you in
> DRM; most of the other subsystems seem to have single leader
> hierarchical maintainership.

If we're seriously thinking on have a plan for maintainership
replacement with a group, we need first to answer:

	Q: How many Kernel developers does it take to replace Linus?

That's said, I doubt that the DRM model would work outside DRM
subsystem: too many people with commit rights can be hard, specially
if they all can touch the core. Btw, we tried a similar model in
the past on media (by the time we were using Mercurial, about
10 years ago): all core developers had commit rights. It worked
smoothly for years, until one of the developers decided
to commit a very intrusive patch touching all drivers at the
subsystem and stepping on everyone else feet. Handling it was
really painful. If our official model would be a group=20
maintainership, it would probably take months for us to put the
tree on a sane state. I ended by using my maintainership status
to revert the patch, returning the tree to a sane state and allowing
the others to keep sending patches. Yet, it took months, even
years for us to recover from the disaster. Also, due to the
heated discussions, we end by losing several developers due
to that.

A triumvirate like x86 and arm might work, but I suspect that it
would be easier to start with a more hierarchical model, like
for example having one (sub-)maintainer for arch, another
one for core and a third one for drivers.

Also, if we want to consider the bus scenario and other disaster
threats, it could be worth to consider having them geographically=20
distributed (if possible even on different Countries).

Thanks,
Mauro
