Return-Path: <broonie@sirena.org.uk>
Date: Tue, 13 Sep 2016 11:38:14 +0100
From: Mark Brown <broonie@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20160913103814.GQ27946@sirena.org.uk>
References: <57C78BE9.30009@linaro.org>
	<20160902134711.movdpffcdcsx6kzv@thunk.org>
	<EA994DF73240CA4588A99BF072DB2840021207D3@BPXM12GP.gisp.nec.co.jp>
	<20160910120055.gr2cvad7efwci4f2@thunk.org>
	<20160912162714.GC27946@sirena.org.uk>
	<20160912171450.GB27349@kroah.com>
	<20160912234548.GL27946@sirena.org.uk>
	<20160913061931.GC11047@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d5xRKMqY7hkGAt+u"
Content-Disposition: inline
In-Reply-To: <20160913061931.GC11047@kroah.com>
Cc: Tsugikazu Shibata <tshibata@ab.jp.nec.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [LTSI-dev] [Stable kernel] feature
 backporting collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--d5xRKMqY7hkGAt+u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 13, 2016 at 08:19:31AM +0200, Greg KH wrote:
> On Tue, Sep 13, 2016 at 12:45:48AM +0100, Mark Brown wrote:

> > tightrope with their schedule and trying to predict LTS.  What you did
> > with v4.4 (announcing during the -rc cycle) addresses this, as does what
> > you've done this year pulling that even further forwards. =20

> 4.4 was a total supprise to everyone, including me, it came out during
> the kernel summit discussions, and we decided right there in the middle
> of my talk to do it.  So there was no "preannouncement" possible there.

It was still a preannouncement - you announced before v4.4 came out as
opposed to after.

> > If things don't work out with what you're doing with the preannouncement
> > it might be good to comment on that that and say you intend to do
> > something different next year, but hopefully everything will be fine of
> > course.

> I did that here as well, 4.9 was announced _way_ in advance.

Sure.

> I really don't know what else I can do here to make it easier.
> Companies can always talk to me, and lots do, in trying to figure out

Some indication of your plans for handling this next year would be good
(probably after the next LTS has actually appeared and you can evaluate
how that's gone).  Moving things earlier is unlikely to ever be a
problem but if you decide to move things substantially later then that
might get people nervous.

> what the next kernel will be.  I work with them to show that it doesn't
> really matter _what_ kernel is picked, if their code is merged upstream,
> or ready to be merged, the specific kernel number doesn't matter.

In the cases I'm aware of it's more about knowing when the kernel will
appear so people can commit to integration activities than the version
number itself - I've never really heard "I need version X", it's always
been "when will we know which version Greg has chosen?".

--d5xRKMqY7hkGAt+u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX19cVAAoJECTWi3JdVIfQauEH+wcMZXxFajfBGjCWCHmQ5zW5
9YvzsptCpt9V6OQuLsEwxAJy2BfVHmyscXyn3pRZEM/d4w4BBdG1XAEFkuuj1Bfd
gXMA6yWKSTX1hFx7OeFDU+WcsYVRwedBH7oXDL8Ive+OC1kwmeX7Yt29Emp6DX0i
PJp1RovWBNuj1t3kkOMVP/9La3x4XypOccb1HNYBKCbRWTE4kqgvY+p8HpBzW3rT
zAW62ii7ntXVDYBQCao8qwqW8eoXphzrLGcbktVuhbGUsMWL71DS3di0kwibrURb
TrYTfM7USg8PMzeIN6zYnwBpuWTMRdpKEqO1xUumSf27PXAR1ckRWemcDLEAX+Q=
=HlTI
-----END PGP SIGNATURE-----

--d5xRKMqY7hkGAt+u--
