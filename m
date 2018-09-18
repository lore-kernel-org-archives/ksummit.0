Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5B758123F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 19:23:28 +0000 (UTC)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0718079
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 19:23:27 +0000 (UTC)
Received: by mail-io1-f53.google.com with SMTP id c22-v6so2539170iob.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 12:23:27 -0700 (PDT)
Date: Tue, 18 Sep 2018 15:24:05 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Tim.Bird@sony.com
Message-ID: <20180918192405.GA10511@chatter>
References: <5b434160-07d9-4071-ac77-9d64ea69c980@email.android.com>
	<CAKMK7uExDUFjXcX6zPmZMjse6gf00bO-uBsjiWMk+vqjV2MEvQ@mail.gmail.com>
	<1537269419.3424.1.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA24@USCULXMSG01.am.sony.com>
	<20180918165917.GA9728@chatter>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA99@USCULXMSG01.am.sony.com>
	<20180918173148.GB9728@chatter>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EABB7@USCULXMSG01.am.sony.com>
	<20180918175515.GA10055@chatter>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAC96@USCULXMSG01.am.sony.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zYM0uCDKw75PZbzx"
Content-Disposition: inline
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF7C1EAC96@USCULXMSG01.am.sony.com>
Cc: James.Bottomley@hansenpartnership.com, mchehab+samsung@kernel.org,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 18, 2018 at 06:58:45PM +0000, Tim.Bird@sony.com wrote:
>> >> 1. Allows people to generate an account
>> >> 2. Verifies their email address
>> >> 3. Instructs people how to generate a patch or series of patches
>> >> 4. Gives a way to upload generated patches
>> >> 5. Runs checkpatch to make sure there are no errors
>> >> 6. Runs get_maintainer to find out where the patch(es) should be sent=
 to
>> >> 7. (Does more imaginary magic, such as looking up message-id referenc=
es)
>> >> 8. Mails it out
>This could help solve a lot of e-mail issues that contributors have,=20
>but also
>I'm very interested in step 5 - the testing aspect.  I would like to be in=
volved in
>discussions of the design of that step, so we could plug lots of different=
 tests
>in, at the request of various sub-system maintainers.  I maintain the Fuego
>test system, so I'd be interested in making available our test suites for =
that
>step.

I'm not sure this is going to be the right tool for test-suite=20
integration -- in fact, I'd argue that CI stuff should remain wholly=20
outside of its scope. The goal is to make it easier to send good,=20
acceptable patches (even if their content is no good). CI and any other=20
automated testing should happen after these patches have hit LKML (and=20
any other lists), if only because there is no One True Place That Does=20
CI, and things like 0daybot/syzbot/etc are already honed to work via the=20
mailing list.

That said, I'm open to be convinced otherwise if others want this to=20
happen *before* patches land on the mailing lists. If that is the case,=20
we will want to rope kernelci folks into this discussion.

>Please let me know if there's some opportunity to follow up with you on=20
>this
>( ie, a list where this might be discussed in more detail, or an event whe=
re we
>could talk face-to-face).

I'll be at the Kernel Summit in Vancouver, and I believe at least Kevin=20
of KernelCI fame will be there, too.

-K

--zYM0uCDKw75PZbzx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQR2vl2yUnHhSB5njDW2xBzjVmSZbAUCW6FQ1AAKCRC2xBzjVmSZ
bFf6AP9MmPYhiuWqt6vKTlUr6fPGhusJgmpOd5iyE720No8c9QD9EIBM4ub2b7Jx
ohn1jDdYY24FyR3R/Re9P0KYbB9sawk=
=22n2
-----END PGP SIGNATURE-----

--zYM0uCDKw75PZbzx--
