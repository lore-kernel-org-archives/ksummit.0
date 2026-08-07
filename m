Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A57132A3C9
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 13:54:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786110858; cv=none; b=fyPnbUT6UwAmXv4d9Y4TiC11hqtZDhuL572/FTSDpRIuXdGYhO/hpNSSJJw2NyBQYb576P8ipGMGRTlKVTbflAULCjt8ILnLh+40X1T/k6tvpb2ublV9gtx5EJ2BqiBgMbfq7NTQFnmiTZyUgsMVmkJTgM9hgOB9KN4adIOoy0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786110858; c=relaxed/simple;
	bh=HjteQiKzXMpfmm42FVoT1ZURUYuTYnMrJYxfJ4AYUVA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JkfskVGM8IVRCj7LCdlCrCNUNaWRhahy96v/VpvQ3sulKqBc0kiF3UOnXHLuuA728/jOsMPu+ovocKRrj6cShHsNvyerHZ4IdgVxe2M1+m/02GD535jomwrs2teOXyBBgPIPGQIvh/y+QyhBpL3o0M3w0lWn5yigifBtdpkHvb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+zJtPHC; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+zJtPHC"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 079641F00A3A
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 13:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786110852;
	bh=rxdZ1JV7Wd17XWVJlJa3YI2NwPhnV5qwQ89mcIsSKPU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=d+zJtPHC0mKR9B4OpdnzfBo5S5dK0ljFTnvPtagWrYSqAdWrczOKLpqjk1rVuU1wj
	 HGuNC8zY7ZddwsSTMNHI6K4M02bKgv3hXEsOucFPml8UG12o60MHTbjTjFHdHLFsHz
	 xSGwUN/zOB4lqB7rnyHSVdEREL9tWXWIG0IikGz45AgMTeizJ5k30v/ySzkAS+i3+i
	 BVgz5dwfJ2cZr+Stv8LVbOLhoD76i4ImaYoBYkf9yzffBgeJ4f3FzD1N/OksDaTSvz
	 fdhP1IwDgQITXrCEhsVbfuUyQqDAmVFL08dMMGpE5zXGPl3vraG1v7yPVbiPbV9il4
	 W9f1C55NA4rhA==
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5aeb2bc82ccso4150506e87.2
        for <ksummit@lists.linux.dev>; Fri, 07 Aug 2026 06:54:11 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rrpo0cSWwK2K76eDzFQwpguqG9GvAECBdcPmJpBbTTj8fWrFsd1QW73GNoPjNpV4nXI5+CdYnFk@lists.linux.dev
X-Gm-Message-State: AOJu0YzGhyEi65lFKeQ2JK2pGL39ao1ISLFknEobLB4kg+VqznR7X7My
	No8vRBCwkW5YCGswa9cydowhwXCJ6BrqzvsShQvgbI21AO7LxVr2MGI+3y5xQfjFuwmUiLYMe6b
	fKft7JEzF3jqC3DwyxZBjTJtZxjcJI/0=
X-Received: by 2002:a05:6512:31cb:b0:5b0:1c19:2cf8 with SMTP id
 2adb3069b0e04-5b30b729126mr69486e87.11.1786110850443; Fri, 07 Aug 2026
 06:54:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
In-Reply-To: <20260806194153.6443a3ba@gandalf.local.home>
From: "Rafael J. Wysocki (Intel)" <rafael@kernel.org>
Date: Fri, 7 Aug 2026 15:53:57 +0200
X-Gmail-Original-Message-ID: <CAJZ5v0jX+8a1OvovsiE8S8qazCeroGWo5-hdFkJ4mD_79r1hPw@mail.gmail.com>
X-Gm-Features: AUfX_mz5DpN6r-RDX-J2srcGCVSvRXhHvv7AC7LWzmylVWQoonEsrbXAkdOrLy4
Message-ID: <CAJZ5v0jX+8a1OvovsiE8S8qazCeroGWo5-hdFkJ4mD_79r1hPw@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer summit?
To: Steven Rostedt <rostedt@goodmis.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 7, 2026 at 1:41=E2=80=AFAM Steven Rostedt <rostedt@goodmis.org>=
 wrote:
>
> On Thu, 06 Aug 2026 11:34:09 -0400
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
>
>
> >
> > there isn't really anything that would move the needle for a potential
> > sponsor.  Equally, there's nothing really that couldn't have been part
> > of a wider discussion at Plumbers or LSF/MM, so I'm not sure there's
> > anything that actually required discussion at this event (i.e. nothing
> > to move the needle for kernel developers either).
>
> Well, I'm guessing that AI will be a big topic this year at MS. That alon=
e
> may drive up sponsorship! If the AI bubble doesn't pop before then, all w=
e
> need to do is market MS as an gathering of those that will influence AI o=
n
> the Linux kernel. ;-)
>
>
> > As for fixes, one possibility is definitely keeping MS as is and moving
> > the sponsor responsibility to Plumbers, but unless I can strap Linus
> > down and sell companies on pitching to him directly, I fear that would
> > end up creating a US$100k hole in our budget.  Perhaps there are
> > actually outcomes we could sell to sponsors but, because of the reduced
> > audience, we simply don't get to hear about them ... so if you think
> > that now would be the time to say what they are.  Another solution that
> > seems viable would be folding the MS into one of our existing sponsored
> > events, like Plumbers or LSF/MM.  Structurally either would be a fit
> > for the past discussion topics and both could probably accommodate
> > (although I don't think either could expand to a fourth day to do it).
> > A final thing we might do is change the structure of the event itself
> > to have more sponsorable outcomes; perhaps simply making the event more
> > like the kernel summit of old, so moving back the KS track from
> > Plumbers would be enough?
>
> I guess it really comes down to what Linus wants. He's been saying he wou=
ld
> love to get rid of Kernel/Maintainers Summit for years. Does Linus still
> find it useful? It is still good to have the more controversial topics do=
ne
> face to face and allow Linus to listen in. I've been saying he needs to
> interact more with the general community given the number of times he tol=
d
> me that "nobody does that" when I'm hearing from talking with people at
> conferences that several people do do that.
>
> Thus, I still think it is good to find a way to make Linus do what he lov=
es
> and interact with his fellow developers ;-)  But perhaps it's time to
> rethink the format and restructure it once again.

Please note though that Maintainer Summit now plays a more formal role
in the project due to Documentation/process/conclave.rst, so if the
format is changed substantially, it may also call for an update of
that contingency plan.
