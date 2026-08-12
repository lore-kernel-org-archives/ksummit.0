Received: from fhigh-b3-smtp.messagingengine.com (fhigh-b3-smtp.messagingengine.com [202.12.124.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E5B738655D
	for <ksummit@lists.linux.dev>; Wed, 12 Aug 2026 07:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.154
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786520606; cv=none; b=keebB9OnqFFfLiJ9ksS3LAZOPIiJZQg1j3wsAvWhV5iqdl6n59c6nSaNap4NZiWYKi0Md1lTewFuhTygO35rQAlWWPxfq69vqvq13sbu0Q0b/irxQkyYx0WPridqIgcBm7M0C60lO9AgJSpcsSTSTy3/BdAts6IzUaAtZbYW+CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786520606; c=relaxed/simple;
	bh=wKhPvIBE62d+feW0UmpLMNoj+5FVWxidSBtdNhXPTP0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lQEz8JtwtB8/hEasnY2VpnXXt19G0OcwjDTbjnrUqfWbKjO1cCcIo0ptl6HgKuON2JVWvHKeEbcU5yRx9A2cAirY1sewRvPJzVwVEsm2WR5WqwcQuLpvOKSRbh8UteEr6YdbfzzMN0J4vJNe9jmK1pkti8F+Gx669HCKbr7x1FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kroah.com; spf=pass smtp.mailfrom=kroah.com; dkim=pass (2048-bit key) header.d=kroah.com header.i=@kroah.com header.b=Av6yp6Y4; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=P0PXOJef; arc=none smtp.client-ip=202.12.124.154
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kroah.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kroah.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kroah.com header.i=@kroah.com header.b="Av6yp6Y4";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="P0PXOJef"
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 88FC67A00D1;
	Wed, 12 Aug 2026 03:43:23 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Wed, 12 Aug 2026 03:43:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1786520603; x=1786607003; bh=U9aoBIn75N
	YhEszw14LIEJ58uGNqfBIEY7LHCoarq54=; b=Av6yp6Y42ml7OCmtJWq2axHIos
	feTXVMQSrsoyeiazozQppNKR366YMXQef2RjJByvr8gRamNVoDuVISjhlBc026Dr
	5NAIOQTxxBWgxQf6pasPDCT+0DWInT49bCAB1xRzLiwWw/di/cLDx/Zo5YbWsc/z
	ecm0a8trh4jcUJ/bYpNy1CVnAl63XObGytQigGlx2d5CPg46ZdIRG8SgkHue2kJs
	O7pJaYpYgxpdSSGkgVvzLNTDrIIhKZ9wuXzP5Tsm6OEPDpHj2jtg4DmSMoWewaND
	niuSbsYT6LZAXIB8+0J9Jo47HukeuOcw0jCzceqJSECOxRFbNQlplhwHKSAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1786520603; x=1786607003; bh=U9aoBIn75NYhEszw14LIEJ58uGNqfBIEY7L
	HCoarq54=; b=P0PXOJefxrtIYStA9Yt9Zv6jLvFRIrAjU42wZv0bk+HikE0wAgf
	3Wi9rd/00iz54Ti8VvgBBW23bStdPobue6nc4KZgI+YQT6qIjcO+4iiAxe13jnzi
	TyRMcacEsWhHGfnZz8nMhaV7XDn2czGbOYEXRw4a1UjOeKwA5LpomWNLBmLech0/
	p3Y1fh/Ua3IZbAIj2KSu8WtMD0BODlYr8ucq+5SPiTuZi2FToIkq2o6bFpBPhk2d
	zSqH9u40CWAc5jCdYVRfSvAhh5xVqw0Xhqx4oriKxvg9HEeu22bPPw3viaJe2LaF
	n4Zsy4YjnKc8DLTaxt3qKbYrKeIUIzxzSoQ==
X-ME-Sender: <xms:GiR8ap1cjkJXuQeyrfWaK9yTCbwjua0gNn2I91wlHXNqS0pruTMauQ>
    <xme:GiR8anpMIBtAidM5B0Q8hYUiu-U0TjQSZbz_z_I2BPPclL67K21QAhELeaPQkMaxm
    oJcAytcgbxqroeTAd9o5AfAL66FAF1wicB5M1IZF_TW-it1fw>
X-ME-Received: <xmr:GiR8apg2mfhtGYebTgus-ruSDJmnFZ4B2zLV0VqVDhPFw-mHdRJqx_U>
X-ME-Proxy-Cause: dmFkZTFnROseTsgbOeRAB+kpGZjeu4YriqV19nhYmOG05f5SOUNZN79I8tgD7RSG/HP5Yt
    BsUL+/IZTRTSKUVmcwyRPiUQIeZBbJxcoc4okyNQjhQwwI4S9yObx/ArzUER52ogCMD/bg
    VD8MsrHlDKKVL8yIbPlhXe1oqYeojSt9EMNI3XTjn3k+UKS22rFtca2mspOnMlckvj2Afa
    4BApMtOYwySakzobaJpMjcIcyli52fhZVSCGwsOMffJQCkNpHglwuGGvHuLfYhS83mTMx8
    +bK1j144a34vyR/gyvygWmFXA+iSwLWDX7YMulZZIdg3wWdnoo4vbUUplE75bB7/DQVqUj
    mc9IGGKd3swH8tLV8SSC8hAZZbPiQ9zyVQ24iQWUfkBlbm3Ogt6EEFF+D6lNPEVWYwtt1i
    SzYupQ416q52UqyyvSHGQTcsVp3uSrS7u5YEiiUEEwQALw4OtwZxL9kicIdV7vGlSmIKc6
    MglhFCjgyrrLRxdbtFDpNwT0vHnJrxTgo+vk5oJGZ5siWNtAqKb+YGxzF9RIGY4u1Q3fs4
    USH66QO77ea9QZxxLVNZ3MDw+uwXJZPDeXd4IXfQ1NYAyAgo3FCld96KtT0oepfkMLKQ68
    V6guMD1Seb1lRubzKGO5dzhmYq2JwbmScUaQGzUwUkyfnz7fflzR6W5MVWNw
X-ME-Proxy: <xmx:GiR8ajkuHFi-V_26sjxhY0r4oSRMh8qljRQ-Dc9X6W7LNUNcBQiLcg>
    <xmx:GiR8aipsZPR2vqnDLkaZSgCxkJ_gP43_dDeP_J6fpv00dkpJ3cn-Jw>
    <xmx:GiR8avIHLkqisABUAUvskohZpJxo9I1AYWS9h8pNlojPDqv5U6paag>
    <xmx:GiR8auDp0JXwjFmMiiOst_e9_m074ry0hWyPkLHbsS2ZCrttSzsEXA>
    <xmx:GyR8agIwnLMtxD2v3ZnS5a2r11jbxlcCU_Ed_ZbM9fmcc7XSCkvXV9BL>
Feedback-ID: i787e41f1:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 12 Aug 2026 03:43:21 -0400 (EDT)
Date: Wed, 12 Aug 2026 16:41:48 +0900
From: Greg KH <greg@kroah.com>
To: Dave Airlie <airlied@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Mark Brown <broonie@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <2026081254-scrubbed-avert-b5b4@gregkh>
References: <anii3u-87kSrB9K3@lucifer>
 <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer>
 <20260810091154.2d3cd6d5@gandalf.local.home>
 <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home>
 <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
 <CAPM=9twB=hJURcbdaiDZjkEeUHTLmOLAoxnD+g0zGTTMq3nySw@mail.gmail.com>
 <0c95dc03-5b33-49aa-8368-bac482b8b40e@kernel.org>
 <CAPM=9twMwxo-yO1Ke45D0Sxmji8Mt23BqxUMv-_GY1gzssVCiA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPM=9twMwxo-yO1Ke45D0Sxmji8Mt23BqxUMv-_GY1gzssVCiA@mail.gmail.com>

On Wed, Aug 12, 2026 at 04:20:04PM +1000, Dave Airlie wrote:
> We've tried to keep the upstream schedule for ages, as Rodrigo points
> out it falls down, stuff goes missing in the shutdown periods, telling
> teams to stop working for 2-3 weeks isn't an option in most companies.
> Intel and AMD are trying to upstream GPUs that aren't even on the
> market yet, velocity mattters a lot more because thier customers are
> usually on the end of the pipeline via Linus' tree,

Why would anyone need to "stop working" for 2-3 weeks?  That's not what
other trees do, the patches just go into a different queue/tree until
the merge window is over and then they flow into the normal -next branch
(or whatever you want to call it.)

The only one that needs to worry about the merge window is the
maintainers.  Developers just need to be aware of "is this a new feature
or a bugfix", and all other subsystems seem to be able to enforce that
tiny rule, which guides which branch to apply a commit to.

Are GPU driver developers really not aware if they are fixing a bug or
not?  If not, who is doing the crazy cherry-pick in the first place?

And again, I hate how the DRM tree works, and I think overall you
greatly suffer for this model as the "Fixes:" tags all are wrong which
cause regression and CVE tracking to be totally broken for all
backports.  So I guess the teams for those 2 companies don't really care
about stable trees?  :)

thanks,

greg k-h
