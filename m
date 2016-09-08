Return-Path: <neilb@suse.de>
From: NeilBrown <neilb@suse.com>
To: "Bird\, Timothy" <Tim.Bird@am.sony.com>, Mark Brown <broonie@kernel.org>
Date: Fri, 09 Sep 2016 08:38:07 +1000
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF053D73D3@USCULXMSG01.am.sony.com>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF053D4A52@USCULXMSG01.am.sony.com>
	<87twdv9l0v.fsf@notabene.neil.brown.name>
	<20160905110416.GV3950@sirena.org.uk>
	<87a8fm9dce.fsf@notabene.neil.brown.name>
	<ECADFF3FD767C149AD96A924E7EA6EAF053D73D3@USCULXMSG01.am.sony.com>
Message-ID: <8737la81bk.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
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

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 09 2016, Bird, Timothy wrote:

>
> First - thanks for responding to the patch.  I'm hopeful it will see move=
ment.
> My "pet peeve" (which *is* a bit histrionic, I suppose) is not so much ab=
out this
> individual patch (though IMHO it's taken longer to get worked out than it=
 should have).
> Rather, I find it shocking that the mainline kernel is missing such a fun=
damental
> feature that is critical to mobile devices.  I brought this up at the ker=
nel summit
> last year (so it's not a new rant for me).  But basically, one can not ru=
n a mainline
> kernel on any phone that I'm aware of, and charge the device.

I think this is mischaracterizing the problem.
The problem isn't that the kernel is missing this fundamental feature.  The
problem is that it has multiple half-way attempts to support this
functionality, but they are inconsistently implemented and bordering on
incoherent.

There is a usb notifier which allows other drivers, such as power
managers, to be told when a cable is attached to a USB port.  That is
enough to get basic charger functionality working.  But not all phys
send a notification and those that do, don't do it in a consistent way.
There is also extcon, which some phys use to report a cable, but not
all.  It provides more details of the cable, but cannot report anything
about a current limit negotiated with a host.

So you certainly can make this work with mainline (I've done it)
without any extra infrastructure.

If it were me doing this work, I'd clean up the current infrastructure
first and make sure it was used consistently, and documented coherently.

The current patchset isn't exactly adding a third way to do things, but
it is adding stuff without cleaning up what is currently there.  This
won't make the code less messy.

NeilBrown

>
> This means that hobbyists are locked out of experimenting with mainline o=
n their
> devices (unless they have the fortitude to manually swap batteries, or sw=
itch to
> a vendor kernel when they need to charge).  IMHO this is just too much of=
 a burden.
> I mean, you might expect that some functionality of the phone might be mi=
ssing if
> you went all-mainline, or pure open source (like proprietary camera modul=
es, or NFC
> support).  You'll probably not have access to trivial things like the tou=
ch screen or=20
> display ;-).  But sheesh - to not have your device last longer than a few=
 hours before
> you have to do some kludgy work-around, if you want to use mainline on it?
> That's retarded.
>
> IMHO this is blocking SoC mainlining efforts by non-vendor people more th=
an any other
> single issue.
>
> </rant>
>  -- Tim

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJX0ehQAAoJEDnsnt1WYoG5T2YP/A8BcaYqDMdOPVeCBBloZ6J2
DpBkK5xjwiQyKVWIWQ/zhAHueAwjmtHWPEfsFzymFOXx7qT+S5SE5Xi7cuFIBsb7
JmVOuvtIl0AUyhr/JQ4sF3rQlXhjqdEcsnp9bf0PFYKRCoq7GlFdibYTvzpB3PRj
TjQcWI46lz7t1HWGYTwzDC7shKsQG/5vADiHDPCLwaOqjbEGs9g/05qtgjctwGM/
h+PUceTjEGxNuh5olASxcSEMrpI4iQNuTtfqCQWKsI/jBGdllt+AqJDe3j7sIVl8
NL4cgA3Xf03CIIrQtEnqDteUevagwrv3PVG/FvQ4jqpZe91LqQRRaCImFFLJi/WR
VC0TiEExamPj34FuFqoeKi98RAKEI5lNgpc2HiR/IR5oBeWumBrcpgpEhP6UiQ5u
mBz9wI/y/raGnoRRBpuwWS4vhZiVwG/0H9Zic7JiqL44XjQ0VYfswj/HCl8XokK1
qb1Ok4A2MnYib7BPo1R/LQe6eX1NDfJuvN490ppjfzPk68OC0Rn/9V8ISIeAujJl
JlmCpyV67BfJ7GfElZap+LKTmJNJbUCc9jy1e6XMES2hgW5GiOmrMB3K/dEJeJE5
URdFvf1eJt+sSsoZ7vca/hu1+W06q0/5OQZvG3zkGXI8Z4uHioD41g8k1v/Cp7WP
do3zQNDkr7paTkskOGsi
=0Xd6
-----END PGP SIGNATURE-----
--=-=-=--
