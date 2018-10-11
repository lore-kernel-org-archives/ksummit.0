Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D4C05DA2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 11 Oct 2018 02:37:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7264334F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 11 Oct 2018 02:37:09 +0000 (UTC)
Date: Wed, 10 Oct 2018 23:37:05 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20181010233705.12f0f727@coco.lan>
In-Reply-To: <1539202180.12644.10.camel@HansenPartnership.com>
References: <1539202053.12644.8.camel@HansenPartnership.com>
	<1539202180.12644.10.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [PATCH v2 2/3] code-of-conduct: Strip the
 enforcement paragraph pending community discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Wed, 10 Oct 2018 13:09:40 -0700
James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:

> Significant concern has been expressed about the responsibilities outline=
d in
> the enforcement clause of the new code of conduct.  Since there is concern
> that this becomes binding on the release of the 4.19 kernel, strip the
> enforcement clauses to give the community time to consider and debate how=
 this
> should be handled.
>=20
> Note, this patch is expected to be the starting point for a discussion no=
t the
> end point, so there is an expectation that an Enforcement section will be
> added again to our code of conduct once we have sufficient community cons=
ensus
> on what it should say.
>=20
> Fixes: 8a104f8b5867c682 ("Code of Conduct: Let's revamp it.")
> Acked-by: Shuah Khan <shuah@kernel.org>
> Acked-by: Guenter Roeck <linux@roeck-us.net>
> Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Reviewed-by: Alan Cox <alan@llwyncelyn.cymru>
> Signed-off-by: James Bottomley <James.Bottomley@HansenPartnership.com>

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>

I still think that this series should contain a 4th patch removing
"responsibilities" with that text proposed by Alan.

E. g. instead of:

	Maintainers have the right and responsibility to remove, edit, or reject

it should say, instead:

	Maintainers should remove, edit or reject

>=20
> ---
>=20
> v2: Added additional commit paragraph clarifying we do expect eventually =
to
>     have an enforcement section (as requested by Shuah)
> ---
>  Documentation/process/code-of-conduct.rst | 15 ---------------
>  1 file changed, 15 deletions(-)
>=20
> diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/pr=
ocess/code-of-conduct.rst
> index aa40e34e7785..4dd90987305b 100644
> --- a/Documentation/process/code-of-conduct.rst
> +++ b/Documentation/process/code-of-conduct.rst
> @@ -59,21 +59,6 @@ address, posting via an official social media account,=
 or acting as an appointed
>  representative at an online or offline event. Representation of a projec=
t may be
>  further defined and clarified by project maintainers.
> =20
> -Enforcement
> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> -
> -Instances of abusive, harassing, or otherwise unacceptable behavior may =
be
> -reported by contacting the Technical Advisory Board (TAB) at
> -<tab@lists.linux-foundation.org>. All complaints will be reviewed and
> -investigated and will result in a response that is deemed necessary and
> -appropriate to the circumstances. The TAB is obligated to maintain
> -confidentiality with regard to the reporter of an incident.  Further det=
ails of
> -specific enforcement policies may be posted separately.
> -
> -Maintainers who do not follow or enforce the Code of Conduct in good fai=
th may
> -face temporary or permanent repercussions as determined by other members=
 of the
> -project=E2=80=99s leadership.
> -
>  Attribution
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =20



Thanks,
Mauro
