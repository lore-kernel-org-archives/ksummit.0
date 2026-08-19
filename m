Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D89B407563
	for <ksummit@lists.linux.dev>; Wed, 19 Aug 2026 08:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787128119; cv=none; b=Ke24x39NWlDUMpUg1KWZ46tV6F97kmvQnoBQ7cIF6hfIvgVOnm9Xw7E1vfqRroauJG0IQGJNQoh66oJ38GBRA6Ix9exBXtyO8KnAQgYnfAIST4asQ6/SkNabUeuJMFByIHb72uTYp950kaJgT3FJYZdoF3lwHmYHsZswlIXfgC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787128119; c=relaxed/simple;
	bh=Q9t9+n+MXx5a6Be63Vl3K5LVxnuIF9L6ugkS1eaAb8w=;
	h=Date:Message-ID:From:To:Cc:Subject:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XneBIPi+oqNySkvWFD2im8KoE3PtnZ9fSy6WPGP8Wq9A/7bvKX3MMZlFFq5ePMAgB8I0R0VP/LPJrDEMLC+hBX0wGzmJDQBSD+HQDWXrjIJJQigE4no2H09O9fLrCg16BZct0UZHtxMUTcC0a8ixZTcngb5RtVnYYCRbgu6Fs2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de; spf=pass smtp.mailfrom=suse.de; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=h+vJXaIA; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=OFwTLrl9; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=zVgLDpzS; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=aiCtneUw; arc=none smtp.client-ip=195.135.223.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.de
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="h+vJXaIA";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="OFwTLrl9";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="zVgLDpzS";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="aiCtneUw"
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 721423E6B;
	Wed, 19 Aug 2026 08:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1787128111; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7JiutVk92DrXUch6P8zbG55zg9JeC7ZmNxMFDsHc8GI=;
	b=h+vJXaIASW3Jny/XgKaAO6j/yobO2NE0lAf/VoGZoDU+JFQEvudLzbBSwmPpwUfxQgyV2d
	9Y/RH9lMegb+NzAQxX34akz7MBthc6SF9nG5RLhxoLZn/5IH8zBqpVt++AhJ+s3ybXBjG0
	DYFKcPPfTey819zGIheZjZMeQvNnUlI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1787128111;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7JiutVk92DrXUch6P8zbG55zg9JeC7ZmNxMFDsHc8GI=;
	b=OFwTLrl9VZEjBhI0da469cX+UME6sNiktc6CmFeBK0lIh2yVt53ZOSPXHUlA4PMtuT7sIk
	oU9efq3j9Ua+27Cg==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1787128107; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7JiutVk92DrXUch6P8zbG55zg9JeC7ZmNxMFDsHc8GI=;
	b=zVgLDpzSJkkuadwTqKm3GOE8h5mA2wa1NDqgEugOSOwDjmXw65s5ulkVMniOMofLyn8duG
	a2KCnskB9NsA/T69cyi0pAHt1PVnPgJkOaUKo/LTsIynMm899CHi3eYKpsxfq215hu0Bce
	zO6sauIPgP1fYQ+x8NXpT402CO/kBuU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1787128107;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7JiutVk92DrXUch6P8zbG55zg9JeC7ZmNxMFDsHc8GI=;
	b=aiCtneUwlRxDsEUTgsxlCwnyiEclDQjxSBiCYsZJCjWihXiFOUAFtAETu81z25Xafonfma
	KI9zBe0QrAjm4bAg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 2B295779C1;
	Wed, 19 Aug 2026 08:28:27 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id bn0kCStphWoGdAAAD6G6ig
	(envelope-from <tiwai@suse.de>); Wed, 19 Aug 2026 08:28:27 +0000
Date: Wed, 19 Aug 2026 10:28:26 +0200
Message-ID: <87v796o6ol.wl-tiwai@suse.de>
From: Takashi Iwai <tiwai@suse.de>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Mark Brown <broonie@kernel.org>,
	Dave Airlie <airlied@gmail.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Geert Uytterhoeven
 <geert@linux-m68k.org>,
	Simona Vetter <simona.vetter@ffwll.ch>,
	Steven
 Rostedt <rostedt@goodmis.org>,
	James Bottomley
 <James.Bottomley@hansenpartnership.com>,
	"Lorenzo Stoakes (ARM)"
 <ljs@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer summit?
In-Reply-To: <e5bde7b3a9093fa4a9b27f47a3bea9f8c5a6101f@intel.com>
References: <anl7CgkKb6tORavG@lucifer>
	<20260810091154.2d3cd6d5@gandalf.local.home>
	<cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
	<20260810102423.342c4e9d@gandalf.local.home>
	<0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
	<CAPM=9twB=hJURcbdaiDZjkEeUHTLmOLAoxnD+g0zGTTMq3nySw@mail.gmail.com>
	<CAMuHMdVBABOiOWDdCKE0zDffj856ui5qr3UFVptwcAn1_Hx7oQ@mail.gmail.com>
	<ant9_jhefKix5TGu@intel.com>
	<5aa1aa71-3eb5-469e-b285-94df94ac5bef@sirena.org.uk>
	<CAPM=9tzNxPUJGwzabdEwGiTrZER6VBHHDgaOq2bn+zBeFusjCQ@mail.gmail.com>
	<3a382504-6bff-45c0-8b05-3982e604d7c1@sirena.org.uk>
	<e5bde7b3a9093fa4a9b27f47a3bea9f8c5a6101f@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) Emacs/30.2 Mule/6.0
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
X-Spamd-Result: default: False [-6.30 / 50.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-0.999];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_ALL(0.00)[];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,intel.com,linux-m68k.org,ffwll.ch,goodmis.org,hansenpartnership.com,linux-foundation.org,lists.linux.dev];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid,imap1.dmz-prg2.suse.org:helo]
X-Spam-Flag: NO
X-Spam-Score: -6.30
X-Spam-Level: 

On Tue, 18 Aug 2026 11:38:08 +0200,
Jani Nikula wrote:
> 
> On Thu, 13 Aug 2026, Mark Brown <broonie@kernel.org> wrote:
> > On Thu, Aug 13, 2026 at 06:33:05AM +1000, Dave Airlie wrote:
> >
> >> So I remember some of the problem, if you cherry-pick with -x the
> >> complaint was we had commits in -fixes with a cherry-pick commit id
> >> that wasn't in Linus' tree at that time.
> >
> >> It would of course later materialise in Linus' tree when the next
> >> merge window occurred since we don't rebase, but this either broke
> >> people's brains or scripts badly enough we got push back on it.
> >
> >> I think we should definitely do -x on all cherry-picks and I'll push
> >> to make sure we start doing it again.
> >
> > That'd be helpful, thanks -  I guess you're going to annoy someone
> > either way unfortunately but at least the commit not in mainline issue
> > would be transient.
> 
> We use the drm subsystem maintainer tool for cherry-picks, and it uses
> the -x option.
> 
> If you have any suggestions for helpful but non-intrusive additional
> annotations on cherry-picked commits, it should be easy enough to update
> the tool. And perhaps the annotation could be more widely adopted as
> well. It's not like nobody else ever cherry-picks, we just do it
> more. The annotation could still be the same.

The cherry-pick -x option helps a lot indeed, that's fine, per se.

However, the oddity is that the original commit comes to the upstream
a few weeks later again while the cherry-pick commit got already
merged earlier.  And, of course, the original commit has no notion
showing this is a dup.

So, a single direction cherry-pick solution doesn't suffice, and IMO,
we need to have some reverse-mapping of the aliases.  This could be
some external content or some other way.
(I could think of git-notes, but people won't agree, judging from the
historical development and the implementation of git-notes.)


thanks,

Takashi
