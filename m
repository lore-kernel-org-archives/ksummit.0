Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 406D3115B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 18:02:47 +0000 (UTC)
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E43717FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 18:02:46 +0000 (UTC)
Received: by mail-it0-f68.google.com with SMTP id p79-v6so4562361itp.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 11:02:46 -0700 (PDT)
Date: Tue, 18 Sep 2018 14:03:24 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20180918180324.GB10055@chatter>
References: <20180917115916.37fd5388@coco.lan>
	<CAPM=9tzSaQX7iVCH94jrM+xgEveY4B8+DwQSykiE3L0BM-s-Pw@mail.gmail.com>
	<5b434160-07d9-4071-ac77-9d64ea69c980@email.android.com>
	<CAKMK7uExDUFjXcX6zPmZMjse6gf00bO-uBsjiWMk+vqjV2MEvQ@mail.gmail.com>
	<1537269419.3424.1.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA24@USCULXMSG01.am.sony.com>
	<20180918165917.GA9728@chatter>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA99@USCULXMSG01.am.sony.com>
	<20180918173148.GB9728@chatter> <20180918174913.GA22988@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="R3G7APHDIzY6R/pk"
Content-Disposition: inline
In-Reply-To: <20180918174913.GA22988@kroah.com>
Cc: James.Bottomley@hansenpartnership.com, mchehab+samsung@kernel.org,
	Tim.Bird@sony.com, ksummit-discuss@lists.linuxfoundation.org
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


--R3G7APHDIzY6R/pk
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 18, 2018 at 07:49:13PM +0200, Greg KH wrote:
>> 1. Allows people to generate an account
>> 2. Verifies their email address
>> 3. Instructs people how to generate a patch or series of patches
>> 4. Gives a way to upload generated patches
>> 5. Runs checkpatch to make sure there are no errors
>> 6. Runs get_maintainer to find out where the patch(es) should be sent to
>> 7. (Does more imaginary magic, such as looking up message-id references)
>> 8. Mails it out
>
>That last step might be hard, you have to "mail it out" to look like it
>came from the original author, right?  Then all crud breaks out as you
>can't deliver an email from "sony.com" successfully.

We already do nasty things to work around this. E.g. if you look at the=20
envelope-sender for mail delivered via mail.kernel.org you'll see that=20
it all looks like this:=20
SRS0=3Dcrc=3Dstuff=3Dorig-domain.com=3Dorig-local@kernel.org

So, mailing it out and having it pass DKIM/SPF checks to be reliably=20
delivered is something we can do. Or, we can send it from=20
"vapor-git-thingy@kernel.org" and put the original sender into Reply-To,=20
which is also kosher.

>So you just provide them with a FOO1234@k.o account or some such
>munging, to reflect back to their original email address, but what
>happens when I ask for a change?  Are you now a "man in the middle"
>forwarding emails around everywhere?  That could get messy quickly.

It a reality we already live in, so it's not like we'd be exposing=20
ourselves to anything we aren't exposed to as it is.

>Seriously, it would be good, but no gerrit please...

We'll call it ging for "ging is not gerrit". :)

-K

--R3G7APHDIzY6R/pk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQR2vl2yUnHhSB5njDW2xBzjVmSZbAUCW6E97AAKCRC2xBzjVmSZ
bAfpAQCLoAJQ8LC/hplxaXJTA/hqyDmY1vkvB54ODWbCbfHjXwD/amY9HkgWU3ap
aOVkdxdBOK0NmW5Qz8wp3G7+CSddWA0=
=PfPW
-----END PGP SIGNATURE-----

--R3G7APHDIzY6R/pk--
