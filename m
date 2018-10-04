Return-Path: <Tim.Bird@sony.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 49FA4CCB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Oct 2018 22:05:48 +0000 (UTC)
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
	(mail-eopbgr680096.outbound.protection.outlook.com [40.107.68.96])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E46D1196
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Oct 2018 22:05:46 +0000 (UTC)
From: <Tim.Bird@sony.com>
To: <tglx@linutronix.de>, <corbet@lwn.net>
Date: Thu, 4 Oct 2018 22:05:39 +0000
Message-ID: <ECADFF3FD767C149AD96A924E7EA6EAF8051665A@USCULXMSG01.am.sony.com>
References: <CAKON4OxHUoVQ3zso=avoGE35MwWnkGaU13R_qPaw9zAqMVCDxQ@mail.gmail.com>
	<6108593.JtmfA2IdsK@avalon>	<20181004203956.GR32577@ZenIV.linux.org.uk>
	<20181004145631.5d1c3fb2@lwn.net>
	<alpine.DEB.2.21.1810042323350.29948@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1810042323350.29948@nanos.tec.linutronix.de>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] New CoC and Brendan Eich
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



> -----Original Message-----
> From: Thomas Gleixner
> On Thu, 4 Oct 2018, Jonathan Corbet wrote:
> > On Thu, 4 Oct 2018 21:39:57 +0100
> > Al Viro <viro@ZenIV.linux.org.uk> wrote:
> >
> > > 	* contributor Alice gets banned from contributing, for whatever
> reason
> > > 	* Alice finds a roothole and posts a technically valid fix
> > > 	* maintainer Bob sees the posting, verifies that the bug is real, th=
at
> > > the fix is correct and that the source of that patch is banned.
> >
> > So, while remedies under the CoC are yet to be determined in any sort o=
f
> > detail, I don't believe I have heard anybody talk about banning the
> > acceptance of patches from anybody.  Speaking only for myself, I have a
> > hard time seeing that happening in the absence of other sorts of concer=
ns
> > (the event where a would-be contributor started sending under a sock
> > puppet name because nobody would consider his work anymore comes to
> mind).
> >
> > What *is* common under CoCs in various projects is banning from specifi=
c
> > fora, such as this mailing list.  But that is a different thing and
> > doesn't bring about the scenario described above.
>=20
> It does. Alice is banned from the mailing list, but still posts the
> roothole fix to LKML and Cc's the maintainer according to the rules. LKML
> drops the post, but the maintainer still gets it. Now what is he supposed
> to do? Ignore it, because he forgot to add Alice to his /dev/null filter?

In general I don't think it's very productive to debate hypothetical
situations.  This one seems to me to be a low-probability event.
However, it seems like the Maintainer can do whatever they want, and
the CoC will have improved the situation.  If the submission is laden
with curse-words and abuse, then LKML and the wider community
has been spared from the negative communication, and the Maintainer
can clean up any language in the commit message or the code that they
want.  Maintainers do this kind of thing all the time.

If the Maintainer themselves find the communication so abusive
that they don't want to consider the code, they can tell Alice to
redo the patch, or in the extreme case add her to the /dev/null filter.

When the patch hits upstream, no one should care who it came from.
The CoC is not about creating a witch hunt against individuals, or about
ignoring valid code.  It is about improving behavior during the contributio=
n=20
process.
 -- Tim
