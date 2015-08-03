Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C8C2C74
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 15:53:32 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6DCEF1AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 15:53:32 +0000 (UTC)
Message-ID: <1438617210.2173.18.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Mark Brown <broonie@kernel.org>
Date: Mon, 03 Aug 2015 08:53:30 -0700
In-Reply-To: <20150803154950.GU20873@sirena.org.uk>
References: <20150716121620.65ce6daa@gandalf.local.home>
	<55A7DAD8.2080902@sonymobile.com>
	<20150716125216.0d457104@gandalf.local.home>
	<55BB7397.3090407@atmel.com>
	<1438352566.2179.4.camel@HansenPartnership.com>
	<CAMuHMdUu4_PsiCcz0KX=jw7W7gHPD1WGouYiBg1Fw=L_aFoeCg@mail.gmail.com>
	<1438453195.2182.16.camel@HansenPartnership.com>
	<CAMuHMdX4siOnhTOD=NYa+V35TDZEuMT7q+jpWo8mz9XsgtNB5w@mail.gmail.com>
	<20150802081600.73d54e4e@noble>
	<alpine.LNX.2.00.1508020044170.925@pobox.suse.cz>
	<20150803154950.GU20873@sirena.org.uk>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-ChethbJauuI4tYNueCxt"
Mime-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-ChethbJauuI4tYNueCxt
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2015-08-03 at 16:49 +0100, Mark Brown wrote:
> On Sun, Aug 02, 2015 at 12:45:24AM +0200, Jiri Kosina wrote:
> > On Sun, 2 Aug 2015, NeilBrown wrote:
>=20
> > > Claws-mail doesn't make it easy to reply to attachments - you have to=
=20
> > > use the clumsy "copy/paste/add '>'" that you describe. However assert=
ing=20
> > > that other people should follow a particular work flow because my too=
ls=20
> > > aren't very good does not sound like a convincing argument to me. If =
my=20
> > > tools don't work with a workflow that is prima-facie reasonable, then=
 it=20
> > > is my tools that are at fault and I should fix them, not ask someone=
=20
> > > else to change their workflow.
>=20
> > Just in case anyone is collecting data-points from this discussion, pin=
e=20
> > doesn't make it really easy to include attachment text in-line in reply=
=20
> > either.
>=20
> mutt is a bit fun here - it only works if the attachment has a text MIME
> type which a lot of the systems that force people to attach patches seem
> to struggle with.

You mean the windows habit of attaching them as octet-stream types?  I
set my binary handler to be emacs (you could make it your editor of
choice) so I can pop it up on the attachment and cut and paste quote
from the editor.  I have to report that this does have some unwanted sid
effects in mozilla: some pdf attachments come as octet-stream as well
and the binary handler overrides the file type handler ...

James


--=-ChethbJauuI4tYNueCxt
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJVv456AAoJEDeqqVYsXL0M81cH/1zFE1aUOYxkLYscWanSQy5A
pgJvs+rlF9OIHrjYq0417UnU2bSHqFVnWIm8hQNe7slOOEjzhaEZajyStc+T4fmS
NU06/p8P1ZyilVzloIc9SFTSChIkSI3WuJmoJyczhT0ip13+luLNXaLb542/Bkj6
Whl3baAvqhUHvIIG8RnpC0XvCvhG1EhFYjd6W/oL1nwHGxDqa8tk99m4JcnZ8+l6
/lucFptyM9uFyxF9/Wpjo5LgwkMLD9r367vMCCNLNmza2lVVH+mOE3iUrQan5+Z+
4gLMXimLpsZF/iaQzsRGgiiBgYkmGWM4MT9H73SNCDj+XbHCXpm3N72zXoNtKdo=
=AP5H
-----END PGP SIGNATURE-----

--=-ChethbJauuI4tYNueCxt--
