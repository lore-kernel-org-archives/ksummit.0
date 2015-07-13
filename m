Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C7F59B13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 23:01:21 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EEC0110A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 23:01:20 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 14 Jul 2015 02:01:40 +0300
Message-ID: <1682862.sCPqlQknzg@avalon>
In-Reply-To: <201507132120.33180.PeterHuewe@gmx.de>
References: <201507130038.01474.PeterHuewe@gmx.de>
	<CACVxJT9WjwWZUQWPk_jXOLOZsTh8HdGuKWr1ri3q02fEaFLejA@mail.gmail.com>
	<201507132120.33180.PeterHuewe@gmx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE-TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Monday 13 July 2015 21:20:32 Peter H=FCwe wrote:
> Am Montag, 13. Juli 2015, 11:47:23 schrieb Alexey Dobriyan:
> > On Mon, Jul 13, 2015 at 1:38 AM, Peter H=FCwe <PeterHuewe@gmx.de> w=
rote:
> > > as we talked about recruiting in the other thread I realized that=
 one
> > > thing that might reduce the entrance barrier a bit (apart from to=
oling
> > > and flow) would be proper documentation.
> >=20
> > Newbies should not write documentation because they, by definition,=

> > have little knowledge of the code. It will lead to many, many usele=
ss
> > and redundant comments like below whose only purpose is stealing
>=20
> > vertical whitespace:
> While I agree with your 'stupid documentation is stupid' argument, I =
tend to
> somewhat disagree about that newbies should not write documentation.
>=20
> By newbies I do not mean someone new to programming - that of course =
makes
> no sense - but why shouldn't a experienced c-programmer who is curren=
tly
> figuring out how the kernel works not document stuff along the way?

I fully agree, as I've gone through that process when I wrote my first =
DRM/KMS=20
driver, and found it very valuable.

Writing documentation is a very good way to try and understand a subsys=
tem for=20
newcomers. It's time consuming though, which goes in the way of the tig=
ht=20
schedules everybody seems to have. Furthermore employers are unfortunat=
ely not=20
usually keen to fund documentation, especially when the schedule is tig=
ht.

On the other hand, I realized that writing down my findings while I was=
=20
exploring the DRM subsystem was a great way to learn about it. It then =
took a=20
bit of time to format my notes into proper documentation, but less than=
=20
writing everything from scratch in one go. Taking notes also help struc=
turing=20
the documentation in a more natural way.

The picture wasn't all bright though. The documentation patch I submitt=
ed was=20
of course not 100% complete, but the problem came later when the subsys=
tem got=20
rearchitectured without updating the documentation. Code changes were m=
erged=20
with kerneldoc comments to document functions, but the global DocBook=20=

architecture documentation was left untouched (except for integration o=
f=20
kerneldoc as API reference). The end result is that the DRM/KMS subsyst=
em went=20
from having a reasonable architecture documentation to being undocument=
ed.=20
Needless to say my motivation as a documentation writer for DRM/KMS too=
k a big=20
blow.

This being said, not everything is dark either. The V4L2 subsystem, for=
=20
instance, does a pretty good job at keeping its documentation up-to-dat=
e. The=20
maintainers and core developers always nack code changes that do not co=
me with=20
related documentation updates. This proved to be effective, but require=
s the=20
rule to be strictly enforced. I wonder if this could scale to other=20
subsystems, and what kind of other incentives we could create.

> I think that's much better than fixing whitespaces and long lines.

--=20
Regards,

Laurent Pinchart
