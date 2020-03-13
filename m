Return-Path: <SRS0=mR8n=46=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58C29C10DCE
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 15:06:35 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 28BBD206FA
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 15:06:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="Rz/soQ/C"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 28BBD206FA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BDD00895A8;
	Fri, 13 Mar 2020 15:06:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ux6oFvwotPk9; Fri, 13 Mar 2020 15:06:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 77C838957E;
	Fri, 13 Mar 2020 15:06:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3664BC18D3;
	Fri, 13 Mar 2020 15:06:06 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F08CFC0177
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 13 Mar 2020 15:06:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DF14A8723A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 13 Mar 2020 15:06:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S_b4gH2zMjGO
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 13 Mar 2020 15:06:02 +0000 (UTC)
X-Greylist: delayed 00:06:52 by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A3E8187236
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 13 Mar 2020 15:06:02 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id 6so10338573wmi.5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 13 Mar 2020 08:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=IsxGkk+gAgJpHcmpHDsJnPiHzi+FE2XR1Jj6QRHjerU=;
 b=Rz/soQ/C46cwaYR7aKIWsNra445H0d2rukyhMOhm1cqtBtejmO9q/JkH1BUuPHwwFE
 ygX5rHuIa5fQmteBLUkmpdbZQ+dkVdaN+Oe/vxVFY3jr52WvieJH+Ov9qgUgr5GAL5Fc
 CbOcl3yKO9e0LxwTa6LfgvUh3WrfICXp3+NN4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=IsxGkk+gAgJpHcmpHDsJnPiHzi+FE2XR1Jj6QRHjerU=;
 b=caLJLr27EaP1UYblVUt4r2LohpHrBgUresWq3mgqUmfHwTW4i/YTUCtTBeHbIK4j65
 bGoporNrk6zPr7l0H08jNXl9Sj1oUUR4qpgc1KShduQ0xE6xfk3ce0L3NvYdE6WmK5+C
 GbkHAaoVH7NP/ddaRXv/snq30/riT1fSy+8yi07+nSnR9g/Wd7XkhhMsB0h6G71NXkIn
 ZDAW+STmkfeSZZeL6j1LV2vCe3u4wmporBXqNBEzWwZnlHcorG8SlO/6XE0QVTT52Ggr
 NdARu79YEPRm5x7kOXdfc9vfPQOIhq3FSsU2bRWDFTPM97fn7kVRg4nyxIcwGYDPkeLd
 +LVA==
X-Gm-Message-State: ANhLgQ1AiBW3ObnpzfEMxhcThN4AQXvlOJ+UeS4P13mfArv+9gaRFvek
 bHTyRPuzSfUlK8jM/KchCl2KA1MZwwGZImSw
X-Google-Smtp-Source: ADFU+vt6Ee+YrRJwJg+LkR0T2Wxbv9uAQ1pNC7GD+N+YSDX8d5qq7hUzS99JfMCrFmREdoUUQmPlRg==
X-Received: by 2002:a05:600c:218f:: with SMTP id
 e15mr11962354wme.152.1584111548699; 
 Fri, 13 Mar 2020 07:59:08 -0700 (PDT)
Received: from chatter.i7.local ([185.220.101.34])
 by smtp.gmail.com with ESMTPSA id w204sm7508882wma.1.2020.03.13.07.59.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 07:59:07 -0700 (PDT)
Date: Fri, 13 Mar 2020 10:59:03 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200313145903.vwdpawgcve73hdmj@chatter.i7.local>
Mail-Followup-To: Jani Nikula <jani.nikula@intel.com>,
 Greg KH <greg@kroah.com>, "Bird, Tim" <Tim.Bird@sony.com>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>, 
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <6d6dd6fa-880f-01fe-6177-281572aed703@labbott.name>
 <20200312003436.GF1639@pendragon.ideasonboard.com>
 <MWHPR13MB0895E133EC528ECF50A22100FDFD0@MWHPR13MB0895.namprd13.prod.outlook.com>
 <20200313031947.GC225435@mit.edu> <87d09gljhj.fsf@intel.com>
 <20200313093548.GA2089143@kroah.com> <877dzolf7n.fsf@intel.com>
MIME-Version: 1.0
In-Reply-To: <877dzolf7n.fsf@intel.com>
Cc: "Bird, Tim" <Tim.Bird@sony.com>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] Linux Foundation
 Technical Advisory Board Elections -- Change to charter
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1286041778206719651=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>


--===============1286041778206719651==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4lcrcqo4orbdsa5y"
Content-Disposition: inline


--4lcrcqo4orbdsa5y
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 13, 2020 at 12:30:20PM +0200, Jani Nikula wrote:
> There is no way of knowing whether you're eligible to vote until you
> apply for a kernel.org account and either get approved or rejected.
>=20
> The current "obvious" requirement levels are not obvious to me. How many
> contributions is enough? Is everyone in MAINTAINERS eligible, or do you
> have to be a high-profile maintainer/developer? What is a high-profile
> developer? How many people in the web of trust must you have met in
> person?

Anyone listed in MAINTAINERS is eligible to get an auto-approved account=20
on kernel.org, but they *must* satisfy the web of trust requirement:

- their key is signed by 2 other people who already have a kernel.org=20
  account (marginal trust), OR
- their key is signed by one of the following people (full trust):

  - H. Peter Anvin
  - Greg Kroah-Hartman
  - Ted Ts'o
  - Linus Torvalds
  - Dirk Hohndel
  - James Bottomley

Anyone who is not in MAINTAINERS but feel they should have an account on=20
kernel.org can still apply if they provide a reason behind their=20
request. Such cases are fairly rare and usually include collaboration on=20
non-kernel projects that are also hosted on kernel.org (there aren't=20
that many, but there are a few). The web of trust requirement is exactly=20
the same, but the final approval is not automatic. I forward these=20
requests to the above 6 people and it is sufficient for at least one=20
person to say "aye" for the account to be approved.

It is also important to highlight a distinction between "having an=20
account" and having a kernel.org email forwarding address. For this=20
particular case I was requested to provide a list of people with *active=20
accounts* on kernel.org, meaning that they have performed a git+ssh=20
operation within the past 12 months.

> And it actually seems like you think it's a good thing the admin team
> can make a subjective decision on the above.

The LF IT admin team does not make any decisions -- all decisions are=20
taken by the above 6 people (unless the person is in MAINTAINERS, in=20
which case their approval is implicit).

> It may seem completely transparent and fair and objective on the
> *inside*, but it does not look that way on the *outside*. Which is kind
> of the definition of transparent. Or lack of.

I hope I helped clarify the procedure. Of course, as the person actually=20
creating accounts I'm the final arbiter of all decisions. If I had any=20
malicious intents, I could totally subvert the whole process -- so in=20
the end you just have to trust me to be on the side of "lawful good."

-K

--4lcrcqo4orbdsa5y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQR2vl2yUnHhSB5njDW2xBzjVmSZbAUCXmuftQAKCRC2xBzjVmSZ
bJAtAQCpHec4XGPbIsLXVSLSnco3sea7WWrflVzmUOx3OKLChgEA67pYUzWNdmDv
yVutxmm+efbawqG95EdbH1REDjLWgwg=
=k55k
-----END PGP SIGNATURE-----

--4lcrcqo4orbdsa5y--

--===============1286041778206719651==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============1286041778206719651==--
