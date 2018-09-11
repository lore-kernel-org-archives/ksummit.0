Return-Path: <lukma@denx.de>
Date: Tue, 11 Sep 2018 11:37:25 +0200
From: Lukasz Majewski <lukma@denx.de>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20180911113725.5d91b945@jawa>
In-Reply-To: <CACRpkdYi66Lgq7OAGchQyfqEUUGVKV9m3YzL6t_nS+Hm0G2rRg@mail.gmail.com>
References: <trinity-b7dcc7ee-84eb-4ba9-ab94-b2936551a388-1536588284133@3c-app-gmx-bs33>
	<CACRpkdYk1JKEQ=bumrxRk1eJ97xkQti8E1MRJ_xxen+dZ1a1Xw@mail.gmail.com>
	<CAK8P3a0a=eAwAg5i6z-5Hs56BXKP3CSsv2383zuMh6TrrDPwug@mail.gmail.com>
	<CACRpkdYi66Lgq7OAGchQyfqEUUGVKV9m3YzL6t_nS+Hm0G2rRg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/YxXvblU3AsRXkNJ13QQUifZ";
	protocol="application/pgp-signature"
Cc: Ksummit-discuss@lists.linuxfoundation.org,
	Jonas Jensen <jonas.jensen@gmail.com>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Deprecation / Removal of
 old hardware support
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/YxXvblU3AsRXkNJ13QQUifZ
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Linus,

> Including Alexander Sverdlin, Lukasz Majewski  and Jonas
> Jensen here, they may or may not be able to share some of
> their industrial IoT experience. (Contract terms with vendors
> may make it necessary to stay silent sometimes.)

Thank you for putting me on CC.

>=20
> On Mon, Sep 10, 2018 at 11:41 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Mon, Sep 10, 2018 at 5:35 PM Linus Walleij
> > <linus.walleij@linaro.org> wrote: =20
>=20
> > > My ARMv4 is another example, but I can point at new devices
> > > beging deployed as we speak, using that ISA, even though it is
> > > from 1999. So it has many active users (and maintainers). =20
> >
> > Note that even though gcc is dropping ARMv4 support from new
> > compilers, you can still use old toolchains, and there are tricks to
> > make ARMv4T binary code work on ARMv4. However, if gcc
> > ever stops supporting ARMv4T, this becomes a problem. My guess
> > is that will take another 10 years though, and we might have
> > removed some or all of the individual ARMv4 platforms by then. =20
>=20
> ARMv4 is becoming a trouble, not that it is hard to maintain,
> actually we're on top of things there. The problem is that among
> the FA526 systems from Faraday and the ARMv4T in EP93xx
> there are very serious IoT deployments that have been going
> on for soon 15 years and continuing.

The ARMv4T shall be supported. The 15 years may be a bare minimum for
some "heavy duty/industrial" systems...

It may happen that the same HW (certified already) will be used for 30+
years (with the SW BSP replaced a few times).

>=20
> New MOXA ART ARMv4 FA526 systems are being deployed
> in buildings across the planet as we speak. They just replaced
> one in the office block where I sit, that is how I got to know.
>=20
> These are mostly for ventilation and
> similar systems but also heavy duty from Liebherr controlling
> unspecified hydraulic systems. The ventilation systems are
> definately Internet-connected, I don't know about the others.

The "unspecified hydraulic systems" do have a way to update the SW
(which is already done).

>=20
> These pose an increasing security threat, and for that reason
> I personally feel it is irresponsible to remove the option to
> create new kernels and upgrade these devices.

Frankly speaking the possibility to have the new kernel in a relatively
easy (and cheap) way was a strong motivator to add support to mainline.

>=20
> I think for depreciation one has to be aware that some archs
> used in IoT deployments have life cycles of 20-30 or more years,
> whereas some tablet or handset SoCs may be something like
> 5 years maximum before maintainers get annoyed that you
> even use them.
>=20
> Sometimes I get the feeling that people focused on desktops
> or servers suffer from velocitate (speed blindness) and think
> everybody is like them. (Well don't we all.)

I do must agree here. In general ARM9 (v4T) will stay with us for a
long, long time.

In the kernel community we pose a lot of attention to security (for
example the prompt reaction on meltdown/spectre), but in the same time
we tend to forget about the "long lived" devices and force their
maintainers to use 2.6.x kernels..... (or even 2.4.x).

>=20
> With all the hoopla about IoT in the business right now since
> a year or two back, the question of their extremely long life
> cycle and effect on development has not really been
> considered AFAICT those are some of the most important
> systems to keep maintained.

+1

>=20
> Yours,
> Linus Walleij




Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de

--Sig_/YxXvblU3AsRXkNJ13QQUifZ
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAluXjNUACgkQAR8vZIA0
zr1MHQf9HEqIFzJCkLrJatzop1G1CmMj79Na2Xi4okPTC1EGyJX++fDNKKAvFibg
dm1RAWrWr/lI+vk2JcldpU6iwoXMvDd5xEpkqlM1Xvi32Ff3yPe7DkSJJpabn9Xl
C5gzzapyhsMfRxmaEBQNVjeSl4B1BEYfsgJE3NqSPY6U8k3vJ56hLypq4Mo0ifhl
ITHn+1WxWaMvra8Dw3rE9CC2IaALWa3py8qcPrjIKUS/apjNzXpxcDNw/Qutbvjb
ftS0xPRy2PyibMX5HcX+aF7T4Q0ynn3Mj8uGhvrBT25osWhZ3t3TA1mBjtsLpqTG
1g8CYgpgcBgGTYCFlDSIaCsa2Dgv3A==
=VI1d
-----END PGP SIGNATURE-----

--Sig_/YxXvblU3AsRXkNJ13QQUifZ--
