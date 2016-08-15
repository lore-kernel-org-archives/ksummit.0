Return-Path: <James.Hogan@imgtec.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6B52289C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 12:53:12 +0000 (UTC)
Received: from imgpgp01.kl.imgtec.org (mailapp01.imgtec.com [195.59.15.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9F61115B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 12:53:11 +0000 (UTC)
Date: Mon, 15 Aug 2016 13:53:09 +0100
From: James Hogan <james.hogan@imgtec.com>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20160815125309.GA21566@jhogan-linux.le.imgtec.org>
References: <20160729075039.GA26402@x>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xHFwDpU9dbj6ez1V"
Content-Disposition: inline
In-Reply-To: <20160729075039.GA26402@x>
Cc: ksummit-discuss@lists.linuxfoundation.org
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

--xHFwDpU9dbj6ez1V
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Josh,

On Fri, Jul 29, 2016 at 12:50:39AM -0700, Josh Triplett wrote:
> I'd welcome any feedback, whether on the interface and workflow, the
> internals and collaboration, ideas on presenting diffs of patch series,
> or anything else.

I often have patch series which are dependent on one another. It is then
very useful to be able to see all the branch names in logs (i.e. with
--decorate or using tig). This isn't possible out of the box with
git-series however since it seems to prefer to work on a detached head.

I sort of worked around this with a hacky script (see below) to update
my branches (which start with e.g. "4.8/") to point to the corresponding
git series latest commit.

Do you think it'd be practical and make sense for git-series to learn to
(optionally?) automatically remain on a particular branch (in my case
with the same name as the series) and keep it updated with rebases etc?
I realise the semantics of how it might work may be a little unclear at
the moment since the SHEAD doesn't get updated until git series commit.

Cheers
James

#!/bin/bash

V=4.8
if [ -n "$1" ]; then
	V=$(echo "$1" | sed 's/^v//')
fi

set -e

branches=$(git branch | grep -v 'detached from' | sed 's/^. //g')
for b in $(git series | grep '^. '$V'\/.*$' | sed 's/^. //g'); do
	if echo "$branches" | fgrep -qx "$b"; then
		brev=$(git rev-parse "$b")
		ref=$(echo $b | sed 's/^\(.*\)$/git-series\/\1^2/g')
		refrev=$(git rev-parse --verify --quiet "$ref" 2>&1 || true)
		if [ -z "$refrev" ]; then
			ref=$(echo $b | sed 's/^\(.*\)$/git-series\/\1^/g')
			refrev=$(git rev-parse --verify --quiet "$ref" 2>&1 || true)
			if [ -z "$refrev" ]; then
				continue
			fi
		fi
		if [ "$brev" != "$refrev" ]; then
			echo "Moving $b $brev...$refrev ($ref)"
			echo "  git branch -D \"$b\""
			echo "  git branch \"$b\" \"$ref\""
			echo -n "Go ahead [Y|n]? "
			read yes
			if [ "$yes" == "y" ]; then
				git branch -D "$b"
				git branch "$b" "$ref"
				echo "  done"
			fi
		fi
	fi
done

--xHFwDpU9dbj6ez1V
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXsbs1AAoJEGwLaZPeOHZ62J0P/3TgBJolTzJyD+Rsi/LtXob0
pOMgpO4doCSYdpiZxmgE9lgy1WQR+cTaCYEUVioiBLoap6c2sCVOsD6odu7jQPFl
TbX435IFUPHfxOGGpT7vtM+SnPK7l22jgPR7th+kYq31KPs9kF03kpJr10bo4WE/
pCF0WXGqBIbjXkYvv0ECPShpGCcPYPj3c6CfC3dvUfiroV3JuEplj4N6WGPdkWK3
VM9fRhLTTznxnMJj0rVAAEjgR2uK5xRAawTWUlnP813HXTEzMP/jI0JNOBeG2Ets
gBO7rbNpy26y7BHTFeo65OHIhyowwFPZHXWzIkfhow7H50cxNURXfjdb8U29JG4u
JBHlFyZRUqNlNYNdrkUNZp5rrZKV5oOWDF1VRZpvy0kMNRQBaH02N59WUpwQIEEA
yWPjrB+LH5AFWLlCsbGg9ogOZuGzFNjKX0xEiR7NLE3nH8OgttV8zgRDtRFTeNb6
WpWESar7z/yWtdZ74QxDifzrcD1v1XH0p6Kl8wx7Z/RXZla5V9gpYl8kE03/Q1oO
8C+bWGN4dHVD3Ja6Cud3P+BebH1AgNLzteyvXJ2C5Wp54UG7QLLmb8jbdvf2yYiy
061jWMq6NB+YU3qkM9usYVygY7jO/aY+TcYBd4DSnjrtJdy5750W/VLzQGlEkIzR
A6ipt1PGQmmOP5xgK3h9
=JtIC
-----END PGP SIGNATURE-----

--xHFwDpU9dbj6ez1V--
