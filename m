Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8816F36AB4E
	for <ksummit@lists.linux.dev>; Fri,  6 Mar 2026 15:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772810580; cv=none; b=I2ZI7UiC8SqKx8Ie7lL44vOx+tXr/pIKuSbiexCVJ/VZu4RBIu5eACcUnep8d5kytaZuB0fhQJrFmLL31cVZUAt8aUoupnLUFSZM4Gjuru0NhoIUgesA7m+87AcaIlPKLl7Pyr1q4alREWHVw6rgdmSJ6qnRh89PxzdAVWV6Tfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772810580; c=relaxed/simple;
	bh=bTTmA2jJw5FW9RYl6odcZcEsssBz22z6NuYuUucf8yo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dUn5HgcoCKYe2UUGeDa4Kl68L7owNa9+fzPRPylG1L68wKrMo2z9/lt1rpjFyvjqdIBuQVE6hO0CCq9EC01ng18tC5qTaUc6aPMuzQHVYshvqRxdkXRR994rqjlB/NyWe1CD96UyNPHcOaaXT+7RWLWy6nuYmEFaz31ZI6OHnUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=hYvlX1YR; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="hYvlX1YR"
Received: from killaraus.ideasonboard.com (85-76-15-83-nat.elisa-mobile.fi [85.76.15.83])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id BB830454;
	Fri,  6 Mar 2026 16:21:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1772810509;
	bh=bTTmA2jJw5FW9RYl6odcZcEsssBz22z6NuYuUucf8yo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hYvlX1YRplHqnEFX3ER82S4wT71/e9oRmJBv3Eup316gFPq9zHghmCJzjvC+0Qlqj
	 IG1vPWCs/awYTIlUQ4loyDeCi6Yhsdk6MXMX5L23ao8xZoci5RKEk71BGHj+vxgAjj
	 lO5t9G1A57p/boktHT+JHhXEQ4SjItotnVuQJ9WI=
Date: Fri, 6 Mar 2026 16:22:50 +0100
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sasha Levin <sashal@kernel.org>
Cc: Steven Rostedt <rostedt@goodmis.org>,
	Alexey Dobriyan <adobriyan@gmail.com>, torvalds@linuxfoundation.org,
	akpm@linux-foundation.org, geert@linux-m68k.org,
	konstantin@linuxfoundation.org, ksummit@lists.linux.dev,
	linux@leemhuis.info, richard@nod.at, users@kernel.org
Subject: Re: [RFC] kallsyms: embed source file:line info in kernel stack
 traces
Message-ID: <20260306152250.GB275549@killaraus.ideasonboard.com>
References: <CAHk-=wiUOYn4nyWyuvLh1O0j2reB_ec+4DAO06h7Pu36aA4iDg@mail.gmail.com>
 <20260302202828.2722037-1-sashal@kernel.org>
 <7e3ee6b2-62f9-4876-ae1a-d1473d126309@p183>
 <20260303081748.3d48c3f6@gandalf.local.home>
 <aacNzgFsnpGvG4I0@laps>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aacNzgFsnpGvG4I0@laps>

On Tue, Mar 03, 2026 at 11:35:26AM -0500, Sasha Levin wrote:
> On Tue, Mar 03, 2026 at 08:17:48AM -0500, Steven Rostedt wrote:
> > On Tue, 3 Mar 2026 08:39:36 +0300 Alexey Dobriyan wrote:
> >> On Mon, Mar 02, 2026 at 03:28:28PM -0500, Sasha Levin wrote:
> >> >   [   11.206749]  dump_stack_lvl+0x5d/0x80 (lib/dump_stack.c:94)
> >>
> >> This is super useful, thanks.
> >>
> >> Can the 0x prefix be dropped as well?
> >
> > And print in decimal? Without the 0x, it could be ambiguous that it's hex.
> >
> >> It is shorter to print in decimal up to 1 million.
> >>
> >> () are just character noise, I'd drop them
> >
> > I actually prefer them ;-)
> >
> > Anyway, this looks more like a feature that is for us kernel developers
> > debugging our own kernels than something that should be added to a distro.
> > decode_stacktrace.pl can be used for those because distro kernels always
> > supply debug data that can be downloaded at any time.
> 
> You know, that's what I thought when I was writing that little "bug bot" you
> saw yesterday: if I just construct the right prompts for each distro, the LLM
> can go ahead and fetch debug symbols and translate those call traces for us.

What's the advantage using an LLM/agent here ? Mapping a string to a URL
seems easy enough, especially given that ...

> What I've learned (and I might be mistaken, so corrections welcome!) is:
> 
>   - Debian is pretty good at it, but they don't store debug symbols for the
>     security archive. As an example, my build machine is currently running
> 6.17.13+deb14-amd64, and for the life of me I can't dig up the debug symbols
> even manually.
> 
>   - Fedora only provides the latest kernel. We can fish the older ones from
>     Koji, but it's quite hard nailing down the correct ones.
> 
>   - Arch simply doesn't provide debug symbols.
> 
>   - Tumbleweed provides only 30 days of archives.
> 
>   - Gentoo (binary packages) doesn't provide them at all (though is planning to).
> 
>   - Ubuntu provides them for the lifetime of the release, but their forums are
>     full of reports of missing symbols and server issues.
> 
>   - Rocky is similar to ubuntu
>     (https://forums.rockylinux.org/t/rocky-9-4-still-missing-kernel-debuginfo-common/15169
> for example).

... it sounds like we need to work with distros to improve availability
of downloadable debuginfo, so we'll know the URLs.

-- 
Regards,

Laurent Pinchart
