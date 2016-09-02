Return-Path: <alexander.levin@verizon.com>
From: "Levin, Alexander" <alexander.levin@verizon.com>
To: Alex Shi <alex.shi@linaro.org>
Date: Thu, 1 Sep 2016 21:25:31 -0400
Message-ID: <20160902012531.GB28461@sasha-lappy>
References: <57C78BE9.30009@linaro.org>
In-Reply-To: <57C78BE9.30009@linaro.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mark Brown <broonie@linaro.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
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

On Wed, Aug 31, 2016 at 10:01:13PM -0400, Alex Shi wrote:
> Hi All,
>=20
> I am a Linaro stable kernel maintainer. Our stable kernel is base on LTS
> plus much of upstream features backporting on them. Here is the detailed
> info of LSK: https://wiki.linaro.org/LSK
> https://git.linaro.org/?p=3Dkernel/linux-linaro-stable.git
>=20
> These kind of backporting features are requested by many LSK members
> which most are leading ARM product vendors. LSK target on the feature
> backporting collaboration, to reduce the duplicate work on that. Current
> LTSI: https://ltsi.linuxfoundation.org/what-is-ltsi, has
> similar target for backporting collocation. but there are still couples
> problems.
>=20
> 1, LTSI is focus on board support more than feature backporting
>=20
> 2, ltsi kernel version 3.10/3.14/4.1 is older than LTS and LSK 3.18/4.1/4=
.4.
>=20
> 3, merge everything together isn't good for some users and can not give
> user option to select preferred kernel feature. On the contrary, each of
> feature backported separately on latest LTS in LSK, user can just pick
> their wanted features and merge them for their own kernel.
>=20
> 4, all vendor specific driver in one branch get complains and developing
> status make it hard to handle changes in a fast-forward stable kernel.
>=20
> As to LSK, although most feature are ARM related, but LSK also provide
> some common feature which works on other archs, like cgroupv2, RO-vDSO,
> KASAN, PAX_USERCOPY, etc. I believe this common backporting is also
> useful for common industries.
> If so, could we call a better way for feature backporting collaboration?

I really disagree with this approach. I think that backporting board suppor=
t
like what LTSI does might make sense since it's self contained, but what LS=
K
does is just crazy.

Stable kernels have very strict restrictions that are focused on not taking
commits that have high potential to cause unintended side effects, incorrec=
t
interactions with the rest of the kernel or just introduce new bugs.

Mixing in new features that interact with multiple subsystems is a recipe f=
or
disaster. We barely pull off backporting what looks like trivial fixes, try=
ing
to do the same for more than that is bound be broken.

As an alternative, why not use more recent stable kernels and customize the
config specifically for each user to enable on features that that specific
user wants to have.

The benefit here is that if used correctly you'll get to use all the new sh=
iny
features you want on a more recent kernel, and none of the things you don't
want. So yes, you're upgrading to a newer kernel all the time, but if I
understant your use-case right it shouldn't matter too much, more so if
you're already taking chances on backporting major features yourself.

--=20

Thanks,
Sasha=
