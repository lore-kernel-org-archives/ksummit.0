Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFEC52FE42
	for <ksummit@lists.linux.dev>; Wed, 14 Oct 2026 13:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791985904; cv=none; b=bJb1wvMGTyiqdOuLa6ZNM+IDw7qdMYIbzdKDt8+yWtp8a3Nl0qbJt4iRY4rTwgrcxCkM2PjCOixx6Ld0gh2yWhWbPnRF49H7skR17NQ5GQwgNkgGJHX7Liuf1YiqP76aBHl1hxDSZfXulCdPnhK8ppqe8dDKwVI2T0O1WoBdX40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791985904; c=relaxed/simple;
	bh=tgmSYRODldtiyEy+JXapeeoUqKtXmFc3P6QA8yFixoU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CmZlpj3/kvCyObtgRAkeFfvl68G1YfTc2GFlxH6i09H5EhSmxpTd489krNwVfV8rY1lhidlzh7WBWaBsCaMtSqzPP65bNgB15zT2Tgm3qJac0RfY+MucodEUacPyjnpnXHHDXkC6fy2Uu/GcNq3a7cRm4XTDm9vvQWdYmIUyqjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-6acb57c2b88so1322165a12.2
        for <ksummit@lists.linux.dev>; Wed, 14 Oct 2026 06:51:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791985901; x=1792590701;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=IEXfd68nGcyHVRwrJJo9fpBrzQEvxp+Eo/L7XZpCrXA=;
        b=TNC5q7yNGSTQA2+PjWsGrM/YfvVrzJhrnYmpTkLJ+Q0xx0uZesdZ/iKr2s1Ka1ezqa
         mycykhjnD8f8ioD+LuolSCM1e2+6tnddsnofRoUXXuvd+V41gcPdScPo4S++G8A5mFVF
         QHdf8aZUM91SN9xa5Pxtpm2h5+OKGGsglbh2tIwIZBT4Q4981kYDBaqxqgNJCQ9o3Z9L
         Wg63JUX85zkGZDmCmLghyLiEdNRWyZovphY1zV4LI4t2zSr4VwfkzaHNW/+pdxKVXQLK
         OW2lu1Spdslbbvw18nalu+9RqQFKttBHmpIY3rr/R+wNF6AY/kkuzAjK4ZxtEVCMzEwq
         ohuw==
X-Forwarded-Encrypted: i=1; AKwUvByOkwbTJXyp7s1c4W+qdXHbok82HMCa1lT1j2O4icw+iuour8aszdOD3oDG9DUl4D0tiOBSF9lM@lists.linux.dev
X-Gm-Message-State: AFq9FYJbxLdJ1+/RNTTCobnjg+7rwzPBs6oqosi50WGDRXkD18VgIqWU
	c4/2ZNfygIRvJDn75S54rYC3qKGJBYXHWxeFGK0moY33uELCjSXC7RDW7c8RIQDtAXo=
X-Gm-Gg: AYBFou3m4Wf8V7vKwf7VMEGrkOqG292IQRNaRYyfAN6MaWzUYIc9uBFqC6yOsHiE/FQ
	Nho9zxjNSgox4wAHFPIas1Hi+wO9oAJ8wrQv4/UTAK2x3MZvTxhKf/Mk5nSDm0m1OC9WwOWkfxZ
	n32LpCY9tjolKNAaXxKUb8Sg2p/pCM5Kk8NgzU3J1VC6CBQOrwXqRe1hVPZf0/p0pDdaHjLMgcp
	ydskhse66L/iyLrGLpDgXkFM3UAhG4LR6ROM9pae7ApOhSpitMmA05Q1oGrvihF0vNGHHR6zpa9
	sliCcy3N63mfDU58ew6qxWCrYUcz2OywfwaehdIt82lV1omkOG+83oUSLTg2FCldHBbG4w5NiLe
	X20rGLug8UI2ak4oZi9yZ1H4JpKCS6jBVHgvpmHGJsibKhEOziNjJ+9WAwyZdr1RkiNIHDbYU/D
	LLCtH5Cn9fetf8jg3QznH9XiHq22t7bxhMVIQMf/YyOzzTOoJANgIyfDD/cot5c9V16wIm81sw1
	Wa/hpPjnU+SEM55adZUjRwiTd4XB60kVmN0
X-Received: by 2002:a05:6402:a25a:20b0:6b1:a544:da83 with SMTP id 4fb4d7f45d1cf-6b1a544df95mr7058096a12.22.1791985901145;
        Wed, 14 Oct 2026 06:51:41 -0700 (PDT)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com. [209.85.208.45])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b203839764sm1164422a12.7.2026.10.14.06.51.40
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2026 06:51:40 -0700 (PDT)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-6ae27f06c2fso1861392a12.3
        for <ksummit@lists.linux.dev>; Wed, 14 Oct 2026 06:51:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBzW97dWPNbmnIc6iJ8rZQpsozKJjLUPBWO05nQWkbRV86WHZeixNSlTNTDPEVWz7s7NUnNFxgAK@lists.linux.dev
X-Received: by 2002:a05:6402:3046:20b0:6b1:da03:d010 with SMTP id
 4fb4d7f45d1cf-6b1da03d6b8mr4816329a12.23.1791985900158; Wed, 14 Oct 2026
 06:51:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20261012213452.1863248-1-sashal@kernel.org> <87zewiy1sd.fsf@trenco.lwn.net>
 <202610122047.A9E381A@keescook>
In-Reply-To: <202610122047.A9E381A@keescook>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Oct 2026 15:51:27 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXR+U+pgyN+B=trSuPJuS5Kn1-kN=VMFPRSvSUiiwbqDg@mail.gmail.com>
X-Gm-Features: AclHuK_-G5twnGpuXtga5uzESM43gtwqSHGN6ArqXvmpzC19Pilix33WOTvsZNE
Message-ID: <CAMuHMdXR+U+pgyN+B=trSuPJuS5Kn1-kN=VMFPRSvSUiiwbqDg@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] agents: add skills for Fixes tags, stable tags,
 similar bugs, and commit messages
To: Kees Cook <kees@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>, workflows@vger.kernel.org, 
	ksummit@lists.linux.dev, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>, 
	Randy Dunlap <rdunlap@infradead.org>, Mark Brown <broonie@kernel.org>, 
	"Theodore Ts'o" <tytso@mit.edu>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Leon Romanovsky <leon@kernel.org>, 
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>, Thorsten Leemhuis <linux@leemhuis.info>, 
	"Michael S . Tsirkin" <mst@redhat.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 13 Oct 2026 at 05:49, Kees Cook <kees@kernel.org> wrote:
> On Mon, Oct 12, 2026 at 04:47:14PM -0600, Jonathan Corbet wrote:
> > Sasha Levin <sashal@kernel.org> writes:
> > > At the Maintainers Summit, Ted asked whether the stable trees have a way
> > > to deal with incorrect Fixes tags. Hannes estimated that 15-20% of them
> > > are wrong, often because the author ran git blame and took the first
> > > commit that touched the line [1]. We use LLM workflows to find the
> > > commit that actually introduced a bug, and others asked us to share
> > > them.
> > >
> > > This series adds them as agent skills under agents/skills/, together
> > > with a skill for writing commit messages:
> >
> > Time to argue for a more fuchsia shade of mauve without actually getting
> > into the substance of what you're doing...:)
> >
> > I wonder about the top-level agents/ directory.  If we regard this
> > material as documentation, perhaps the "skills" should go there too?  As
> > readable text, they might just help to improve human skills as well,
> > assuming we think we still need those.  Under Documentation, they could
> > be built into the rendered docs and made more widely available.
> >
> > Otherwise, if this is primarily a development tool, perhaps under tools/
> > makes sense?
> >
> > I lack strong opinions here, but figured I would ask the question.
>
> I was expecting this to appear under Documentation/. The agents are
> designed to read human text, so let's make it at least passingly
> sensible for humans to read too. :)

The expectation is that the agents are becoming better in understanding,
so more "instructions" can be shared?

If that is not the case, perhaps we need
Documentation/translations/simple/, cfr. https://simple.wikipedia? ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
