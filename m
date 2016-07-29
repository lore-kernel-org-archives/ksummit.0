Return-Path: <Tim.Bird@am.sony.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DBE7F910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 17:53:01 +0000 (UTC)
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0093.outbound.protection.outlook.com [104.47.38.93])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9733C121
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 17:53:00 +0000 (UTC)
From: "Bird, Timothy" <Tim.Bird@am.sony.com>
To: Christoph Lameter <cl@linux.com>, David Howells <dhowells@redhat.com>
Date: Fri, 29 Jul 2016 17:52:52 +0000
Message-ID: <ECADFF3FD767C149AD96A924E7EA6EAF053BB894@USCULXMSG02.am.sony.com>
References: <20160729131151.GF4340@x> <20160729075039.GA26402@x>
	<30809.1469794812@warthog.procyon.org.uk>
	<1596.1469801212@warthog.procyon.org.uk>
	<alpine.DEB.2.20.1607290919480.14761@east.gentwo.org>
In-Reply-To: <alpine.DEB.2.20.1607290919480.14761@east.gentwo.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [ANNOUNCE] git-series: track changes to a
 patch series over time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



> -----Original Message-----
> From: ksummit-discuss-bounces@lists.linuxfoundation.org [mailto:ksummit-
> discuss-bounces@lists.linuxfoundation.org] On Behalf Of Christoph Lameter
> Sent: Friday, July 29, 2016 7:21 AM
> To: David Howells <dhowells@redhat.com>
> Cc: ksummit-discuss@lists.linuxfoundation.org
> Subject: Re: [Ksummit-discuss] [ANNOUNCE] git-series: track changes to a =
patch
> series over time
>=20
> On Fri, 29 Jul 2016, David Howells wrote:
>=20
> > Josh Triplett <josh@joshtriplett.org> wrote:
> >
> > > Note that git-series doesn't provide a quilt-style push/pop workflow,
> > > with applied and unapplied patches; it just looks at HEAD.
> >
> > Ah...  In that case it's probably not a sufficient substitute for how I=
 use
> > stgit.
>=20
> Did not know that there was stgit. Still stuck on quilt since
> I like editing the files directly (its often easier to edit the diffs if
> you want to rename things etc).
>=20
> Interesting projects.

Indeed.  For many years I used a quilt-based workflow.  Recently
I've been trying to convert to a pure git-based workflow, but for
some reason git rebase -I always seems to give me problems.  It
always takes me much longer to just move some hunk from one
commit to another than it did in quilt using the patches and vi.

I don't know if git-series addresses that particular problem, but
Josh mentioned enough other problems that I have every time I
prepare patches for upstream, that I definitely plan to check out
the tool.
 -- Tim
