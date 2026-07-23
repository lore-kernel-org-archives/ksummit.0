Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A69B72C11CA
	for <ksummit@lists.linux.dev>; Thu, 23 Jul 2026 01:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784769794; cv=none; b=nff0TK1E3Jp/JaKS0JqMI+ElhpqP98skED+P93sIb2X4TInwbCZAX9N1PL6XyuD72993o+yTmOnycwN105T6M8a0Mt56KSkjpTgFOKWstNEYQQrg5Xh16Tiuu06PisXGpGpAjiNNc5UGTLBqcopTVHOMUmEKO2AY8z6ZwVLryOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784769794; c=relaxed/simple;
	bh=sxo1LWyKp1SQeLELfRfWS8gInJBhzMmi/83h8o7tcpI=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=NI0lCaEIxG8UY7c7oL+VwVa13ZCPzr5cV4ps9wugZTHxVEyevc3waCOJfIu//myINOpgwZJP8BZXNcNd778B8jamzS+yDYthWA8LOGVCg9wK56YsLMbqeOE0aM6kv605oyYwtyWKndhGj3gK/K5vOFDrQyDLGuk4jOqn7omRDZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzyQxnve; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzyQxnve"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 143201F000E9;
	Thu, 23 Jul 2026 01:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784769793;
	bh=sxo1LWyKp1SQeLELfRfWS8gInJBhzMmi/83h8o7tcpI=;
	h=Date:From:To:CC:Subject:In-Reply-To:References;
	b=hzyQxnvePw/NgAba3f/18ZPEzWjgXZR+wOkuT03r5M1xC9kP+8o0OUbB/VnUaHTSr
	 3vF4qsTw++w5tWDhetTLwLCsS1+g4eoDEH59viDkBh/alCJbNSlSRsyjO6JwGF40g1
	 1BBiktC9jInUICKyU2EYtHsI4OMXwoNjWXJo4oAAZ56gNupdKxql0NIqdEqqzwlRkV
	 SvW1C7x+gjaN/ZN2GpVgh94bFZ4K4xCIm/db43iLtNW9clHOfqx7+ZWHwpNgRYHUCP
	 mof6YJ09TAjSv1e2A80dFrE1I6+w+s5Oo5Q+Kl4MqKpawm/XC/3UGtjCg5XDzZk/az
	 WXTnaR9L2R47g==
Date: Wed, 22 Jul 2026 17:26:30 -0700
From: Kees Cook <kees@kernel.org>
To: Konstantin Ryabitsev <mricon@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
CC: Jori Koolstra <jkoolstra@xs4all.nl>, Sasha Levin <sashal@kernel.org>,
 Mark Brown <broonie@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 ksummit@lists.linux.dev
Subject: =?US-ASCII?Q?Re=3A_=5BMAINTAINERS_SUMMIT=5D_Other_LLM-r?=
 =?US-ASCII?Q?elated_topics_-_tags=2C_newcomers=2C_etc?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20260722-uncovered-clam-of-bloom-03ebed@meerkat>
References: <87wluv7yzc.fsf@trenco.lwn.net> <alj4mYFMfZvuarfx@laps> <daea687e-46ef-4e00-9188-d14a663f1428@sirena.org.uk> <alkFzdJobnnMjJ4v@laps> <amAEIpVXxJbVgT2Z@lt-jori.localdomain> <CAHk-=wgbGarE7Ozw4VG6oUKDj9pk-8DRoDiX00bo1MwEMm9UWQ@mail.gmail.com> <20260722-uncovered-clam-of-bloom-03ebed@meerkat>
Message-ID: <35426E86-9663-48D7-8899-B82D62D04A84@kernel.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable



On July 22, 2026 10:48:40 AM PDT, Konstantin Ryabitsev <mricon@kernel=2Eor=
g> wrote:
>On Tue, Jul 21, 2026 at 05:57:38PM -0700, Linus Torvalds wrote:
>> Or it can happen by looking at the patch itself, and trusting the
>> contribution that way (and then the submitter grows his or her trust
>> over time that way=2E=2E
>>=20
>> But basically, without trusting a submission some way, the submission
>> shouldn't be accepted=2E
>
>At the danger of introducing some kind of "karma system," how do we want =
to
>build this trust? We already do end-to-end attestation, but a) not everyo=
ne
>makes use of it, and b) it still hinges on name recognition=2E
>
>Do we want to dip our toes into some kind of "how many times have I accep=
ted
>patches from this person" automatic accounting system?

This kind of reminds of Debian's maintainer "recency" reporting=2E "This p=
erson sent email to this or that list, committed over there, etc" as an eas=
y to see a per-person overview/dashboard of activity=2E Maybe something lik=
e this for contributors would be good? It'd kind of be an extension of the =
existing tools LWN (and Greg?) use for attribution=2E

-Kees

--=20
Kees Cook
