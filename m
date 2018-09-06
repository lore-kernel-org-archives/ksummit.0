Return-Path: <leon@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9A0B7DC0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 13:56:53 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BE3F5786
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 13:56:52 +0000 (UTC)
Date: Thu, 6 Sep 2018 16:56:48 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Rodrigo Vivi <rodrigo.vivi@gmail.com>
Message-ID: <20180906135648.GK3142@mtr-leonro.mtl.com>
References: <CABVU7+vBVivOZ32aEokJ0y3=C2z0Ev12O3vSVfyTC9TDrBOr8A@mail.gmail.com>
	<20180905042246.GA2977@mtr-leonro.mtl.com>
	<CABVU7+u+F1CXAW48_XfhLy59BOTxAS-qa_pG4Xjkki=f4Rr9Kg@mail.gmail.com>
	<20180905074840.GB29052@kroah.com>
	<CAKMK7uEJfgACdzLdfh+EeG-NFkr47Bn3PFWCEOPA+1D1=5J7kA@mail.gmail.com>
	<20180905083120.GA28353@kroah.com>
	<CAKMK7uHLACdr4vGexqO-oh+QrRqxq0_KyJdhnr_eAZy6ApwWUQ@mail.gmail.com>
	<20180905093406.GO2977@mtr-leonro.mtl.com>
	<CABVU7+uHEdYHn=-46naYkOA-PPyTbFas7HOP=5fc8r64Bbr6=A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="WlEyl6ow+jlIgNUh"
Content-Disposition: inline
In-Reply-To: <CABVU7+uHEdYHn=-46naYkOA-PPyTbFas7HOP=5fc8r64Bbr6=A@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>
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


--WlEyl6ow+jlIgNUh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 05, 2018 at 03:45:41PM -0700, Rodrigo Vivi wrote:
> On Wed, Sep 5, 2018 at 2:35 AM Leon Romanovsky <leon@kernel.org> wrote:
>
> > On Wed, Sep 05, 2018 at 11:00:12AM +0200, Daniel Vetter wrote:
> > > On Wed, Sep 5, 2018 at 10:31 AM, Greg KH <gregkh@linuxfoundation.org>
> > wrote:
> > > > On Wed, Sep 05, 2018 at 10:17:44AM +0200, Daniel Vetter wrote:
> > > >> On Wed, Sep 5, 2018 at 9:48 AM, Greg KH <gregkh@linuxfoundation.org>
> > wrote:
> > > >> > On Tue, Sep 04, 2018 at 09:49:13PM -0700, Rodrigo Vivi wrote:
> > > >> >> On Tue, Sep 4, 2018 at 9:22 PM Leon Romanovsky <leon@kernel.org>
> > wrote:
> > > >> >> >
> > > >> >> > On Tue, Sep 04, 2018 at 12:54:16PM -0700, Rodrigo Vivi wrote:
> > > >> >> > > Hi there,
> > > >> >> > >
> > > >> >> > > I've submitted a proposal for plumber's referred track. There,
> > I want to
> > > >> >> > > talk
> > > >> >> > > about tools and challenges we have on embargo development vs
> > upstream one
> > > >> >> > > and
> > > >> >> > > how to get focus on upstream first and upstream always
> > mentality.
> > > >> >> > >
> > > >> >> > > The name of plumbers proposal talk is:
> > > >> >> > > "Unveiling Intel Graphics Internal Development"
> > > >> >> > >
> > > >> >> > > I'm not sure if the talk will get accepted, but anyway I'd
> > like to have the
> > > >> >> > > chance to talk to other maintainers to exchange views on
> > different ways of
> > > >> >> > > maintaining this kind of embargo development including
> > challenges, tools,
> > > >> >> > > processes, and rules.
> > > >> >> > >
> > > >> >> > > So I'm interested in hallway tracks of Maintainer / Kernel
> > Summit, or maybe
> > > >> >> > > a
> > > >> >> > > bof session if there's interest.
> > > >> >> > >
> > > >> >> > > Please let me know if there's interested or if further
> > information and/or
> > > >> >> > > clarification is needed.
> > > >> >> >
> > > >> >> > What is "embargo development"? Are you referring to US government
> > > >> >> > restrictions or to anything else?
> > > >> >>
> > > >> >> No. nothing to do with government.
> > > >> >> Embargoed by company's temporary restrictions.
> > > >> >>
> > > >> >> Sorry for not being clear here.
> > > >> >
> > > >> > Why do we care about something like this?  It sounds like it is an
> > Intel
> > > >> > issue in that they want to delay pushing stuff upstream.  Why does
> > > >> > upstream care about this?
> > > >> >
> > > >> >> > Also can you please explain why should we know about internal
> > Intel
> > > >> >> > development flow?
> > > >> >>
> > > >> >> First of all I don't believe that we are the only one that need to
> > > >> >> keep this kind of flow and i915 has a very active development and
> > we
> > > >> >> are strongly committed with upstream development. Our golden rules
> > for
> > > >> >> internal development is upstream first, upstream always.
> > > >> >
> > > >> > Great!  So if this rule runs into opposition to people within your
> > > >> > company, doesn't that sound like a meeting with those company
> > members is
> > > >> > the best solution?
> > > >> >
> > > >> >> So, maybe sharing some knowledge and lessons we learned on the past
> > > >> >> years might be useful to someone else that might still struggle
> > with
> > > >> >> closed source style of development.
> > > >> >
> > > >> > Ah, so you want to talk about how to change your process to work
> > better
> > > >> > with companies that don't like doing upstream-first work?  That
> > sounds
> > > >> > like a nice talk, but you need to make that a bit more clear here :)
> > > >> >
> > > >> >> Also we have some challenges on keeping everything updated and
> > ready
> > > >> >> for upstreaming at any moment.
> > > >> >
> > > >> > "any moment"?  Don't you know this ahead of time?  If not, that
> > sounds
> > > >> > like a company problem...
> > > >>
> > > >> The only companies which do not have this problems (at least in the
> > > >> graphics space) are those which don't care one bit about upstream at
> > > >> all. So yes, all the problems we have (and everyone else I've talked
> > > >> to in gfx) are dealing with are direct consequences of doing
> > > >> upstream-first drivers for a proprietary piece of hardware developed
> > > >> behind closed doors. And until we have exclusively open source IP
> > > >> hardware this problem won't go away.
> > > >
> > > > Why are graphics companies "special" here somehow?  What about network
> > > > driver companies (like Intel?)  CPU manufactures?  IB controller
> > > > companies?  Any company really...
> > >
> > > I have no idea how this works outside of intel or graphics, I tend to
> > > not chat with those people as much as I do with graphics people. Would
> > > be interesting to know how it is outside of the graphics bubble
> > > indeed.
> > >
> > > Looking just at what intel does, this is a problem everywhere.
> > > Graphics is a bit worse, simply because our driver stack moves faster
> > > and is bigger (our driver is bigger than most kernel subsystems in
> > > their entirety). So we have slightly more fancy tooling and process to
> > > handle things. But the problem is the exact same thing for all hw
> > > teams here at Intel. Extrapolating from what I know I'd be surprised
> > > if this isn't a problem everywhere.
> > >
> > > Note that the simplest solution here is to forget about upstream and
> > > ship on LTS kernels only. Avoids all the pain we have. And that's what
> > > pretty much everyone in the SoC/gfx space is actually doing, outside
> > > of very few exceptions like AMD&Intel. Most of the SoC drivers you see
> > > are reverse-engineered, so naturally they don't have to deal with
> > > pre-production hw fun simply because they can't even get at the hw
> > > this early in the cycle.
> > >
> > > >> This was an invitation to exchange experience in how to best deal with
> > > >> the fallout - I do actually know that this is not an intel-only issue
> > > >> because I chatted with non-Intel people about how they deal with this.
> > > >> And I thought that figuring out how to do better upstream-first is
> > > >> very much within the scope of ks/lpc, hence why I suggested Rodrigo
> > > >> brings this up as a talk proposal.
> > > >
> > > > Ok, a "Here is how we work with pre-release hardware and upstream" type
> > > > of talk, giving suggestions for how to deal with this at a company
> > level
> > > > would be a nice proposal.  But that was a bit hard to tease out of the
> > > > original submission here :)
> > >
> > > Yeah Rodrigo's text maybe had a bit much intel-lingo in it, without
> > > more context to explain. Still, I found it a bit suprising that you
> > > assume a submission from the maintainers of one of the most aggressive
> > > upstream-first driver teams would have no idea how to do upstream
> > > development and therefore it must be their self-inflicted pain for not
> > > doing the right thing ...
> >
> > Daniel,
> >
> > Sorry but it is how it is sound from the original proposal. Can you or
> > Rodrigo share your pain points?
> >
>
> My fear of spoiling details here is that it would create a big endless
> email discussion

Thanks for sharing

> like many we had internally already. But anyway I will share a bit here so
> you can have more info to decide if the discussion is appropriated or not
> for this summit:
>
> 1. Rebasing on top of LTS as Mark and Daniel mentioned creates a future
> problem for us. Since drm moves so fast the code on top of LTS will be
> likely need to be re-written sooner or later.
>

We solved it a long time ago by deciding to base our code more or less on
latest -rc* from Linus.

> 2. We are upstreaming everything, so we need to keep patches always ready
> for upstream and track the history of each patch itself. So we need patch
> of patches.

We solved it by internal restructure and put several people to be
responsible for upstreaming (actual sending of patches) and encouraged
actual developers whose patches were send to respond to comments if needed.

BTW, those upstreaming people are regular developers, just more focused.

Once patches are accepted, we rebase our code.

It removed from us need to track patches.

>
> 3. Quality on code review gets impacted because of the upstream focus. It
> has the risk of getting forgotten or lower quality reviews like -staging
> drivers Takashi mentioned.

We (RDMA community) decided do not invest any effort in staging, mainly
because having constant nightmare with lustre.

>
> 4 . If we raise the bar demanding good reviews, once our patches from
> internal started appearing on public mailing lists already contained
> "Reviewed-by:" we had other issues....
>

I don't see any problem with that. People invested time, it is our way
to say our thanks to them.

> For 1, 2 and 3 we believe we found the solution space and would like to
> share experiences and collect feedback. However for the 4th I'd like to be
> able to talk to more devs and maintainers face to face because internal
> email threads were huge already but we never found a rough internal
> consensus on this one.
>
> Thanks,
> Rodrigo.
>
>
> > In case this topic will be accepted, I would like to participate too and
> > share our experience with dealing with upstream-first methodology.
> >
> > Thanks
> >
> > >
> > > Thanks, Daniel
> > > --
> > > Daniel Vetter
> > > Software Engineer, Intel Corporation
> > > +41 (0) 79 365 57 48 <+41%2079%20365%2057%2048> - http://blog.ffwll.ch
> > > _______________________________________________
> > > Ksummit-discuss mailing list
> > > Ksummit-discuss@lists.linuxfoundation.org
> > > https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> > _______________________________________________
> > Ksummit-discuss mailing list
> > Ksummit-discuss@lists.linuxfoundation.org
> > https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> >

--WlEyl6ow+jlIgNUh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBAgAGBQJbkTIgAAoJEORje4g2cline2gQAJOAt3c13IUHaVphXjtyMXq1
2q7sVU5cdQn/C3WuCqScovqk9ZkWQRsbn+Jld6OtqcZeJBTzW9RQZoSVBFJJDGh4
kii+WwEPlMjpTVjc0oHq4I3vfOJuylmSucqJ1XVGoyupUpGw1uAxbbHnFbx91c5g
NV+3+kB69mU8VHO+NfaKfW7hlZbUYQqEK368rNppVfIGdRnRzuPlUHwu3bOxLHaN
voj0PfhXRAOpIuXMw1S55S6zzSXyYuBVimUQdnKsRh0ogfwnqxYZmP1XBPC8v/u1
0nSVLfS8dxocJd00Eso0IUsIPQ//fpQcWXvuW307o+6YdjVgTNtav3Kmx+jwbHfd
HaVZwOYScF89Ad2f0Bm5IXdLIAKS1vUhW3sws8ifgEI5aeLes0A4RfJYl3Pl2AS7
pKBQEdY9K7Zb/HKvoNGF1FVGMsjJ7adorkNDMz4BL8oVFTCAZTDFRI6l97SX4kuz
9kU+wv2RwrwRB2zag2dIyXkIH3I20qGM0tT9Vk9CbI3GN/HUggms1z7aJO/M3NCw
OevmmOvcpJZJ6NAJJ9TYurZUnW/aU8tsBmnjglwdefAjDWVIeONNce8vKViXtzBw
G7nZm5Bmol6VtRRD/hmcnxUGSyunDQY2qY4M+dT4cp19WdjLZFZZV2gbwfoArk+j
20CHmjDrt5LxJwb68ciT
=FKf4
-----END PGP SIGNATURE-----

--WlEyl6ow+jlIgNUh--
