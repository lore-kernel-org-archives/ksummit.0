Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9673A8741
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 13:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786111015; cv=none; b=g9EicAlObBeZToMSc7bSoh0DwwGCvlgl9DA2LOBxEEzBDSSTc0qcFegOK1x4Jx5blArcY5vPaIOXlPgBRuTfrWGsJr05H3BnRz7pYZ1zJrfitJs97ytaj9O1bur4F8Qq5K+YTucmSKPfgemcN/DQVxNUJ2dmGiV4nfIqwEpnoJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786111015; c=relaxed/simple;
	bh=Vj3k/h45gTnZRreNyYC7c+/EUUJHa7ozy7FdV/iWhlo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QfQvMbNYlotVyZjOt3KFF2tbOtuei77Je1kxBemQwAQ9WRAK3PSRsvHu5pthu8BIsFx9VfnZHDK6aEY2Hm1gezpH9t66oUB+UbunMunZpY67XzFfQml52zWqJmHdX9u22XVX3g4xhrSgQy1ctrmmOhRYi6lbDBnAVCqv35dEgoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMxXml9O; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMxXml9O"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB56D1F00A3E
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 13:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786111008;
	bh=Vj3k/h45gTnZRreNyYC7c+/EUUJHa7ozy7FdV/iWhlo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=mMxXml9OGKU4XbxSnsN7UF3XxPg/yMXxP484xwTjjETz++uV/Veq7moutkpwzKvKv
	 n+8f5iat48s2tlH4eo0nPpQjBsN9tg6YVN0JhIYHH4+0O3cv4S8Oo8a+0jQ7vEvVaF
	 JFG/YBee/e7eAlidtJiWef18l1Nb1hm+EOoITwtcQiis8jt0C5nMhDEm5mNSyjqd1X
	 8+jzGpUpPPmI8p4XZPt4UFu7+EZtOKeSdrvQWfC10UbdbWjQ0FsbnO0wZ/1ut6RQnG
	 bxg8zUfgG9UoRSg71qBm2dj0RjwnT1S3/+a4Lw1NelBhDbL9B2dypj8zvwSPOKmuOe
	 JFlC8yhB28XyQ==
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5b14d1f9315so2736661e87.2
        for <ksummit@lists.linux.dev>; Fri, 07 Aug 2026 06:56:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Ron9YInSj0mGNE+05wxkC8BUxcxxPLNTuxVyoWy2bEgAVwJe46Gp7G/5eAARLdvj0nUXEzvO27a@lists.linux.dev
X-Gm-Message-State: AOJu0YwSlJFyJcRCpPDu8VORFFMuhUKOsX5AqmCV0CkCd/VYG6qI0+n1
	IRuaVTh+UB0M7qtFU9yuGxoNfrceHuk4mZxlktF9D5DdpgJooMTjgCHKtzPhSTuzmYf5T34W95W
	VFApjJnWrxk08OKM6Kdbvqw56J50Gedo=
X-Received: by 2002:a05:6512:4cc:b0:5b0:1b78:497f with SMTP id
 2adb3069b0e04-5b2f4cc84d8mr2511973e87.41.1786111007208; Fri, 07 Aug 2026
 06:56:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <anSpoxZ9SUBvFOZj@mit.edu> <2026080651-bony-hertz-bfb6@gregkh>
 <20260806-industrious-whippet-of-jest-a91eaa@meerkat> <anThWLhqipEM34kg@stanley.mountain>
 <anVK-qkUOaIJkt9M@mit.edu> <78ee9f53-09b1-4934-82af-25f3652b108a@kernel.org>
 <20260807115603.GH2201016@killaraus.ideasonboard.com> <04b4e9abab2831b177228752860bedab1f15a736.camel@HansenPartnership.com>
 <20260807124017.GK2201016@killaraus.ideasonboard.com> <anXT7z3kwXnPtGGF@x1> <20260807133658.GO2201016@killaraus.ideasonboard.com>
In-Reply-To: <20260807133658.GO2201016@killaraus.ideasonboard.com>
From: "Rafael J. Wysocki (Intel)" <rafael@kernel.org>
Date: Fri, 7 Aug 2026 15:56:34 +0200
X-Gmail-Original-Message-ID: <CAJZ5v0gSiyr7d=+72PtAiH1P9MP1g_AD-gTHB-JT+CBQewHXsg@mail.gmail.com>
X-Gm-Features: AUfX_mxQXyxGRy-xww4IEbU-G36mXFcOmrMuVSw9fYCdrEUXJ3LlDBP-GB24ntI
Message-ID: <CAJZ5v0gSiyr7d=+72PtAiH1P9MP1g_AD-gTHB-JT+CBQewHXsg@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, 
	Matthieu Baerts <matttbe@kernel.org>, Theodore Tso <tytso@mit.edu>, Dan Carpenter <error27@gmail.com>, 
	Konstantin Ryabitsev <mricon@kernel.org>, Greg KH <greg@kroah.com>, Jonathan Corbet <corbet@lwn.net>, 
	ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 7, 2026 at 3:37=E2=80=AFPM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> On Fri, Aug 07, 2026 at 09:47:43AM -0300, Arnaldo Carvalho de Melo wrote:
> > On Fri, Aug 07, 2026 at 03:40:17PM +0300, Laurent Pinchart wrote:
> > > On Fri, Aug 07, 2026 at 08:28:08AM -0400, James Bottomley wrote:
> > > > On Fri, 2026-08-07 at 14:56 +0300, Laurent Pinchart wrote:
> > > > > On Fri, Aug 07, 2026 at 11:20:39AM +0200, Matthieu Baerts wrote:
> > > > > > On 07/08/2026 05:23, Theodore Tso wrote:
> > > > > > > There are some few exceptions, where a fix can't be easily
> > > > > > > backported to the LTS branch, and so a different way of fixin=
g a
> > > > > > > particular serious patch needs to be applied to the LTS branc=
h.
> > > > > > > But normally this will be explicitly stated in the commit
> > > > > > > description, but we don't do that in a structured way, so it
> > > > > > > might be hard for a non-LLM bot to figure this out.
> > > > > >
> > > > > > Good point, but instead of looking at the patch description, it
> > > > > > might be enough to look at the header: an exception could be ad=
ded
> > > > > > for patches sent to the stable ML with a version in the prefix.
> > > > > >
> > > > > > But back to the idea of checking if the patch can apply: it mig=
ht
> > > > > > not be easy to deal with all the different trees and branches.
> > > > > > There might be some dependences that are still in review, or
> > > > > > applied somewhere but not in linux-next yet, or conflicts with
> > > > > > linux-next, etc.
> > > > >
> > > > > This is an issue that isn't limited to newcomers. As a maintainer=
, I
> > > > > sometimes don't know what I should apply a patch series on. We ha=
ve
> > > > > the base-commit and prerequisite-patch-id trailers added by b4 th=
at
> > > > > help a lot there, but not everybody uses them. If a mechanism tha=
t
> > > > > flags the issue for newcomers could also ensure that every patch
> > > > > series carries proper base information, that would be a very nice
> > > > > side effect. This may include adding new trailers if some use cas=
es
> > > > > are not currently covered.
> > > >
> > > > There are two reasons not to insist too rigidly on base commit: fir=
stly
> > > > because a lot of series are invariant (they apply to any tree becau=
se
> > > > there's been no commits in the areas patched)
> > >
> > > Then the author could pick any base commit available in Linus' tree
> > > the relevant subsystem tree (typically an upstream release of the nex=
t
> > > branch of the subsystem). Would that have any drawback compared to no=
t
> > > specifying any base commit at all ?
> >
> > What if for some reason someone wants to apply it to some base that is
> > before the one specified? That person would be mislead into thinking
> > that wouldn't be possible or automation would refuse to do so?
> >
> > I think if it is _strictly_ need to use some specific base commit, then
> > that is a requirement, no?
>
> It depends on how we interpret the trailers. base-commit is generated by
> b4, and I understand it as meaning the submitter used the specified
> commit as a base.

That is also my understanding of it.

> It doesn't have to mean that maintainers have to apply
> the series on that exact base. Compared to having no base specified, it
> tells what base the series *can* apply to.

A bit more than this IMV: This is the tree that the series has been
developed against.

So, for instance, it may be used by bots like Sashiko as a reference point.

> I think that's useful information.

Agreed.
