Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CE22910D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 17:54:38 +0000 (UTC)
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 80DD442D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 17:54:38 +0000 (UTC)
Received: by mail-it0-f68.google.com with SMTP id h3-v6so4526687ita.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 10:54:38 -0700 (PDT)
Date: Tue, 18 Sep 2018 13:55:15 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Tim.Bird@sony.com
Message-ID: <20180918175515.GA10055@chatter>
References: <20180917115916.37fd5388@coco.lan>
	<CAPM=9tzSaQX7iVCH94jrM+xgEveY4B8+DwQSykiE3L0BM-s-Pw@mail.gmail.com>
	<5b434160-07d9-4071-ac77-9d64ea69c980@email.android.com>
	<CAKMK7uExDUFjXcX6zPmZMjse6gf00bO-uBsjiWMk+vqjV2MEvQ@mail.gmail.com>
	<1537269419.3424.1.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA24@USCULXMSG01.am.sony.com>
	<20180918165917.GA9728@chatter>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA99@USCULXMSG01.am.sony.com>
	<20180918173148.GB9728@chatter>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EABB7@USCULXMSG01.am.sony.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="82I3+IH0IqGh5yIs"
Content-Disposition: inline
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF7C1EABB7@USCULXMSG01.am.sony.com>
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


--82I3+IH0IqGh5yIs
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 18, 2018 at 05:42:57PM +0000, Tim.Bird@sony.com wrote:
>> So, what if we imagine that there's an imaginary web tool that does
>> this:
>>
>> 1. Allows people to generate an account
>> 2. Verifies their email address
>> 3. Instructs people how to generate a patch or series of patches
>> 4. Gives a way to upload generated patches
>> 5. Runs checkpatch to make sure there are no errors
>> 6. Runs get_maintainer to find out where the patch(es) should be sent to
>> 7. (Does more imaginary magic, such as looking up message-id references)
>> 8. Mails it out
>>
>> Would that be useful or solve any problems? Or would that, on the
>> contrary, create more problems than it solves?
>
>Konstantin,
>
>I feel like this thread re-converged and you proposed the exact thing I ju=
st
>expressed interest in to Linus.  You were probably writing your message at
>the same time I was writing mine.  Wow!
>
>Personally, I feel this would be a GREAT thing.

Okay, tacking on some more imaginary features on top of this, let's say=20
it also had a way to add a remotely hosted git tree to your account,=20
e.g.:

https://github.com/somecorp/linux-corpfidget.git alias corpfidget

It could then offer a CLI utility to issue a command like this using the=20
https API:

vapor-git-thingy -g corpfidget -r 1234abcd..5678dcba -v2 -c coverletter.txt

That would do the same as the above, plus do the patch generation=20
itself...

Okay, I think I might be able to scrape up funding to get this built=20
once I put this into a more presentable form.

-K

--82I3+IH0IqGh5yIs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQR2vl2yUnHhSB5njDW2xBzjVmSZbAUCW6E8AwAKCRC2xBzjVmSZ
bLEyAPsEckx2lzZiSzELjSFMl6DNkibMPoJA/bxUs13UcCA7zQEArgZOR/7SrBYI
+M+8kzdl0gYkjI7Gon3/c/ZYQ2rW5wY=
=DuUi
-----END PGP SIGNATURE-----

--82I3+IH0IqGh5yIs--
