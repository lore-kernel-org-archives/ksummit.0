Return-Path: <neilb@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 99CFB9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 21 Jul 2015 08:54:46 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0F6C8DE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 21 Jul 2015 08:54:46 +0000 (UTC)
Date: Tue, 21 Jul 2015 18:54:36 +1000
From: NeilBrown <neilb@suse.com>
To: Zefan Li <lizefan@huawei.com>
Message-ID: <20150721185436.20b97c47@notabene.brown>
In-Reply-To: <55ADA7C1.3050809@huawei.com>
References: <20150717101151.5d5bc86d@lwn.net>
	<20150717133712.42c82add@gandalf.local.home>
	<20150717190223.GB1499@cloud>
	<20150717154326.6f129bc4@gandalf.local.home>
	<20150717202412.GA1856@cloud>
	<20150717163903.67747d86@gandalf.local.home>
	<20150717204856.GA2048@cloud>
	<20150717165501.62ed4e04@gandalf.local.home>
	<alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
	<1437376105.8968.14.camel@HansenPartnership.com>
	<20150720084420.GA11454@x>
	<1437384215.8968.28.camel@HansenPartnership.com>
	<1437386699.22996.10.camel@infradead.org>
	<1437388227.8968.34.camel@HansenPartnership.com>
	<1437390546.22996.27.camel@infradead.org>
	<55ADA7C1.3050809@huawei.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	boundary="Sig_/K6A_kjp+NGticKSablD2=OG";
	protocol="application/pgp-signature"
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
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

--Sig_/K6A_kjp+NGticKSablD2=OG
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 21 Jul 2015 10:00:33 +0800 Zefan Li <lizefan@huawei.com> wrote:

> > Then it should just be case of of asking Stephen to "put this tree last
> > in linux-next", and Linus to "pull this one last, right before
> > releasing -rc1". And getting the timing right for the script to run.
> >=20
>=20
> This makes git-blame less useful, and that's one of the reasons some
> maintainers don't like trivial cleanups.

Sounds like we need to propose an enhancement to "git-blame"...

NeilBrown

--Sig_/K6A_kjp+NGticKSablD2=OG
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIVAwUBVa4IzDnsnt1WYoG5AQIWjRAAuu6/8OrQUDe3mRjFIKE15mVdpt6U322H
h/x8DS/8Xd9NSRFQkcWl/WFCAaLKkN2pUkKzLj3Le+wEmDQ8tlOMyhzsbgpCG0Tb
IWQpf7AfIWnNTPfBLyDsU+aeXOFPgNFZXXQ+sl8tm2LflwOXinxoNolItKiIeLsX
vJyxx+QdNslpZp/lGQCxb6EQQIfdKmdiNTH9OelesC8I4Np6w9dyZHyYt3mYbLGC
45XxInAmSlTsN5NFWYQ1g3jrt/ijYzf7Iol3ithm6OVP/bZ5l5MLY11oD7z3CtpU
hfL5fcUzOewYnSjCumdtEwosHGK0oJOz1dIJLeImz0OBzlDGHToLlWR+AuniE5Pi
NcyL/jvsM877YEBHQIEXjz+UMPakW8rg3KwbrxoyTk5bCCSIQzBtB2lPnxLRGuLn
72XSUyn2Mhxuj4FtWI5afKFUStPrpkeGFkArc2abGDdXOXS1pjkUUKbDFC//OLQk
bLrwenVDMGGmc2kalx3HVxkte5h9q9IIoIoKcNmmxfII/Z+e/vvKW/OKV/q46w9u
3gEFJbQlJ86mxbuaIBUfwbUnan43JdusCNfSsBGM/Ndm3c6+tO40obN9YqbmriLe
vsiDNnFt33vSkYDSQtsb2JpkszgkZxSBUn+lkHJkv9LgbdMFCdfafdNq8IcJ4Sud
j27alU5RVEg=
=/ylg
-----END PGP SIGNATURE-----

--Sig_/K6A_kjp+NGticKSablD2=OG--
