Return-Path: <neilb@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 95543413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 06:23:59 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 157F7FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 06:23:58 +0000 (UTC)
From: NeilBrown <neilb@suse.com>
To: "Michael S. Tsirkin" <mst@redhat.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>
Date: Fri, 12 Aug 2016 16:23:50 +1000
In-Reply-To: <20160812044211.xysb3larocxob342@redhat.com>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<20160812044211.xysb3larocxob342@redhat.com>
Message-ID: <87vaz6jyix.fsf@notabene.neil.brown.name>
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

On Fri, Aug 12 2016, Michael S. Tsirkin wrote:

> On Tue, Jul 19, 2016 at 10:32:51AM -0500, Eric W. Biederman wrote:
>> I would really like to get a feel among kernel maintainers and
>> developers if this is something that is interesting, and what kind of
>> constraints they think something like this would need to be usable for
>> the kernel?
>>=20
>> Eric
>
> Surprised that no one mentioned this yet - I think tagging
> integers/structs as coming from userspace could be useful,
> if we can teach e.g. smatch that access to a kernel
> pointer through this offset might fault.

We already have that.
Sparse recognizes
    __attribute__((noderef, address_space(1)))
 to mean "this is a pointer to a different address space which
 cannot be dereferened" and linux has

# define __user                __attribute__((noderef, address_space(1)))

so if you mark a pointer as "__user", then sparse will complain
if you dereference it.

We've had this for over a decade :-)

  https://lwn.net/Articles/87538/

NeilBrown

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXrWt2AAoJEDnsnt1WYoG50QUQALkAnCG/8jTSKbD7nkxE5Ius
QK2kBySKR1a36NNWikrT5VgklF73jmF0Wr3GvFB9Km/6rIEqYjNP2msP+J9k2ePB
w8+ZHJnD3c5wFq0VF3d3Mb/2dfRVY97pXw23wqG9JSdY0M4fxzAMEBUprbD6IijP
CXkoCjEFY7jIbF+vaCTzOUeyETcjz2MnCyawCNG/g+7dmLYrpGObFR46wb4pbBJx
Rk9oR5OslXAyr2zhjX1GsDzNDPLa+G4O35ruv+GWZuL4bSAewCW1H7TcvC49E6at
/HiKRPNd+RfV7JfjAVgRiW9RBPpsw90zpkMOoXwj3VY04PdBwpdiDOgQvRVErY1W
rYgoI3vIplSBwno8uXVil13JFnjVrF0JbRrV5jWPCqNr7N9jgSM3OFqExU3sUFA9
M6XlQTuY48cvBX15YoAqmRTzs8lkPVqT+N8w1e0W/EgAbSGa3GMt6y57rbEQHI53
A/ZV8wQsOZy8kHdyh/djz5UbXtkXPVfY3ZK81fAnN2kgKra2XdKqAmCilt3aIQ1/
4ILRueuc0wKAExHKlDUAguXO1QqoMi/rtOsZyKiSGRSIZezYa/7LalYK26t4faqs
Ub2VBX+MhSZX+72MTySgymC5LfRXMKxmdGI83Z9iT3LlgQLSoX71T5JDIgGgxMNI
nN5kEMu3ydNimUwssd4+
=5NRq
-----END PGP SIGNATURE-----
--=-=-=--
