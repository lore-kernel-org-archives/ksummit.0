Return-Path: <neilb@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8DD872C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 00:38:46 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1DB4515D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 00:38:46 +0000 (UTC)
From: NeilBrown <neilb@suse.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Hannes Reinecke <hare@suse.com>
Date: Fri, 12 Aug 2016 10:38:35 +1000
In-Reply-To: <20160811154429.GB4134@mwanda>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
	<20160811154429.GB4134@mwanda>
Message-ID: <87d1lelt2s.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
	kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 12 2016, Dan Carpenter wrote:

> On Fri, Jul 22, 2016 at 03:57:40PM +0200, Hannes Reinecke wrote:
>> >=20
>> > I guess that almost all functions return only a few possible error cod=
es?
>>=20
>> Precisely. If we had a way of specifying "the return value is an errno
>> with the possible values '0', '-EIO', and '-EINVAL'" that would be
>> _so_ cool.
>
> I think that's a bad idea.  We should be propagating errors from the
> functions we call.  It should be able to change without breaking.

Should we?  I recently faced a bug caused by a (proposed) change to
btrfs which returned a different error code to the ->fh_to_dentry()
function. That was being propagated up to nfsd, and out on the wire in
the NFSv4 protocol.
Only the new error was invalid for the protocol and the client
(correctly) reported it to user-space rather than handling it
internally.

This happened because not enough thought/documentation had been given to
which error codes were sensibly meaningful.  I changed
exportfs_decode_fh() so that any error other than ENOMEM became ESTALE,
because that is all nfsd can sensibly handle.

I'm sure there are some (many!) paths where error codes should be
propagated transparently, but I don't think we should assume that is
always true.

>
> Smatch does a pretty good job of tracking return values, especially
> if you rebuild the database over and over once a day like I do.

So it is OK to keep a list of valid return values in a database, but not
OK to keep them in the code as documentation, and to alert the
programmer when they make a change so they can declare (and maybe even
document) if it was an intentional change?
Maybe I'm just misunderstanding your point of view.

Thanks,
NeilBrown

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXrRqLAAoJEDnsnt1WYoG5rSgP/iOYe1m7cC2QFPS62lgw0xQh
IER/jCIirXnvbHCUYxJ170bqKwaVNhGAvAsGOx/H2BUoAt7JV2LLgbdJEi4gWFDF
uFCv7MNGXkX7+HkjGbQKJSUzFps+SY/YA2r7iH+xtcTbUXQxriNF3wlU42KPiMTs
bzVkb9Lv4u+s2gef6xjVN4OJD0J0Ik0Y9qVvIRBuznDMf5GbcHsKJF0jyAYU/6qo
ZGiLAMV5R2VcMNHXCQuaCvUi1UxpKB12HKodtTKyEJ/j6ZfnaMwt3uouI3bn/VUK
IQ6OTYfSSu7k1yZLRJ+UBo4lFw0+utKw1qFWywGkVCneoP2svrh1COvwoeKOuoGL
7FymxZa3vVl10q3DI4r9+mapNlHFHOoU6HpqhKjXfqD+rXGW8IZg2FsrbX3NXDjT
JPyWfAZaqcmhiwRi/Y8yCNbv69/S89eX+FT0eUUo5LG/XJrymFmmyHMxvTm5sHiw
4/WDP1Hz9c/1n10odQ4YHa+HyB3qEzqM9ghQKFl3/TmvlbUR+1djEOBHnv44K2B7
6o+hXtWooz3VPeUE8G/AzFIhN9X4U9PLreEXa2lvNZ1be5W95IoSA5HDjhH+75G+
tJin1MU8hARvtJi0of/fK/0/9D72ciMaSpKZE73wfvMP/vIX/L0n+g8/7Xzbqi60
CwCqlEiHgII/bXQn3dwn
=yBr/
-----END PGP SIGNATURE-----
--=-=-=--
