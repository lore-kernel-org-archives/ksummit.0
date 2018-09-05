Return-Path: <leon@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4DAA1CF8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 07:38:31 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D2B778B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 07:38:30 +0000 (UTC)
Date: Wed, 5 Sep 2018 10:38:26 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Rodrigo Vivi <rodrigo.vivi@gmail.com>
Message-ID: <20180905073826.GL2977@mtr-leonro.mtl.com>
References: <CABVU7+vBVivOZ32aEokJ0y3=C2z0Ev12O3vSVfyTC9TDrBOr8A@mail.gmail.com>
	<20180905042246.GA2977@mtr-leonro.mtl.com>
	<CABVU7+u+F1CXAW48_XfhLy59BOTxAS-qa_pG4Xjkki=f4Rr9Kg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="l0l+eSofNeLXHSnY"
Content-Disposition: inline
In-Reply-To: <CABVU7+u+F1CXAW48_XfhLy59BOTxAS-qa_pG4Xjkki=f4Rr9Kg@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Challenges in Upstream
 vs. Embargoed Development in Intel Graphics.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--l0l+eSofNeLXHSnY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 04, 2018 at 09:49:13PM -0700, Rodrigo Vivi wrote:
> On Tue, Sep 4, 2018 at 9:22 PM Leon Romanovsky <leon@kernel.org> wrote:
> >
> > On Tue, Sep 04, 2018 at 12:54:16PM -0700, Rodrigo Vivi wrote:
> > > Hi there,
> > >
> > > I've submitted a proposal for plumber's referred track. There, I want to
> > > talk
> > > about tools and challenges we have on embargo development vs upstream one
> > > and
> > > how to get focus on upstream first and upstream always mentality.
> > >
> > > The name of plumbers proposal talk is:
> > > "Unveiling Intel Graphics Internal Development"
> > >
> > > I'm not sure if the talk will get accepted, but anyway I'd like to have the
> > > chance to talk to other maintainers to exchange views on different ways of
> > > maintaining this kind of embargo development including challenges, tools,
> > > processes, and rules.
> > >
> > > So I'm interested in hallway tracks of Maintainer / Kernel Summit, or maybe
> > > a
> > > bof session if there's interest.
> > >
> > > Please let me know if there's interested or if further information and/or
> > > clarification is needed.
> >
> > What is "embargo development"? Are you referring to US government
> > restrictions or to anything else?
>
> No. nothing to do with government.
> Embargoed by company's temporary restrictions.
>
> Sorry for not being clear here.
>
> >
> > Also can you please explain why should we know about internal Intel
> > development flow?
>
> First of all I don't believe that we are the only one that need to
> keep this kind
> of flow and i915 has a very active development and we are strongly
> committed with
> upstream development. Our golden rules for internal development is
> upstream first, upstream always.

Good, indeed you are not alone in this attitude.

> So, maybe sharing some knowledge and lessons we learned on the past years
> might be useful to someone else that might still struggle with closed source
> style of development.

Honestly, I hardly can see how this topic fits "kernel summit" format,
but maybe I'm wrong here.

>
> Also we have some challenges on keeping everything updated and
> ready for upstreaming at any moment. Maybe someone else has better tools
> and better procedures than us, but we are just not aware because we
> never talked.

As the one who was involved in transforming Mellanox from closed-source
company to be upstream-driven company, I can assure you that all changes
are contained inside the company. They include change of responsibilities,
organization restructure, legal, HR and many more. Those changes take
a loooooot of time with enormous internal pushback.

>
> Ultimately there are some essential questions that I'd like to open to community
> and ask for feedback and ideas. Some issues and gaps that cannot be solved, or
> even come to a consensus on, internally.
>
> But my hope is that we can keep that on the constructive space.
>

First you need to raise your questions in this ML, but from the little I
saw in this thread, you are struggling with business justification to
reduce "embargo".

Thanks

> Thanks,
> Rodrigo.
>
> >
> > Thanks
> >
> > >
> > > Thanks in advance,
> > > Rodrigo.
> >
> > > _______________________________________________
> > > Ksummit-discuss mailing list
> > > Ksummit-discuss@lists.linuxfoundation.org
> > > https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> >
>
>
> --
> Rodrigo Vivi
> Blog: http://blog.vivi.eng.br

--l0l+eSofNeLXHSnY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBAgAGBQJbj4fyAAoJEORje4g2clin9ngQAJqVhRRZ7oYAasHGccz1RSg1
vkZUjXMfCJs+x+wQtSaFQohEU2p+dWSiyrVdRRiCredr7bfG1xzgD0cBSbIVS46f
RZGklbY9MSL8tXwHm3wRIZ9gcrbGseI2TvOS6RLktDVSwLOPWRJjKyAtGFo0K9PQ
ecdXJ1gM+yCqfFjBQb8NFg78anKyoAZdV26uiHVHVLMoZHyUNFERiV63HiT/G3Y9
6vDIvXxCrr2DLV2oiwKgkgAVT871FRQ1X8lsR62e4Hw+q/G7b6/LzcHLKlcDNw7l
2OVJKWN6I4TOeomOyuP0tEeJ3+yjFrKF+JoF0Krhr9ehKmQrjCkFOjIuT0FAMLxM
4V2xNIOBt6hP6XNVb2k9mqyKCgAtAYASV9hpDQN5mXf9ybgZflR5959hs57NekZD
E4heC9QMXWqweGhC1X7Oa5eGfTFxypbTnn1wDy/k9SUV6qIBrIUzohVsjQA8OGud
VX/HWcOXSiTpwzvsO4D+nRFkIpj6rqSJmy+QH2+eC0SGt1R77xJFVtf9iEdzPlOK
ap6OfyCQJC4fQCwYZeuJYdrF5aiWR0O5SHmuZoajcd0B6l4BW4KhjjD6OKvVZVzs
SJAuuJgEpqyHVddGQEBWEA7hvCEPQ3i9CCgMWCt1OR4cW4behc6jP1Wa4LIzTrc3
ydGydXgsCBV3I0e8UyjI
=uqlB
-----END PGP SIGNATURE-----

--l0l+eSofNeLXHSnY--
