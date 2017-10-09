Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E4C12949
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Oct 2017 16:49:38 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7BF35F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Oct 2017 16:49:37 +0000 (UTC)
Date: Mon, 9 Oct 2017 18:49:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1507567045.3100.16.camel@HansenPartnership.com>
Message-ID: <alpine.DEB.2.20.1710091848390.3870@hadrien>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1710091750540.14384@jbgna.fhfr.qr>
	<1507567045.3100.16.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1784574025-1507567775=:3870"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Maintainer's Summit Agenda Planning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1784574025-1507567775=:3870
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT



On Mon, 9 Oct 2017, James Bottomley wrote:

> On Mon, 2017-10-09 at 17:54 +0200, Jiri Kosina wrote:
> > On Fri, 6 Oct 2017, James Bottomley wrote:
> >
> > >
> > > 2) Trivial patches (again). OpenStack has recently started to
> > > become annoyed by these 
> > >
> > > http://lists.openstack.org/pipermail/openstack-dev/2017-September/t
> > > hread.html#122472
> > >
> > > I thought about our process around the trivial tree, but it hasn't
> > > been updated in the last few releases, so effectively we no longer
> > > use it.
> >
> > This has been caused solely by me being buried in other things, and
> > there was always something else that overrode trivial tree in
> > priority.
> >
> > >
> > >  So is what we're currently doing (variable standards by tree) OK,
> > > or should we have a more concerted trivial policy?
> >
> > My original plan was to revive trivial tree for 4.15, as there are
> > quite a few patches in the queue (that still apply). But if it's
> > generally considered annoying (although I am pretty sure we don't
> > suffer from what's in the openstack thread), I don't object and can
> > ditch it completely.
>
> Well, their objection was core (by which they mean Maintainer) review
> and merge time, plus the interference to higher priority patches caused
> by mismerges.  I was actually thinking a trivial tree might help them
> because it would offload all the mismerges and review and they only
> need do a real merge just before release stabilisation.
>
> > The thing is that such patches will keep coming anyway, and I think
> > they have the value (although the priority is really lower than other
> > changes of course). I still believe that having greppable comments,
> > for example, is nice to have.
>
> Well, we tend to veto changes to old drivers in various subsystems
> anyway (having been burned by the this is only a trivial change and
> then finding out six months later that the driver is broken).
>
> Trivial changes seem to fall broadly into three categories:
>
>    1. spelling fixes
>    2. whitespace changes (I ran checkpatch.pl on your file and it returned
>       these issues).
>    3. pattern imposition (we now have a new API for this so lets change
>       all prior open coded incarnations)
>    4. trivial pattern fixes (things like replacing if(x) kfree(x); with
>       kfree(x);)
>
> I don't want to open the whole spelling/whitespace can of worms, but
> perhaps we could have a more meaningful discussion about the pattern
> based issues ... for instance if we agree it's useful and coccinelle
> can do it, then tree wide replacement at -rc1 might be a better
> solution than ad-hoc application of hundreds of patches.

Do you suggest one big patch, that goes to who?  Or lots of little patches
that go out at once to the individual maintainers of the affected code?

Both are doable.

julia


>
> James
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>
--8323329-1784574025-1507567775=:3870--
