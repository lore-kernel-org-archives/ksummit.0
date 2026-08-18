Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11082D061C
	for <ksummit@lists.linux.dev>; Tue, 18 Aug 2026 14:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787064797; cv=none; b=cFc5Cx7UugJRvwoMGNkeWwWOtgsN+MGFTf1gBNiM7wjeu8LWSOQKAGNArihUOaiUffgN6qm6nEVQpzQa+qNUPYGsOK38g48JGX8WVE2RRdwRXT+wzWqgTimiRpkJn1Trw0tgyz3btoXilVJ9McrcN1O5V8P2+Dl103CIQzif7U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787064797; c=relaxed/simple;
	bh=XhSDhho8wX7mxsJjernhSlNuvxTk2Iy4uzNB52wruTs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rbTh2OgXccjNQp9AOdQ6QIqVJt6kvHmdzx+mMRxj05HH/QFVbLZwMrYz3fcHDhjugaF/2bbjQ9r/ubdZrlc1fOkAAT3ckE2pvJ+YPvF/dxmFjMEca/Z55iRBYMiYeNWwqfppzSLgoiea2DstJNDnbHT87RHiUAwFtFXwNrHWi+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXLGRryq; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXLGRryq"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC6791F000E9;
	Tue, 18 Aug 2026 14:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787064796;
	bh=bAq1FtASC0PMiFSLRr29hgGAiQy4IXG3lAqL+rQLtOE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=KXLGRryqbwTmKRRzVHNTdKYil/Rj2uDrvK+7zhvtVIxif0LrkDRiV6hXA+fEktpm+
	 m1gYePUagb6R1Br4Z6RjVCcQkcm8uXVbwkHm16CtA7e3xa1Jsrar8EeRNG+peZ6Srj
	 uEDF6wVdJuDqHP9FrhccvBH/BmPRlJriGdl3ffZcFtfpHQenoL64blkuRn4et60w1J
	 uCcINhZefrgVZRJoKAKtmVugOIUrdB6ZfiAXJn1Uuaa+lOnwHZVFmld3Y5lvmKHN5+
	 +s5IuQVrv0wa00m4h6dNPpZmEV9dZ1TiabP8WXZ+pKr/4QvijlZW6MuPGismVrsAMB
	 uwRKZsUMPWAmQ==
Date: Tue, 18 Aug 2026 15:52:57 +0100
From: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
To: Theodore Tso <tytso@mit.edu>
Cc: "Liam R. Howlett" <liam@infradead.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Jonathan Corbet <corbet@lwn.net>, 
	Linus Torvalds <torvalds@linux-foundation.org>, James Bottomley <James.Bottomley@hansenpartnership.com>, 
	ksummit@lists.linux.dev, "David Hildenbrand (Arm)" <david@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Dave Airlie <airlied@gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <aoRxbnwvMGrP6faf@lucifer>
References: <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anfUgiByUVffXlrQ@mit.edu>
 <87y0efi08u.fsf@trenco.lwn.net>
 <20260809170918.218792b2@gandalf.local.home>
 <anmHaRzbnY7rtLX8@gremlin>
 <20260810092003.5fda8e06@gandalf.local.home>
 <1BD1C7E7-CCA5-4BBB-94D4-83A7706E2579@infradead.org>
 <anppSi8oQvvODOI2@mit.edu>
 <aoRwK2L8CjtnhTK7@lucifer>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aoRwK2L8CjtnhTK7@lucifer>

On Tue, Aug 18, 2026 at 03:51:22PM +0100, Lorenzo Stoakes (ARM) wrote:
> On Mon, Aug 10, 2026 at 08:14:51PM -0400, Theodore Tso wrote:
> > On Mon, Aug 10, 2026 at 04:35:48PM -0500, Liam R. Howlett wrote:
> > >
> > > I don't want to be invited.  My only reason for being vocal is to
> > > facilitate process improvements.
> >
> > Liam, do you have any concrete process improvements that you'd like
> > propose?
>
> (Since this thread popped up again...)
>
> TBF I did make concrete process suggestions myself here:
>
> https://lore.kernel.org/all/anntucHhrzF_b4sy@lucifer/
>
> And here (documentation):
>
> https://lore.kernel.org/all/anntucHhrzF_b4sy@lucifer/

Oops sorry I made both suggestions in the same place...

>
> (I also repeated both in a couple places)

...but I did re-reference them in a couple places too. Alas to no avail :)

>
> And they got ignored, so I'm not _entirely_ sure that's what you guys are after
> here :)
>
> It seemed like the thread digressed rather and all will be forgotten again until
> next it comes up...
>
> >
> > Thanks,
> >
> > 						- Ted
>
> --
> Cheers, Lorenzo

--
Cheers, Lorenzo
