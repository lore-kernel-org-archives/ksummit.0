Return-Path: <ilevex.linux@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 155D43C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 16:36:58 +0000 (UTC)
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7E77A1F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 16:36:57 +0000 (UTC)
Received: by mail-wi0-f172.google.com with SMTP id hi2so2297289wib.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 09:36:56 -0700 (PDT)
Sender: Levente Kurusa <ilevex.linux@gmail.com>
Message-ID: <53779022.6080508@linux.com>
Date: Sat, 17 May 2014 18:36:50 +0200
From: Levente Kurusa <levex@linux.com>
MIME-Version: 1.0
To: Theodore Ts'o <tytso@mit.edu>, PJ Waskiewicz <pjwaskiewicz@gmail.com>
References: <20140512164921.GB3509@linux.com>
	<53710053.4040100@zytor.com>	<CACV2jQDDu91ug=xeJ235W4jMunvfAY1rSXLjFGqw0hoTS4gmxg@mail.gmail.com>	<20140513112525.GB10733@kroah.com>	<CABe+QzALCqDLEJn9LawN2+SxEwzoNN5mYxY-Ko0z37oJowzYMA@mail.gmail.com>	<20140513150520.GA15857@kroah.com>	<CABe+QzDo9PudGCPOQnEabnwL=M8L261x_GjB2xrkCgLhJi+ewQ@mail.gmail.com>	<CA+5PVA5k=mVtR+gb+hfpc_05J_yP-TruX2DXFZdQkY+Nzq4p+w@mail.gmail.com>	<20140513160743.GA11391@thunk.org>	<CACMb8d0mtbYM4rUEJgkXCJ=MptU8X0JzvoOZriQYOEWmJSE2uw@mail.gmail.com>
	<20140515154112.GA24028@thunk.org>
In-Reply-To: <20140515154112.GA24028@thunk.org>
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="iI0iXaQWnF8Ucdo8j9pTniIde9HK4FEWm"
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Sarah A Sharp <sarah@minilop.net>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Jason Cooper <jason@lakedaemon.net>, Dirk Hohndel <hohndel@infradead.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
Reply-To: Levente Kurusa <levex@linux.com>
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--iI0iXaQWnF8Ucdo8j9pTniIde9HK4FEWm
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Ted,

On 05/15/2014 05:41 PM, Theodore Ts'o wrote:
> On Wed, May 14, 2014 at 10:41:10PM -0700, PJ Waskiewicz wrote:
>> Also, a big part of the original thought to having this topic at KS is=

>> to get all the right players in one spot, from kernel dev, kernel.org
>> infrastructure, etc.  The *how* in building this reporting framework
>> isn't hard, it's the *what* that needs to be hammered out.  And for
>> something like the QR encoded oops project, it seems to be a missed
>> opportunity to put it in the kernel, but have no usable framework to
>> make full use of it.  That's the point of the discussion we're asking
>> for, is to make sure it *will* be useful and give all the people who
>> want to see this have a say in how it should be built.  I really don't=

>> think that type of discussion would be terribly effective or efficient=

>> via email.
>=20
> I guess I didn't make myself clear.  I agree that the *how* things
> should be built is better done via e-mail, or better yet, by the
> person actually doing the work.  What I'm trying to push on is whether
> we've identified *who* will do all of this work.  Not just the QR
> encoding patches, but all of the associated work that is being
> proposed in this thread.

Of course we did identify the team. It's me and Teodora. For this QR
encoding work we need a lot of framework work and while at it we could
also tie up some loose ends in the error reporting workflow. I, for
myself, would love to clean up Bugzilla a bit. It has a lot of open bugs
that have been fixed for ages, just for example.

And, as PJ pointed out, we need to discuss what to do, the how in this
question is pretty much optional and can be later discussed in emails,
but I think that discussing what to do by emails when we have a great
opportunity to discuss this at the summit would sound like a waste of
time.

The topic wouldn't be just about QR codes, but more widely about the
error reporting workflow and how it could reach more users, and how
could it provide more information that can help triaging even very old
bugs, as in Debian's case.

Thanks,
    Levente Kurusa.


--iI0iXaQWnF8Ucdo8j9pTniIde9HK4FEWm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iQEcBAEBAgAGBQJTd5AiAAoJELBqK2lO9dZBOgIH/1navZrqI70DS2vmovWIzAPA
gRJc4AwmTIKrpR4xXaXi7fOq7vbIgbcIpf/X2cwgcZIo8E17uSDfbKjYCg+GLKd6
ymS9I0pQjc9q6AfAxEcOUiatDqW0HYhxe5vZWADFGH7J43mNOO4J112dAsNjTo9p
qCywXL78LKFBu3E+ZALcsN9Nicz8Kcaxnx3V2MAATBqTRPXVomJB9G5Q44W+ov1N
lizJuCkwIpBVcKDXIzyPGO7rx+fupS+Etm7LovxEpoULAd2/P/yPXOCLoVbS69IF
1JnvsaH8ifngV4OHZgRtuEBg40XoicRzBY77RfFzORuhuugV9a+/hQWVXpaZT2A=
=vCg4
-----END PGP SIGNATURE-----

--iI0iXaQWnF8Ucdo8j9pTniIde9HK4FEWm--
