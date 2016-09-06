Return-Path: <broonie@sirena.org.uk>
Date: Tue, 6 Sep 2016 01:57:44 +0100
From: Mark Brown <broonie@kernel.org>
To: NeilBrown <neilb@suse.com>
Message-ID: <20160906005744.GB3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF053D4A52@USCULXMSG01.am.sony.com>
	<87twdv9l0v.fsf@notabene.neil.brown.name>
	<20160905110416.GV3950@sirena.org.uk>
	<87a8fm9dce.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="djTb5EnuS5qMpC9h"
Content-Disposition: inline
In-Reply-To: <87a8fm9dce.fsf@notabene.neil.brown.name>
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>
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


--djTb5EnuS5qMpC9h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 06, 2016 at 08:44:01AM +1000, NeilBrown wrote:
> On Mon, Sep 05 2016, Mark Brown wrote:

> >> > support needed for shipping product. My pet peeve is support for
> >> > charging over USB, where Linaro has had a patch set
> >> > being stalled and/or ignored by the USB maintainer for 2 years!!

> >> Do you have a link to that?  I have an interest in charging over USB.

> > This is it:

> >     https://lkml.org/lkml/2016/7/1/35

> > it's been more like one year than two and there has been progress but
> > there's also been an awful lot of latency in the process too.

> Really?  That is worthy of a "pet peeve"?
> The patch set does highlight an important area of missing functionality,
> but doesn't (IMO) display much understanding of the problem space.  I'm
> not surprised it hasn't made progress.

> Maybe I should reply to the patch directly.

Yes, please - if we're just not providing feedback that's very
unhelpful, if there's problems then we should be saying so.  Not only
does it mean that there's no feedback that the submitters can use to
improve things the existence of an actively worked on patch series has a
chilling effect on other people who might want to work in the same area
but don't want to duplicate effort.  People do just not work on things
they see other people actively working on and pick some other task
instead, assuming the first thing they thought of will get taken care of
in due course.

Things do of course fall through the cracks or get delayed from time to
time so submitters should be prepared to handle that but equally it's
hard for people to improve without feedback.

--djTb5EnuS5qMpC9h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJXzhSGAAoJECTWi3JdVIfQZf0H/3YrMvSxsks/4kG3QNd5Stdr
nwLiyhn9dsG6VlzCxwR9GaA3pami4+Zn9dwji6IMhnO5RxBMGOb6yY5bfV/K+EPW
DxoEIRZ+FQzD9WybPxW7/9/Ev6xYhnL9M/vP4YzEMaej5XuPLECqkCRJrhw3w8pm
azYFHsHhRoRl3pHMawUDS5OF1YHaTTQvWO7AYnjhZi/FO2phcfdktnGVdfYhz0Cj
7XBXJ5x9IuEV4hpzP2ZGfT+eCWjmH+G5UyR7Oj97bpqncwWGpwnQrYaEJspkS0pD
Akb5rrPzFrkMd8w10jyP7Z9CtbYvN8cM35eS8HTv5GDoV+s663kJtrapRaJq2uU=
=MunH
-----END PGP SIGNATURE-----

--djTb5EnuS5qMpC9h--
