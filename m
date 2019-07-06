Return-Path: <wsa@the-dreams.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C40D61C6B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 14:27:42 +0000 (UTC)
Received: from pokefinder.org (sauhun.de [88.99.104.3])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 80AE34C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 14:27:41 +0000 (UTC)
Received: from localhost (p5486CF0A.dip0.t-ipconnect.de [84.134.207.10])
	by pokefinder.org (Postfix) with ESMTPSA id 579202C376D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 16:27:39 +0200 (CEST)
Date: Sat, 6 Jul 2019 16:27:38 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190706142738.GA6893@kunai>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PEIAKu/WMn1b1Hv9"
Content-Disposition: inline
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews meaningful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


In the parts of the Kernel I work with, reviews are usually given by a plain
tag. I think this is not enough to keep a good code quality, so I'll start with
my theses first:

1) we need a better distinction between Acked-by: and Reviewed-by: and encourage
   stricter use of that

2) Reviewed-by should have a description of the review done (and the review not
   done)

3) trivial patches should rather get Acked-by

4) failing the above should be constructively criticized


Some more words about each item:

1) I am definitely not striving for a clear line, that's impossible. Yet, from
what I experience, the overlap between the two became large. It reduces the
extra value a Reviewed-by should have.

2) A short paragraph will usually do. Of course, trust helps a lot, but it
doesn't solve everything. Trusted people can be in a hurry, too, etc. And for
people I don't know, the plain tag doesn't tell me much. Examples for short
descriptions: "I can't say much about the media part, but the I2C part is
proper" or "I also checked the documentation and I think this is a good
approach to overcome the issue" or "All my concerns in the preceding
discussions have been addressed"

3) Again, no hard line on what is trivial can be made. Still, I think it will
add to the extra value of a review tag if it is only applied to something which
is non-trivial, so we should try to have a better distinction.

4) We are in such a need for people reviewing that it can be challenging for
maintainers to be picky about reviews (you can partly include me here). A
kernel-wide movement aiming for a better distinction between ack (= looks good)
and review helps both maintainers and developers, I think.

These things will hopefully help me as a maintainer to better evaluate trust
for a patch based on the tags given. So, I will try that in the I2C subsystem.
I would prefer, though, not to be an island but to have something which is
accepted kernel-wide.

Disclaimer: I am mainly active in the drivers section of Linux. If reviews are
handled differently in other parts, I am all ears.

Well, I am all ears, anyhow. Opinions?

Kind regards,

  Wolfram


--PEIAKu/WMn1b1Hv9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0gr9YACgkQFA3kzBSg
KbbklQ/+LKmt7rBxcZNvXs4lF9pOl1uS6/U7HaK5s/hpVVGbyRCnRRAUthOJqUs0
Zwj9fT9mdLfBLpf2zXv3N+yTJFheBKiZbcwXfUYLLc53JUeR0+LfMAawi0xrMoBy
8SHqGyGd4uLV+Xqc8MSxAGFHzhIJ0q52PK5vC+P7vYLacD8ArCV1VFIEuEKSny7w
BSgFxW8cSJ1y8KiWS7e0RXprkevn+mM39aeSYEGA9sL5U8U+szN9ZVMGafxSDEso
VCBESLE/QXLUKsHkiXE06GZdU71juHatBX+NzCpI+kRs4ZG1o8yHLnffN9Sd8MU+
WR+auLtdFeVOUYqFLMZbENNixJPvkc0TkFJiimNvu3xCf4+035PrGyyw4QA6Huwl
XINGoxujWSOLqiNhOr7lvpi+KVLNLwqNVWV7Ku1sKYnrBpAdoTxDwvy4tLH05KT4
3AYX0Lo/S+lx4sGDxHYH9EtyG/bve+OJu1JbotIr/rlmj86miIUMvWd8F6N9Wj2w
msIW+t0LHlrgt2F16QohS52pueWthfT5PKHo9E8eXVTgYcEBpTqo3S6gjLebxfV0
Dq5KYSElke/sdPyf9eMJeYKA/gt7IHx153ypkobqeC5RnduIoEwdqGGwokXxjpcX
V0p6aG8aHhqbc+Qu55qSzkhQk8LqP+wuyQOri4SEXFrLP7+eS5Y=
=Itgj
-----END PGP SIGNATURE-----

--PEIAKu/WMn1b1Hv9--
