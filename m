Return-Path: <James.Bottomley@HansenPartnership.com>
Message-ID: <1473175831.17204.29.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Mark Brown <broonie@kernel.org>, Laurent Pinchart
	<laurent.pinchart@ideasonboard.com>
Date: Tue, 06 Sep 2016 11:30:31 -0400
In-Reply-To: <20160906003532.GA3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160905111105.GW3950@sirena.org.uk>
	<20160905140327.a6wgdl3lr42nlww4@thunk.org> <9895277.d39OTXtlqC@avalon>
	<20160906003532.GA3950@sirena.org.uk>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-pqHgmFfCT9KwmyLzomdC"
Mime-Version: 1.0
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
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


--=-pqHgmFfCT9KwmyLzomdC
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2016-09-06 at 01:35 +0100, Mark Brown wrote:
> On Mon, Sep 05, 2016 at 05:22:59PM +0300, Laurent Pinchart wrote:
> > On Monday 05 Sep 2016 10:03:27 Theodore Ts'o wrote:
> > > This is why upstream-first is so darned important.  And why=20
> > > sloppy patches that break other architectures are a really bad=20
> > > idea, even if they are for a vendor-only BSP kernel....
>=20
> You're preaching to the converted here but just telling everyone over
> and over again that they're doing a terrible job isn't helping=20
> anything. It's not offering any sort of constructive suggestion for=20
> how to improve the situation that engages with the reality on the
> ground.

OK, so how do we move forwards?  Everyone who remembers the 2.4->2.6
transition is convinced of upstream first because it was impossible to
forward port the patch sets.

However, with the 2.6 release methodology, you have much smaller patch
sets and we have a much more incremental release strategy, meaning you
don't have this massive (2 year) gap between upports.  I think it's
arguable that our change in release strategy coupled with you getting
enough stuff upstream supports vendors who want to target a stable tree
because the patch difference is big but not that huge to upport.

So there's probably a couple of things we could do about this

   1. Nothing. =C2=A0Say it's working about as well as can be expected for
      embedded and stop worrying.
   2. Accept that the pain will never be great enough and approach from a
      process view point instead. =C2=A0Perhaps changing the acceptance
      criteria for the base tree to make it harder to get features in
      making it less painful to get them upstream and then backported?
   3. Increase the pain. =C2=A0Not sure I like this, but in theory, we coul=
d
      churn the upstream API to increase the pain of upports, but it would
      also cause a lot of issues with backports.

James




--=-pqHgmFfCT9KwmyLzomdC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJXzuEXAAoJEAVr7HOZEZN4GvoP/jl4xpEkWp+0lPtlzQVKPJRp
aCvygEI/RUNXPLOQBfh+yTpy1Kn9R3Ula5iO4lX7ke+vMpcDMVB8qVbH4twEz70u
+kfR+qA9K9ddBgt1KYIUcbLDIMiT48sRJv5xeH/5LAmYrN+ZCawVuTNT6wT92IDR
HuvJSQZhOAV9/KbMHMUElAvXiA2kkH2kFoZiG1EHvZ94rWtPmKYLrYuksnu48DYG
M2VFoEkRkpmXk7W9mWfsJaFrqP1c1wYsNPCsbZzh942V+RsRg68xxXS0X8yIrDHE
oUA38Hh2hnL3enLGRKyMDi51mRSDkSGl9GpS+Uff0kOwRH8Bwb17we/RQGNS3SGk
rC1w+NTvjsvwJIrivwMfNHxVaDogT95cG1bn56UNqBLp/t3pONQM3uG/1TrPbYhU
tW79a95WQ2VU5MwhGyzjxXIUuVOsuF7P7hGNnpBCN0RuNXq0EMvcbDmKv1Y3FQ/c
rW0Zu8LTRmXMhCJooi17VHrO2KnaiSX847j/rcQfRP1AuM0Yk+3aeOvIpjt6qopD
tSkXRJUOtCmk8GCY1T2j5ZARuBDiV3rtIFwrfFVQTVjlsJvd2PIpR+EXeuQaidAc
4l4tPqQDACu9dX2OZkW5bMoqiCFJITFkxFafvJDqZpZNuzzI3QLOHjkB6v9blfFg
fFPj32qLJRIoi8ZKQH19
=FTDr
-----END PGP SIGNATURE-----

--=-pqHgmFfCT9KwmyLzomdC--
