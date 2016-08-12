Return-Path: <neilb@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 501C92C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 06:23:47 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8890C79
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 06:23:46 +0000 (UTC)
From: NeilBrown <neilb@suse.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
Date: Fri, 12 Aug 2016 16:23:37 +1000
In-Reply-To: <20160812082417-mutt-send-email-mst@kernel.org>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<20160812044211.xysb3larocxob342@redhat.com>
	<871t1ulfvz.fsf@notabene.neil.brown.name>
	<20160812082417-mutt-send-email-mst@kernel.org>
Message-ID: <87wpjmjyja.fsf@notabene.neil.brown.name>
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

> On Fri, Aug 12, 2016 at 03:23:28PM +1000, NeilBrown wrote:
>> On Fri, Aug 12 2016, Michael S. Tsirkin wrote:
>>=20
>> > On Tue, Jul 19, 2016 at 10:32:51AM -0500, Eric W. Biederman wrote:
>> >> I would really like to get a feel among kernel maintainers and
>> >> developers if this is something that is interesting, and what kind of
>> >> constraints they think something like this would need to be usable for
>> >> the kernel?
>> >>=20
>> >> Eric
>> >
>> > Surprised that no one mentioned this yet - I think tagging
>> > integers/structs as coming from userspace could be useful,
>> > if we can teach e.g. smatch that access to a kernel
>> > pointer through this offset might fault.
>>=20
>> We already have that.
>> Sparse recognizes
>>     __attribute__((noderef, address_space(1)))
>>  to mean "this is a pointer to a different address space which
>>  cannot be dereferened" and linux has
>>=20
>> # define __user                __attribute__((noderef, address_space(1)))
>>=20
>> so if you mark a pointer as "__user", then sparse will complain
>> if you dereference it.
>>=20
>> We've had this for over a decade :-)
>>=20
>>   https://lwn.net/Articles/87538/
>>=20
>> NeilBrown
>
>
> Of course, everyone uses these.  But what I mean is tagging index types:
>
> 	int data[256];
>
> 	int foo(u32 __user *ptr)
> 	{
> 		u32 i;
> 		if (get_user(i, ptr))
> 			return -EFAULT;
>
> 		data[i] =3D 0;
> 			^^^ security vulnerability
>
> 	}
>
> Above, i is coming from userspace and so must always be range-checked
> before it's used as an index.

Ahhh, I see.  Thanks spelling it out for me.


>
> Maybe we could change get_user return a tagged result: __from_user int.
> And have above warn because __from_user can not be assigned to plain
> int.
>
> Then rework the code along the following lines:
>
>
> 	int data[256];
>
> 	int force_range(__unsafe u32 value, unsigned idx)
> 	{
> 		return ((__force int)value) % idx;
> 	}
>
> 	int foo(u32 __user *ptr)
> 	{
> 		__unsafe u32 i;
> 		int ichecked;
> 		if (get_user(i, ptr))
> 			return -EFAULT;
>
> 		ichecked =3D force_range(i, sizeof data);
> 		data[ichecked] =3D 0;
> 			^^^ ok now
>
> 	}

You could probably do this today using __attribute__((bitwise))

typedef int __attribute__((bitwise)) unsafe32;

Then use "unsafe32" wherever you have "__unsafe u32".

When you try

  data[i] =3D 0;

sparse says "warning: restricted int degrades to integer"

Of course, changing all the code would be a pain.
I guess you introduce "get_safe_user" then gradually transition code
over.

NeilBrown

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXrWtpAAoJEDnsnt1WYoG5xcoP/1g1IBzXtMwHSmgrKGpDIyBl
5CNj2KIEKNg4chSWtPILvcg6+f3n+L4+OV/RW6mXZLIZBuMoQajM1vFglGtLzbH1
bcwEAZxdh8Yhx8h9bE5E0Lil3WKFYd/T2uwquqxJsWwaLnIVP5Hn8y1jUe+VhmBt
bRH7ACjC8NqrPOK94Td7dQpRFPRPOc5pGDnekzo70V/unsVhc0Pqt5D4b6LfPmSg
RQBIMaAiRsI4hy5xE2Eb032yV1LOUXbCZ9Zl/cYEgqutUXKyYWiPc+sk8RZPqney
+4Scp2+XbCGaqhtI3zhmlnyNot86mhFQABQVsICDnw5vaSuQM/kwG3z1k5LbOFR3
bAGylruGCDHhaWxpRQ/qTqlPPwKrKRbriJyVEgdFHVkZJ8d5bTSuJu4yCO1hS4rc
VM3qyYpcHftu3+lmQpqMzqYlm8gNvIEBjMh5DLjxPtoAw7UODXbOanYLJT+1LFQf
ztCKQZU1HN4bkMbKA/FQnG+pdY4pvAFoaOvV7tOL2fXmgkV1SOcbVQKQ7Ivp2xND
Q35GkJWxESdlLQg3iEMa4rTAzFxnurbVN0pg7wnIXdZgNKNq/AiRT54IWfY3HiyT
f+hxyH0BQY7FFHC+Uq41rUOvBkIJH7n7CApxryF/yJolu1Ye0f6HZZNQAsU74jgS
agKA0BP/uwuXArriNs7R
=N3mq
-----END PGP SIGNATURE-----
--=-=-=--
