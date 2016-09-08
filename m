Return-Path: <Tim.Bird@am.sony.com>
From: "Bird, Timothy" <Tim.Bird@am.sony.com>
To: NeilBrown <neilb@suse.com>, Mark Brown <broonie@kernel.org>
Date: Thu, 8 Sep 2016 18:33:16 +0000
Message-ID: <ECADFF3FD767C149AD96A924E7EA6EAF053D73D3@USCULXMSG01.am.sony.com>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF053D4A52@USCULXMSG01.am.sony.com>
	<87twdv9l0v.fsf@notabene.neil.brown.name>
	<20160905110416.GV3950@sirena.org.uk>
	<87a8fm9dce.fsf@notabene.neil.brown.name>
In-Reply-To: <87a8fm9dce.fsf@notabene.neil.brown.name>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [LTSI-dev] [Stable kernel]
	feature	backporting collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> -----Original Message-----
> From: ltsi-dev-bounces@lists.linuxfoundation.org [mailto:ltsi-dev-
> bounces@lists.linuxfoundation.org] On Behalf Of NeilBrown
> Sent: Monday, September 05, 2016 3:44 PM
> To: Mark Brown <broonie@kernel.org>
> Cc: ltsi-dev@lists.linuxfoundation.org; ksummit-
> discuss@lists.linuxfoundation.org; Levin, Alexander
> <alexander.levin@verizon.com>; James Bottomley
> <James.Bottomley@HansenPartnership.com>
> Subject: Re: [LTSI-dev] [Ksummit-discuss] [Stable kernel] feature backpor=
ting
> collaboration
>=20
> On Mon, Sep 05 2016, Mark Brown wrote:
>=20
> > [ Unknown signature status ]
> > On Mon, Sep 05, 2016 at 11:45:52AM +1000, NeilBrown wrote:
> >> On Sat, Sep 03 2016, Bird, Timothy wrote:
> >
> >> > Where we are now with some of these SoCs is at millions of lines of
> >> > code out-of-tree.  It's being reduced, slowly, but there are still
> >> > significant areas where the mainline kernel just doesn't have the
> >> > support needed for shipping product. My pet peeve is support for
> >> > charging over USB, where Linaro has had a patch set
> >> > being stalled and/or ignored by the USB maintainer for 2 years!!
> >
> >> Do you have a link to that?  I have an interest in charging over USB.
> >
> > This is it:
> >
> >     https://lkml.org/lkml/2016/7/1/35
> >
> > it's been more like one year than two and there has been progress but
> > there's also been an awful lot of latency in the process too.
>=20
> Really?  That is worthy of a "pet peeve"?
> The patch set does highlight an important area of missing functionality,
> but doesn't (IMO) display much understanding of the problem space.  I'm
> not surprised it hasn't made progress.

First - thanks for responding to the patch.  I'm hopeful it will see moveme=
nt.
My "pet peeve" (which *is* a bit histrionic, I suppose) is not so much abou=
t this
individual patch (though IMHO it's taken longer to get worked out than it s=
hould have).
Rather, I find it shocking that the mainline kernel is missing such a funda=
mental
feature that is critical to mobile devices.  I brought this up at the kerne=
l summit
last year (so it's not a new rant for me).  But basically, one can not run =
a mainline
kernel on any phone that I'm aware of, and charge the device.

This means that hobbyists are locked out of experimenting with mainline on =
their
devices (unless they have the fortitude to manually swap batteries, or swit=
ch to
a vendor kernel when they need to charge).  IMHO this is just too much of a=
 burden.
I mean, you might expect that some functionality of the phone might be miss=
ing if
you went all-mainline, or pure open source (like proprietary camera modules=
, or NFC
support).  You'll probably not have access to trivial things like the touch=
 screen or=20
display ;-).  But sheesh - to not have your device last longer than a few h=
ours before
you have to do some kludgy work-around, if you want to use mainline on it?
That's retarded.

IMHO this is blocking SoC mainlining efforts by non-vendor people more than=
 any other
single issue.

</rant>
 -- Tim
