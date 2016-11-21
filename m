Return-Path: <mchehab@s-opensource.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 99F12910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 21 Nov 2016 14:07:04 +0000 (UTC)
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 21E5ACB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 21 Nov 2016 14:07:04 +0000 (UTC)
Date: Mon, 21 Nov 2016 12:06:57 -0200
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <20161121120657.31eaeca4@vento.lan>
In-Reply-To: <1479724781.8662.18.camel@sipsolutions.net>
References: <20161107075524.49d83697@vento.lan> <11020459.EheIgy38UF@wuerfel>
	<20161116182633.74559ffd@vento.lan> <2923918.nyphv1Ma7d@wuerfel>
	<CA+55aFyFrhRefTuRvE2rjrp6d4+wuBmKfT_+a65i0-4tpxa46w@mail.gmail.com>
	<20161119101543.12b89563@lwn.net>
	<1479724781.8662.18.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: ksummit-discuss@lists.linuxfoundation.org,
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] Including images on Sphinx documents
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Mon, 21 Nov 2016 11:39:41 +0100
Johannes Berg <johannes@sipsolutions.net> escreveu:

> On Sat, 2016-11-19 at 10:15 -0700, Jonathan Corbet wrote:
> >=C2=A0
> > I don't know what the ultimate source of these images is (Mauro,
> > perhaps you could shed some light there?). =20
>=20
> I'd argue that it probably no longer matters. Whether it's xfig, svg,
> graphviz originally etc. - the source is probably long lost. Recreating
> these images in any other format is probably not very difficult for
> most or almost all of them.

I did it already. I converted one image to Graphviz and the rest
to SVG.

>=20
> > Rather than beating our heads against the wall trying to convert
> > between various image formats, maybe we need to take a step
> > back.=C2=A0=C2=A0We're trying to build better documentation, and there =
is
> > certainly a place for diagrams and such in that
> > documentation.=C2=A0=C2=A0Johannes was asking about it for the 802.11 d=
ocs, and
> > I know Paul has run into these issues with the RCU docs as
> > well.=C2=A0=C2=A0Might there be a tool or an extension out there that w=
ould
> > allow us to express these diagrams in a text-friendly, editable
> > form?
> >=20
> > With some effort, I bet we could get rid of a number of the images,
> > and perhaps end up with something that makes sense when read in the
> > .rst source files as an extra benefit.=C2=A0 =20
>=20
> I tend to agree, and I think that having this readable in the text
> would be good.
>=20
> You had pointed me to this plugin before
> https://pythonhosted.org/sphinxcontrib-aafig/
>=20
> but I don't think it can actually represent any of the pictures.

No, but there are some ascii art images inside some txt/rst files
and inside some kernel-doc comments. We could either use the above
extension for them or to convert into some image. The ascii art
images I saw seem to be diagrams, so Graphviz would allow replacing
most of them, if not all.

> Some surely could be represented directly by having the graphviz source
> inside the rst file:
> http://www.sphinx-doc.org/en/1.4.8/ext/graphviz.html
>=20
> (that's even an included plugin, no need to install anything extra)

Yes, but it seems that the existing plugin mis some things that
the .. figure:: tag does, like allowing to specify the alternate and
placing a caption to the figure (or tables) [1].

Also, as SVG is currently broken on Sphinx for PDF output, we'll
need to pre-process the image before calling Sphinx anyway. So,
IMHO, the best for now would be to use the same approach for both
cases.

On my patchsets, they're doing both SVG and Graphviz handling via
Makefile, before calling Sphinx.

When we have the needed features either at Sphinx upstream or as a
plugin, we could then switch to such solution.

[1] Another missing feature with regards to that is that Sphinx
doesn't seem to be able to produce a list of figures and tables.
Eventually, the image extension (or upstream improvements) that
would implement proper support for SVG and Graphviz could also
implement support for such indexes.

> graphviz is actually quite powerful, so I suspect things like
> dvbstb.png can be represented there, perhaps not pixel-identically, but
> at least semantically equivalently.

Yes, but we'll still need SVG for more complex things. I actually
converted (actually, I rewrote) dvbstb.png as SVG.

> However, I don't think we'll actually find a catch-all solution, so we
> need to continue this discussion here for a fallback anyway - as you
> stated (I snipped that quote, sorry), a picture describing the video
> formats will likely not be representable in text.
>=20
> As far as my use-case for sequence diagrams is concerned, I'd really
> like to see this integrated with the toolchain since the source format
> for them is in fact a text format.

Yes, for sure having support for Graphviz will be very useful.

Thanks,
Mauro
