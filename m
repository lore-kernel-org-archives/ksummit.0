Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6B3037C9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 20:23:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CF7657E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 20:23:06 +0000 (UTC)
Date: Mon, 8 Oct 2018 17:23:03 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20181008172303.4f06cd94@coco.lan>
In-Reply-To: <1538861851.4088.7.camel@HansenPartnership.com>
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<1538861851.4088.7.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [PATCH 2/2] code-of-conduct: Strip the
 enforcement paragraph pending community discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Sat, 06 Oct 2018 14:37:31 -0700
James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:

> Significant concern has been expressed about the responsibilities outline=
d in
> the enforcement clause of the new code of conduct.  Since there is concern
> that this becomes binding on the release of the 4.19 kernel, strip the
> enforcement clauses to give the community time to consider and debate how=
 this
> should be handled.
>=20
> Signed-off-by: James Bottomley <James.Bottomley@HansenPartnership.com>


With my maintainer's hat, my main concern would be solved with this hunk:

diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/proc=
ess/code-of-conduct.rst
index ab7c24b5478c..f07d51129d4b 100644
--- a/Documentation/process/code-of-conduct.rst
+++ b/Documentation/process/code-of-conduct.rst
@@ -43,7 +43,7 @@ Maintainers are responsible for clarifying the standards =
of acceptable behavior
 and are expected to take appropriate and fair corrective action in respons=
e to
 any instances of unacceptable behavior.
=20
-Maintainers have the right and responsibility to remove, edit, or reject
+Maintainers may remove, edit, or reject
 comments, commits, code, wiki edits, issues, and other contributions that =
are
 not aligned to this Code of Conduct, or to ban temporarily or permanently =
any
 contributor for other behaviors that they deem inappropriate, threatening,

The previous text seems too much legal for my taste.

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

After looking at the comments, I would just keep TAB as a point of contact
for CoC violations:

diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/proc=
ess/code-of-conduct.rst
index ab7c24b5478c..fa908dbff51c 100644
--- a/Documentation/process/code-of-conduct.rst
+++ b/Documentation/process/code-of-conduct.rst
@@ -59,20 +59,12 @@ address, posting via an official social media account, =
or acting as an appointed
 representative at an online or offline event. Representation of a project =
may be
 further defined and clarified by project maintainers.
=20
-Enforcement
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+Reports
+=3D=3D=3D=3D=3D=3D=3D
=20
 Instances of abusive, harassing, or otherwise unacceptable behavior may be
 reported by contacting the Technical Advisory Board (TAB) at
-<tab@lists.linux-foundation.org>. All complaints will be reviewed and
-investigated and will result in a response that is deemed necessary and
-appropriate to the circumstances. The TAB is obligated to maintain
-confidentiality with regard to the reporter of an incident.  Further detai=
ls of
-specific enforcement policies may be posted separately.
-
-Maintainers who do not follow or enforce the Code of Conduct in good faith=
 may
-face temporary or permanent repercussions as determined by other members o=
f the
-project=E2=80=99s leadership.
+<tab@lists.linux-foundation.org>.
=20
 Attribution
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Keeping the rest implicit. This can be revisited after having more
discussions.

Thanks,
Mauro

-

Both hunks are shown below.


diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/proc=
ess/code-of-conduct.rst
index ab7c24b5478c..df44867a2db5 100644
--- a/Documentation/process/code-of-conduct.rst
+++ b/Documentation/process/code-of-conduct.rst
@@ -43,7 +43,7 @@ Maintainers are responsible for clarifying the standards =
of acceptable behavior
 and are expected to take appropriate and fair corrective action in respons=
e to
 any instances of unacceptable behavior.
=20
-Maintainers have the right and responsibility to remove, edit, or reject
+Maintainers may remove, edit, or reject
 comments, commits, code, wiki edits, issues, and other contributions that =
are
 not aligned to this Code of Conduct, or to ban temporarily or permanently =
any
 contributor for other behaviors that they deem inappropriate, threatening,
@@ -59,20 +59,12 @@ address, posting via an official social media account, =
or acting as an appointed
 representative at an online or offline event. Representation of a project =
may be
 further defined and clarified by project maintainers.
=20
-Enforcement
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+Reports
+=3D=3D=3D=3D=3D=3D=3D
=20
 Instances of abusive, harassing, or otherwise unacceptable behavior may be
 reported by contacting the Technical Advisory Board (TAB) at
-<tab@lists.linux-foundation.org>. All complaints will be reviewed and
-investigated and will result in a response that is deemed necessary and
-appropriate to the circumstances. The TAB is obligated to maintain
-confidentiality with regard to the reporter of an incident.  Further detai=
ls of
-specific enforcement policies may be posted separately.
-
-Maintainers who do not follow or enforce the Code of Conduct in good faith=
 may
-face temporary or permanent repercussions as determined by other members o=
f the
-project=E2=80=99s leadership.
+<tab@lists.linux-foundation.org>.
=20
 Attribution
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
