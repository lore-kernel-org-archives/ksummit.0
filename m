Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 30F5CAAE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 08:40:15 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F228814F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 08:40:13 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 14 Jul 2015 11:40:33 +0300
Message-ID: <3864713.ag1RzhZSqr@avalon>
In-Reply-To: <20150713203647.1fdb8bb4@lwn.net>
References: <201507130038.01474.PeterHuewe@gmx.de>
	<201507132146.47186.PeterHuewe@gmx.de>
	<20150713203647.1fdb8bb4@lwn.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: Daniel Vetter <daniel@ffwll.ch>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE-TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

(CC'ing Daniel Vetter)

On Monday 13 July 2015 20:36:47 Jonathan Corbet wrote:
> On Mon, 13 Jul 2015 21:46:46 +0200 Peter H=FCwe wrote:
> > > kerneldoc does work, after a fashion.  It works well enough that =
people
> > > use it, and I hear about it quickly when somebody's comment chang=
e
> > > breaks the docs build.  I don't think we can remove it in the abs=
ence of
> > > something better.
> >=20
> > Jonathan, do you keep an up-to-date copy of the generated files som=
ewhere?
> > (I cannot get it to work out of the box on my machine)
>=20
> I don't, sorry.  That would probably be a good thing for me to do for=
 a
> number of reasons.
>=20
> > > Creating "something better" is actually on my list of things to d=
o.  The
> > > only problem is that I've had to buy a second 4TB drive to hold t=
hat
> > > list, so I don't know when I'll have time to think about it.
> >=20
> > Where do you think are the major issues from your point of view?
>=20
> Well, as mentioned before, kerneldoc is fragile.  A little while back=

> somebody changed a struct to a union without updating the comments to=

> match; that was enough to break the entire document build process.  T=
hat
> kind of thing happens a lot; I don't think it should have to be that =
way.
>=20
> Beyond that, DocBook is a major pain.  I get a fair number of patches=

> along the lines of "that </para> should really have been ahead of tha=
t
> </whatever>".  It's verbose, intimidating to newcomers, and causes mo=
re
> worn-out shift keys than anything else.  We don't need something with=
 the
> complexity of DocBook; something closer to Markdown or ReST would do =
us
> just fine and make the documentation much more accessible.
>=20
> But making any such change is a big job, and convincing the community=
 to
> go with a change in tooling is probably a bigger job.  So I'm not rus=
hing
> into it.
>=20
> > Would doxygen be "something better"? The kernel-doc style looks alr=
eady
> > quite similar. Maybe the kernel should not reinvent everything :)
>=20
> Doxygen may be worth a look.  I'm personally fond of Sphinx, though I=

> still haven't done a big project in it.
>=20
> But this is all just dreaming until somebody has the time to do a maj=
or
> docs overhaul and sell it to everybody else.  Until then, I'm focused=
 on
> slowly improving what we have now...

Daniel, I think I recall you mentioning some efforts going in that dire=
ction.=20
Any update ?

--=20
Regards,

Laurent Pinchart
