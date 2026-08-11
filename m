Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43ED6239E9B
	for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 03:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786418674; cv=pass; b=R/mqUNkK307fYp6nKed42TAXK/KqyHrT9xCmGddJbZKgbwDMymuRzG7WYwIXAKBpIlLnQLHqjL7HJubWYAIsFEU4my7O7dr3UZfaZ6EQ5lLS5wSrLn2W/jpKQ3rlU2wKbGyaVxy2mE+DAL3oUObvM1ASr6h8I4qSXEafYIez8N0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786418674; c=relaxed/simple;
	bh=/8lQQeGz+a+p9zfMp3m0QZERmgJdqW53VGWnbMPJsno=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mAL6YfHh5FfvBze/0XOpgdvB2FLKu1brB00yZ2T3pAs0IsJSW25mD0HbiqwouDdTR1QZmWGIndzfAYd62WhyvDWy9v70OwYsKYHbTqUM0JULmAbwfsFN7CkbDokliimGJYuB17hMp4vXcucMvyOu16rJFgBd6ZXIP1ZdxjyFPB8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JbTJ03pu; arc=pass smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JbTJ03pu"
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-664ce3000e6so1997034d50.0
        for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 20:24:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786418672; cv=none;
        d=google.com; s=arc-20260327;
        b=ZGdadQnUMswlCVBtIUSJFUSBPP3G/DmLNU/arRqsmC61F17anjqWwzR8Cucl9SWbBK
         ffKMAOTDGs0zl5315VqkrKkbsgLbDZa1Aw+hjkMkfZavRJd/hWUn/2Tev6P73zA9olvM
         828wr36e+oXoHjU4Fsz4cq6LV4hRNU6kOguuYfXL3hHx5Van4aChvBCl/wQbU5N8Dfe3
         askICH7Z4/F+dIK7D7ry9BjBy9t8/xnQv9QHp091/29jo4LjM2KXEwXhEBwZW6rYNvSq
         ABBc2BoyNV9xvFl78Tr3dtjGTAOz9ytX0VO/2AHPhPy6EKi0iWcp07b6PTMWRmAevcmN
         TBuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eD3VLxzi2oFkAI+EImhT58nx7Vz/4iCd/W11x8DDeK4=;
        fh=WWtvlBEUghOtJ/KHj99hDfDryXuSSUnqv652RMmnE3w=;
        b=NFX01rQRs0AVdgFbC8wx2OOzIA/EGcle+ET6o+G4Ba/Bnxr8kBfiV+RjDoRSSsWG4U
         AO8pR2+nrd1cU6D6aWTTiZelF7RQKFJK8KVJ4BNdQk0r/NDNan+mk3q/9LkA5sPx1nE1
         XnP/sDUioXkzivgIrzMTLnFlEDMvozjkQ7eIAfdbnD3mErtseKDhT+6YFtNTGtcgnKwd
         TIRX8xHKzanzWKdoHZ6rHqEfIXCZy0ChMhnubFrikM/UzTxmRnAEHrmufsG3KSFTMrbr
         b2Mc51aFe0RjuV9kPuGRWVL8guBTO/hKiLptEf6nYf+XcriBiRIJvNf6GQdMYv+f42Uv
         81eg==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786418672; x=1787023472; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=eD3VLxzi2oFkAI+EImhT58nx7Vz/4iCd/W11x8DDeK4=;
        b=JbTJ03pun68h+6bdZ0t4IrOt5MuenSNvbTn+G+Xa+ztMjeGQKt02/y7ijPUj5UDqWG
         k5c9Jdg6uN+SU/0xwYOIKClCYRYcU2CKpEjr6HolCvOz5fZFmnki/tQ721osu/RiV6BX
         l8c//ma0OT9iSyxAphqMjuQ7PLnOH9x22Y/ZlWSmr9RuvSdfaGxQnvXzYJDBvf4qqedQ
         PP9TUb/qxlpFxyVyn3zNRMNTKFpQlzkTv9OVYIgcqQTqo+ZNjW+Lkm6+uUDFID0/XeHt
         MlTgMQVBandgazX8Eh267pxHflAgBKqoF8wLIeumJO8/nfrKUCn5BMtVKVQLlAth5o/q
         zP+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786418672; x=1787023472;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=eD3VLxzi2oFkAI+EImhT58nx7Vz/4iCd/W11x8DDeK4=;
        b=hgn99zJ+NCf3r39rCh0MYCVKYIGbw/RdrXb7ZvAaq7VFSUdAVaFxq6SqcUNjPo6rfU
         CFryN+2trRg4OF62AKvG7f214kDmhtll2/N72Hth2IDgzPZQze6l63yL00quFKsIquog
         n3j+FGDRyKXMNNpW8eouhXzr8h6i72ACbqPEKRNlixt7yk/b1hMWx3m42sudd6Dooypf
         T8yfoDwuWWBu7dvc9lElbDNiVW2mmbmkoXq2LHFFXGvKrfxosvJL0rCpyydWILz71Kh8
         ztUKGpOp4T96J8kWDT6SVrUJyCICtdn/daHK8hSfdV87wf8wnlBP3eiS8uCJXmDiGd9M
         Y/wA==
X-Forwarded-Encrypted: i=1; AHgh+RoZRMk3oBJJi9mpe/CAvmz27aTEv+HtphEuRXSlBTMEAzJULXW8PCS43dVtqgrexQ1sgKmShy17@lists.linux.dev
X-Gm-Message-State: AOJu0Ywail3nFb/pl6+AuTVAkvCu3hmWSwIHQfLtbsDlP5civqnQ/k4N
	5/xIRcsdGFs9iOmw3kzf7PqJAfuNcUq2vYmXgaUI6B8rioZk+rrfUVLfqh4KiqAkb+LZaca5pwe
	1Bcw9euuKQgImYICeipoAZfuv9LgxEYs=
X-Gm-Gg: AR+sD10RWYPujwQM2z4ysrQhOXbMeLdC+xJRlRJKzKvnjzhufGP7TGnKIa6ZtDvB+MD
	NZckTr/eWAIjKECb5oyFNW2rPFpHU75efXAP3ZPmtRxg+ZU1uLAssBHXIXrFFSWMF/HbLHrcNE0
	vWJLcEXySsnyRKEgWCdFWGlzSiaf8inlVDBPt7cyAX2xjooF1AIv9Vr/m03nAmwh3G6epCGLC3m
	4woluFLsBogpYbr3f/MGE3otBlmEqSYmlg5kgML234ky8QyY9B5Y10a7AXt702rbBdEPK92ZeGB
	LROWeoCb1BLUTrSZlH0sbl6pQUJ0bQvTyEn3DEqUr8FVyN0ea0WvmfEnKNzAjZRHz8YKDQlMCwJ
	4kClabH/ikKOigvTaxWNBYvcyP/oUhA==
X-Received: by 2002:a05:690e:1506:b0:669:586a:8673 with SMTP id
 956f58d0204a3-66b22ddd291mr67693d50.21.1786418672095; Mon, 10 Aug 2026
 20:24:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home> <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer> <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer> <20260810091154.2d3cd6d5@gandalf.local.home>
 <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home> <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
 <aa8f4e34-906c-4a37-a8c6-623389addece@infradead.org>
In-Reply-To: <aa8f4e34-906c-4a37-a8c6-623389addece@infradead.org>
From: Dave Airlie <airlied@gmail.com>
Date: Tue, 11 Aug 2026 13:24:20 +1000
X-Gm-Features: AUfX_mxamiHBeCGtiiCyQDTeyrA8UqNcU5oBzNhVMN3Prec0Kwaa0yhFfvEI32E
Message-ID: <CAPM=9ty=Kb7rqNg14UCJWz=GJuMbQMZpvsDxfEdgeqePDD1gXw@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer summit?
To: Randy Dunlap <rdunlap@infradead.org>
Cc: Mark Brown <broonie@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, 
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Tue, 11 Aug 2026 at 01:52, Randy Dunlap <rdunlap@infradead.org> wrote:
>
>
>
> On 8/10/26 8:23 AM, Mark Brown wrote:
> > I don't think any of that stuff is really what's causing issues with DRM
> > externally - for -next the issues I see are the constant cherry picking
> > (which I gather is also an issue for stable), and outside of that the
> > thing that comes up a lot is that it can be hard to get someone to take
> > responsibility for actually applying a patch if you're not a DRM person
> > since the responsibility is more diffuse.  This can lead to issues like:
>
> That's even true for simple kernel-doc patches. :(
>
> >
> >   https://lore.kernel.org/r/46b86d82-6ff4-458a-ac7e-cbbae214b4e5@I-love.SAKURA.ne.jp
> >
> > or things where the DRM parts of a cross tree series look like they're
> > being ignored.

Is there any tag I can put somewhere that for cross-tree patches that
are just changing and interface, or cleaning up an API change, that we
give you an Ack without getting one, it's really a pointless bit of
review theater if something needs changing.

or can I offer drm-misc commit rights I suppose, but yes we don't have
a good responsible person for acking non-drm patches, and they can
fall down the cracks. But if it's something that can get handled via
another tree, then I'm usually fine with it just going in via that
tree.

Dave.
