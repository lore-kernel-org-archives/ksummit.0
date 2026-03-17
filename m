Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AF08192D97
	for <ksummit@lists.linux.dev>; Tue, 17 Mar 2026 07:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773733868; cv=none; b=Mt1TbSQ7hHO2xEkGSMH3zTAgtPc2O5D3DVzrUhfswKoAEiFQEGIO562/kIFc8iAk4BOseGmKOjOXy1GNyEqrB6R+vQhN48LuQ8kgI36hiuAkIm2yF6HxEVNV0LwT1eESFTdMrLsJWUaNVl2Ti/zr1e4PXCFc7RaZ8BYcWLyLIBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773733868; c=relaxed/simple;
	bh=VQOuwhEtLzHEY1C7LlONnYPk+gDaCuefsotr4p0cNZs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DsAzukhQntFSoVgO6HuShD2X/r9HPgGXh39nEdWZAmsLCF7/JodCSiEigVI+s5xvZgvX/1TfsiK9ofDDSKRlVY4XvLK8xUrj/rm3knuEsiHa8tcyT2POxgKnR3ISGU8zMaFK3HLiYJAGR0lDmEonVjuzpokuGDzhzmkGeEPJC40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=rtMyRNZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="rtMyRNZY"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7E63C4CEF7;
	Tue, 17 Mar 2026 07:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1773733868;
	bh=VQOuwhEtLzHEY1C7LlONnYPk+gDaCuefsotr4p0cNZs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rtMyRNZYj5UBNVT6Dsyb0Xf6j9yyiCgXbK7G4Pyzg7eiQyovupN+j2nk2iPD/e/f3
	 9ih1rOzWkzVlM0pUzWrBl4PspyrcHF+5njqPOb1HnLDgdBAymRJhzKe/CQ0OYxiSiV
	 HP3yUIWq7hzfCNeEt0vhLcydG57lxIfYaKYdLTwk=
Date: Tue, 17 Mar 2026 08:51:04 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Richard Weinberger <richard@nod.at>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
	Thorsten Leemhuis <linux@leemhuis.info>,
	Steven Rostedt <rostedt@goodmis.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
	users <users@kernel.org>, ksummit <ksummit@lists.linux.dev>
Subject: Re: slowly decommission bugzilla?
Message-ID: <2026031746-rarity-acutely-2eaf@gregkh>
References: <20251209-roaring-hidden-alligator-068eea@lemur>
 <1655051015.2216.1772209338375.JavaMail.zimbra@nod.at>
 <5dea1bca-75fe-4e3c-950d-d489a438299a@leemhuis.info>
 <1786920159.1633.1772291851870.JavaMail.zimbra@nod.at>
 <1617579485.3599.1772793456949.JavaMail.zimbra@nod.at>
 <CAMuHMdVUoDsZeewXFevLR4kw6iWXwrGRzdZ+N5BFzzLUuLu1Ww@mail.gmail.com>
 <571171361.40507.1773586731470.JavaMail.zimbra@nod.at>
 <2026031615-amusement-yam-d036@gregkh>
 <1440843008.46131.1773698213099.JavaMail.zimbra@nod.at>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1440843008.46131.1773698213099.JavaMail.zimbra@nod.at>

On Mon, Mar 16, 2026 at 10:56:53PM +0100, Richard Weinberger wrote:
> ----- Ursprüngliche Mail -----
> > Von: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
> > An: "richard" <richard@nod.at>
> >> > Nice! I threw a few arm/arm64 crash logs I had lying around at it,
> >> > and the results looked good enough to be usable!
> >> 
> >> Due to bad weather here in Austria I found more time.
> >> I polished the web page added some notes on reporting bugs and
> >> published the source code of the tool which generated the JSON "database".
> >> 
> >> https://github.com/sigma-star/kbooboo/tree/master/datagen
> >> 
> >> I'm not sure how to progress.
> >> Is this something we want on kernel.org?
> >> Hosting is easy, all it needs is a static web server.
> > 
> > Why not have kernelci host it?
> 
> Do you mean the data generation tool or the frontend?
> For the data generation tool kernelci makes a lot of sense,
> they should have enough versatile kernel builds to compute data file.
> 
> For the frontend I don't care much. It should be some location potential
> bug reporters can find.

I would recommend both, but have no idea how to do so, sorry.

greg k-h
