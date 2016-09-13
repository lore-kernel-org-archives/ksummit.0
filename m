Return-Path: <broonie@sirena.org.uk>
Date: Tue, 13 Sep 2016 20:02:35 +0100
From: Mark Brown <broonie@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20160913190235.GS27946@sirena.org.uk>
References: <EA994DF73240CA4588A99BF072DB2840021207D3@BPXM12GP.gisp.nec.co.jp>
	<20160910120055.gr2cvad7efwci4f2@thunk.org>
	<20160912162714.GC27946@sirena.org.uk>
	<20160912171450.GB27349@kroah.com>
	<20160912234548.GL27946@sirena.org.uk>
	<20160913061931.GC11047@kroah.com>
	<20160913103814.GQ27946@sirena.org.uk>
	<20160913120942.GA18307@kroah.com>
	<CA+5PVA62NMb5dziRohcSPat5mU-yGzNrDuUFhTYr8Qip306VAg@mail.gmail.com>
	<20160913131249.GA8470@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qoa3+4LHNtB0VmQh"
Content-Disposition: inline
In-Reply-To: <20160913131249.GA8470@kroah.com>
Cc: Tsugikazu Shibata <tshibata@ab.jp.nec.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	Josh Boyer <jwboyer@fedoraproject.org>,
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


--qoa3+4LHNtB0VmQh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 13, 2016 at 03:12:49PM +0200, Greg KH wrote:

> People say "look, we are using an LTS kernel in our product, all must be
> good!" but if they don't update it, it's broken and insecure, and really
> no better than if they were using 3.10.0 in a way.

Do they actually say that?  I can't recall that being a selling point
for any of the devices I've bought...  For Android Google are now
talking about delivering security updates and advertising their
frequency a lot more but I don't recall LTS being part of that sell.

> But if we didn't provide an LTS, would companies constantly update their
> kernels to newer releases to keep up with the security and bugfixes?
> That goes against everything those managers/PMs have ever been used to
> in the past, yet it's actually the best thing they could do.  It's a
> long road of education and doing work on their part to get test
> frameworks set up to be able to qualify "larger" upgrades.  It also
> requires that their chip vendor not add 1.5 million lines of code to
> their kernel, rewrite the scheduler, and duplicate all existing drivers
> with a "-2" suffix.

I'm not sure I'd go so far as saying everyone should be tracking
mainline in production - the enteprise distros and their users haven't
been persuaded yet either.  It's definitely a useful goal to get people
doing that though, especially for longer lived devices it just makes so
much more sense.  In the Android world we already see some vendors
shipping an entirely new userspace version which ought to be at least as
risky as a new kernel, though there's also going to be rather more
direct user demand pushing it.

> Ok, this is rambling, and something I've been mulling over for a while
> now.  I'm working with some people at some of the chip companies to see
> about how we can do this better, hopefully the work of education,
> testing, and other assurances can help everyone out in the end, and
> start to resolve these issues, but it's going to be slow going.

The issues around deploying updates into the field are at least as much
if not more of an issue at the system integrator level and potentially
more directly marketable for them - are you talking to them as well?

--qoa3+4LHNtB0VmQh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX2E1KAAoJECTWi3JdVIfQ8VAH/01Dnw6G8kntSextpvTAMPdq
8x+0RjqAmLp7eG+sbuZIQ6TYuXW6GiDPq/QGjPnsJYqLPFXNx6NPqvj4izO610nr
qe3gsdCcwAgXGyWzxlbZVdYIbSOBdhC6Dl3GXwfZnmfzPvSfOpbT3iaXeOw2zDnD
2liZxoSFIs1JUJkS9uR3Od/TUH1SplrAc4ZH85bI+3s3YlgOUYvoMHoVVnbZbxQ/
sAeqXxmsH4FQZw+x1qMELvL6dmNmC9yIKi4XuHnaAONs4ANobZNqA72fX5vxC69g
0dW5dHzJ/Lpb55IeIJC8Gy2lXKgkduA6MjWB8QF20bBhuxFGNHRKw9vhAM7UanA=
=U5ah
-----END PGP SIGNATURE-----

--qoa3+4LHNtB0VmQh--
