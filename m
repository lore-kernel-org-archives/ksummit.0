Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792672806;
	b=eG8Hv9fEpshc1+BemQ1Q7LLiJuIN6xcbstyxyEoFkwhN5qAvNOvqu5nS2XfJPT8VoL+d
	 YZDLmTSc9STdBRe9q765QTpLzpDXB/d9UHzb8FC7peLhOL7FA2EZWN7wMj+YU8SwraudO
	 ewC3kBev2zQzvGQt10vs55kPaXHAtk9mO/nbPUZzWlrkc51wD8IT1x5cI9i90dNhftcQc
	 +G8Cp/QKs1EEYOZlgvg6xetml847FPZHA3VasGI6dGy/1f6upVssRJrEpiK9Gt1W8yt5N
	 J55n1ONyTXN/Urhh5nXV32VrasMQQC/wIBRGTDZ2raEdpcHwX4zq8LdRDMKz7v8dn7A==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792672806;
	h=Received:DKIM-Signature:Received:X-Forwarded-Encrypted:
	 X-Gm-Message-State:X-Received:MIME-Version:References:In-Reply-To:
	 From:Date:X-Gmail-Original-Message-ID:X-Gm-Features:Message-ID:
	 Subject:To:Cc:Content-Type:Content-Transfer-Encoding;
	bh=fbAd6sOH6jtlVaqldmciSJ6TDZjPBt59P7MHuVHt/uI=;
	b=JclFMHvKVIPpnMD2MCEDbpaM1Z6iOZH4nChu97r0vgqkmUhiCc7KOd+gEFfgE73EAChe
	 QbanyaVPESEL/o5tZvSjL16HYNHQ2QiOm+frXNnYjEwVP0UlIAffMQ2mDfEvmmOie6NqJ
	 e3MZeVx9I7gwAxj0Zc4EKnpMQQR7tu9DD8d9tSPSKT8Qm98DI1XXiUbUWK6wcFwT2yXDa
	 5Rsiqi9lLUuFAF6v1brFUh/XxL6voL1Z0OMFyTIrnACjE997zZEanHZsexdDjp5LVrTqd
	 GwD2T3ZoFE4DXcmj4fBtzEq1CB9/wq7fiq30pljG4byPH7VotDM2qE7BhWqR5qoR4ng==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b="glMlBS/v";
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C672606A31B
	for <ksummit@lists.linux.dev>; Thu, 22 Oct 2026 12:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=glMlBS/v
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 331391F000C1
	for <ksummit@lists.linux.dev>; Thu, 22 Oct 2026 12:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792672806;
	bh=fbAd6sOH6jtlVaqldmciSJ6TDZjPBt59P7MHuVHt/uI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=glMlBS/vhtrYgeFZFXkz3d3cKLUmWxTrtAXwg2CVC+ztRyt96efjJnaQpLWj7WUVQ
	 c++TvBpCQd/CpA2vf5siz6BPwxkERAIjkhXaPUQ7cINwdLPJjvJTQ+pAMlLy5D/A86
	 P4d1VAco13/JvxZTR4Ps4E/Omnff60B/qi2nnriLqBVAF5Tw9D2M/C2c164UzhWsXc
	 On74y4fdD9aPO7WACA4oiyMcAfRewsidG3SUk8797RNf6USD373DBBUOgM3vJNENnA
	 gAmjQGG6RTtxTnAnQFS6fUUJlzYh2GKSr89cP7vgdbzoL37ySxKbDJAnhIjv4hGJIk
	 e+OB7KCYu/Oug==
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5b8b3c8c4bbso886096e87.0
        for <ksummit@lists.linux.dev>; Thu, 22 Oct 2026 05:40:06 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBzBYAScoi/IRYh/Adp/AgDGscCrgGsjxNy+/gzADcnyXrmBrv7rrkHzZcM24yKWAbnszbG9j02P@lists.linux.dev
X-Gm-Message-State: AFq9FYIhaTMcOQ4f+XdbutXCY38tz6MhknSeyNxBF09XyvN+Sjrd3+sW
	aW0u0fg4YWPnxsnjVsZp7uwNCW8cqHP2D4LheADlHBHjVScHvTLcOhj91pXNh9PgTkQ/HUL0Olm
	FPuf8DaPoN7IIdYA3Q+qhwuH6uBX/ys0=
X-Received: by 2002:a05:6512:2398:b0:5b8:f56d:d13 with SMTP id
 2adb3069b0e04-5bfa72f69edmr901729e87.40.1792672804655; Thu, 22 Oct 2026
 05:40:04 -0700 (PDT)
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Post: <mailto:ksummit@lists.linux.dev>
List-Help: <mailto:ksummit+help@lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ksummit+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
References: <atO3pCuUxI950ftN@mit.edu> <3354ebda-5158-489b-a577-5cb10e5d5fb0@oss.qualcomm.com>
 <atZ4J86j7CXF82HX@mit.edu> <2fef166e-088d-4ffe-8d0a-0143aebc1b26@acm.org>
 <ate8oESqneK-3sQJ@mit.edu> <7e473af8-2f7a-4a36-a926-e756873c9c52@linuxfoundation.org>
 <atic3bbDeyJI6MJs@sirena.co.uk> <atjlUoEmTagZjrYI@mit.edu>
 <atjpS__OwjZ-Q_Fh@sirena.org.uk> <20261021114524.4c2ea2a31a9d527b78e78768@linux-foundation.org>
 <atn8Bcgvj9RGGTL3@sirena.co.uk>
In-Reply-To: <atn8Bcgvj9RGGTL3@sirena.co.uk>
From: "Rafael J. Wysocki (Intel)" <rafael@kernel.org>
Date: Thu, 22 Oct 2026 14:37:42 +0200
X-Gmail-Original-Message-ID: <CAJZ5v0jbfvLO841jo7sxvN7uWGqeRk=AcPrXzgqMbyOTbSBj7Q@mail.gmail.com>
X-Gm-Features: AclHuK_zs3_d2tDskXJZLyTEcUVJi-R-HAXw9hTiIyFxOv0fmAMEBXdUzwh7MJg
Message-ID: <CAJZ5v0jbfvLO841jo7sxvN7uWGqeRk=AcPrXzgqMbyOTbSBj7Q@mail.gmail.com>
Subject: Re: Patch pre-submission to Sashiko
To: Mark Brown <broonie@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Theodore Tso <tytso@mit.edu>, 
	Shuah Khan <skhan@linuxfoundation.org>, Bart Van Assche <bvanassche@acm.org>, 
	johannes.goede@oss.qualcomm.com, Jiri Kosina <jikos@kernel.org>, ksummit@lists.linux.dev, 
	sashiko@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 22, 2026 at 2:05=E2=80=AFPM Mark Brown <broonie@kernel.org> wro=
te:
>
> On Wed, Oct 21, 2026 at 11:45:24AM -0700, Andrew Morton wrote:
>
> > If someone's fixing something I don't see much value in
> > retaining/maintaining a test case for something we've already fixed.
> > This is considered good engineering practice but why bother - we fixed
> > it!  Move on.
>
> Like others have said there's a bunch of people would say the opposite.
> In the particular case I referenced where the code is generally pretty
> fragile (we have rather a lot of paths through that code) and we want to
> do a bunch of refactoring in the area it seems especially useful to keep
> the coverage.  It's far too likely that someone could make a mistake in
> this area, and quite likely that someone would want to do relevant work.

That part I actually agree with.
