Received: from mail-yx1-f45.google.com (mail-yx1-f45.google.com [74.125.224.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EBC34CFAB
	for <ksummit@lists.linux.dev>; Wed, 12 Aug 2026 20:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786566801; cv=pass; b=G8L+D12K8wVFWOKdVARxGqoBjSsJubbfUEeU2LcGkbYmlCj3M0ogeY3RI9KtWvaDBhserLz6vBgfNbls50Bb2HCHLCPactJvVITXavQd4jNUnj/mRRedfojL1tk/pLBf9nbgy9oS0Y1r/wir/eAFgNXf4IIcKDXzg1lxx7Fip0c=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786566801; c=relaxed/simple;
	bh=LEemsYart4y/au8tvIdO/1Yodr+I35JCEBFkHTNXlbc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mgNYApXIMKiLZiWN3ZM43QzYyfiCRKJd+eS1lsiIJmMoMZHyxng+psxPPBLATn6RreU545y4Hi+5gRfD5rBcgaCYTfbTcXrSyv1q2O9vf2dMLbnvsEQ7VTRTJvYEA8X4ZYbRy4S7iUahGVQeuUTiHcIZGN9VldGS6lC/FDxH8fA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mmkCzJff; arc=pass smtp.client-ip=74.125.224.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mmkCzJff"
Received: by mail-yx1-f45.google.com with SMTP id 956f58d0204a3-66c4e9769bdso569528d50.0
        for <ksummit@lists.linux.dev>; Wed, 12 Aug 2026 13:33:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786566799; cv=none;
        d=google.com; s=arc-20260327;
        b=V7aTT3uvQJMCa1IgfP5pSG8nULs22+4znzR10VlqcgBf3PLmfQ1NINS2DNuO3IFgaO
         lptipIxtDAWSdgGkx5S7lkDp3x6gnmw9GTds74EnS00b/kjQGvH81DkYnIMvkf5g0giD
         DUwKnlAwdNaHg4YssAZi6cbt/UlKIPB0yYeftdFXtbBmaLUla4j5Zp0v3Z24GmDyrEb0
         ibueJ1Tbou6mD28ur0bKi6szoAQtEQIRQOZsCNhTqzO4HV48OMg2skr+A8o/HY8yxN+J
         1FOdpAQBrTpLGUCmiWyBjPZw80GVVTyol8dTz3SMXgl5yoEbZhT6ORu5s6g4r6hG77vq
         7wbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bYwC/oA5vK+TlHRucsmKkcjUc87viD66NPBZSnYXasQ=;
        fh=KHqEmk1q2dCOQC283OsP6fAbLIhVxJr/43VuhGje2Uw=;
        b=X++urIC2x/61XENHe/n/1oeLJbub1w6EA9rXut7PmVql1pcTsD+EtocXYxWh+Pt/9U
         8rGNH+7Ns+XQcY9C3yW+3yTwSCK3kN1ioo1R06NRJCtdZYf4RYAXpp31G+uyWwTPLDSu
         USj0O/o90xH6b5GIk3H9PgjDQIzN1PqOpHamGtlWNmGUgSBjS72BHtktTmMD5KGigMyg
         xGJKoGg8LgZW6EjH/LXwQ8ZtHaXWYBWON9Vjf0g1gdtSwjv4F71BuhGC+VNgpGcPkfqe
         fL59PX76+92GD3xLm6mwJ1rvd1oju3t915KJnVNbIQUbGp8nYB0yuwUesgNhC/SO/2Tv
         7D/g==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786566799; x=1787171599; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bYwC/oA5vK+TlHRucsmKkcjUc87viD66NPBZSnYXasQ=;
        b=mmkCzJffUgbhY9J0LanGc93GcvtKRIp1FEzjGTNZvDSfxmaM/lMDpEVPH8uHtpZx+Q
         R1nH9seK+WjkFw+9q+N4hK4Khmwi9Vd5vxWMvoAc4wQKkkOlv88VuONgpCRqYkzVSUPe
         EXamnQllqWOfRvgr5b01q+3kJtiV4HXVAYcBDuQRP4hHFu9zYtYVJiipW11r+ZThv6A0
         ErhJSw3tpDX8NN6t8xfBaHK1qxa/vmy/gM3ZuRW/pilfBqz3FohFIb2m+83HWl+sRXnY
         +g3EmtpLQhXXHCC0cwABy1Abf+kCJHYy+PzNoZkj+LbZpqXHtn03GAVdNLOnmQrz5u+h
         y6TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786566799; x=1787171599;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=bYwC/oA5vK+TlHRucsmKkcjUc87viD66NPBZSnYXasQ=;
        b=TsE4zhTtHY1KPIJWnaMC5Qr8qE05X+lUxJqjJLaQNIU7Al15L7x6duveHgHluCVJmj
         B37HSGsd1QrvPQ5tmCy0vaLrRjIw3Klot35xOge7HiUeULOFhJus7opkAyRaCcAsHX8n
         hHCM2xrb84uOhKdh0NwnYLDUZdztZ90bPZrSqd0soofgslbEiBVw6O9dNybyhLipDW9T
         Od3+8gSDLxmfMyid7ZZenu//1TQtOVTZ1B7XMJ9zRNm7NpuDkQSOnoys7N8ss6pmCu8d
         MvI6MA0vUlfRM9ucebhZjkAhuvY8fyekEDu0GnkFVsKr3Orh6Z9Wrv9u8wygIYEORfs7
         8otA==
X-Forwarded-Encrypted: i=1; AHgh+RpjPiS7cnQ1tkiBEGMrYjteYkC4nUcKqk3LaHI+8/fArcZ3PGQWjPzaiodUgNxwgWLn5n7u4QHA@lists.linux.dev
X-Gm-Message-State: AOJu0YxJzm9hOx/8BDqo1PA+RElegpJnfXXg4cn9DS3S5D9nrGOrQUBB
	OrLalwT1jwS2ac2dWDkRy2lzjDb3uAR8Na6YySDfmqq8fpmYdcdShzBSLscRl7EPck3j9KVPC8q
	313Edc5PbQC0Anv1X8cB6GasUvh+FLDs=
X-Gm-Gg: AR+sD12UbpmkB3/EJmZeljqmPSlPq/eIjKMpQXmgfBX0sduLpbwBO0qjJLk0+SD+zRp
	ox9O5UYsBvPb1tMghBdzv5iPucRVEO17mHk6uOboTjhuJNPPKibj92D4xdTtxKpamzPVYd51YML
	8etYL1Eemtvfii5oOZBCbtFIg8EZZyql8gl7BK6Of6NNXmQDlCjDK1XE2x0WULVj4lsdpNytOJ8
	a7nmogmJUVr89quWcW5ywvvYKhfcvI0JWYIwo9rcWyYwvnCmBGUNosu/ya7gSC4t4B4KHVPL5jt
	o0tQKvcgvJgSQjyrS2Vxnhsh3y0r359a3F8x0rpybh9kCoKKxahmIntYNrq8dT72Uu6C0v9j0Qn
	3z3KumgJZsxCjDQIeKq65mXP+s66WHv8qJmjtsXKj
X-Received: by 2002:a53:ab09:0:b0:664:f751:4b59 with SMTP id
 956f58d0204a3-66c517cbcc3mr349353d50.51.1786566798938; Wed, 12 Aug 2026
 13:33:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <anii3u-87kSrB9K3@lucifer> <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer> <20260810091154.2d3cd6d5@gandalf.local.home>
 <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home> <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
 <CAPM=9twB=hJURcbdaiDZjkEeUHTLmOLAoxnD+g0zGTTMq3nySw@mail.gmail.com>
 <CAMuHMdVBABOiOWDdCKE0zDffj856ui5qr3UFVptwcAn1_Hx7oQ@mail.gmail.com>
 <ant9_jhefKix5TGu@intel.com> <5aa1aa71-3eb5-469e-b285-94df94ac5bef@sirena.org.uk>
In-Reply-To: <5aa1aa71-3eb5-469e-b285-94df94ac5bef@sirena.org.uk>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 13 Aug 2026 06:33:05 +1000
X-Gm-Features: AUfX_mxb3Rhax3873wtgM3M7HoUGmaEDZLpUj2JYBSUYZqlY705Hb4q0qIg34wU
Message-ID: <CAPM=9tzNxPUJGwzabdEwGiTrZER6VBHHDgaOq2bn+zBeFusjCQ@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer summit?
To: Mark Brown <broonie@kernel.org>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Geert Uytterhoeven <geert@linux-m68k.org>, 
	Jani Nikula <jani.nikula@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, 
	Steven Rostedt <rostedt@goodmis.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, 
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Wed, 12 Aug 2026 at 09:10, Mark Brown <broonie@kernel.org> wrote:
>
> On Tue, Aug 11, 2026 at 03:54:38PM -0400, Rodrigo Vivi wrote:
>
> > 1. Increase the risk of hic-ups in other fronts. For instance: patches
> > that should had been merged to -fixes only going to next and forgotten
> > to be ported to the previous version. And patches that should be new
> > features due to the risk of regression, added to the previous version.
>
> > But here one could argue that in a distributed commit rights flow, this
> > is exactly why maintainers role is more critical, tto ensure we are not
> > missing anything and that the patches are moved to the right place.
> > Fair enough, but this makes our hashes more likely to change. We try
> > to keep the non-rebasing tree to avoid disruptions in OSVs and many
> > other teams that are consuming our trees.
>
> I don't think cherry picking if something gets misdirected would be the
> end of the world, it's more the fact that you're both doing it as the
> normal and default thing and never marking the cherry picks as such that
> causes issues.

So I remember some of the problem, if you cherry-pick with -x the
complaint was we had commits in -fixes with a cherry-pick commit id
that wasn't in Linus' tree at that time.

It would of course later materialise in Linus' tree when the next
merge window occurred since we don't rebase, but this either broke
people's brains or scripts badly enough we got push back on it.

I think we should definitely do -x on all cherry-picks and I'll push
to make sure we start doing it again.

>
> > 2. The conflicts would happen anyway. I still see a lot of conflicts
> > in the drm-misc flow.
>
> > 3. Harder to manage the conflicts. Our cherry-pick flow brings some very
> > obvious conflict resolution to the table. If you are in a newer kernel
> > you likely only need to go with it is already in our -next branches,
> > if you are in the current -rc based you likely need to go with what
> > it ported to -fixes. It really is not something complicated to solve.
> > But if you go with a flow that the patches don't have the same baseline
> > like we have the -next and our -tip, then you get harder conflicts to
> > solve and likely to make more mistakes.
>
> The conflicts that I'm seeing from drm are I would say the hardest to
> follow, certainly by far the hardest to follow that I see on such a
> frequent and routine basis.  They are often huge because of the lack of
> shared history between the two branches, there's often enormous sets of
> changes on both sides (not helped by all the unadvertised duplication
> making the divergent histories bigger) and there's no structure or
> explanation for what's going on.  It's all a huge mess, and as a result
> it's the area where I make most mistakes and end up having to do time
> consuming stuff like repeat builds and merges.
>
> You do sometimes see more complicated things, I do occasionally end up
> doing things like just hold a change at an old version and ask for help,
> but it's more like once every couple of releases rather than several
> times a week.  However with those more complicated cases understanding
> what the conflict is tends to be a lot simpler, you can generally see
> the two sets of changes and what they're trying to accomplish quite
> easily, and the complexity comes from colliding semantic changes in an
> unfamiliar area of code.  The fact that with these cases the developers
> concerned are usually surprised to learn of the conflict does help a lot
> too.
>
> I think from a -next point of view the smallest change that would help
> would be if the -next branches you were publishing had all your -fixes
> branches and Linus' tree already merged up up, that way any conflicts
> that do come up would be actual conflicts with other things rather than
> just the rountine conflict spam that should just have been a merge
> instead of a cherry pick in the first place.  I believe that this is
> what happens before the drm changes get sent to Linus.  That wouldn't
> help the stable people (marking the cherry picks would be the smallest
> change for them I think but ICBW?) but I'd guess it would help everyone
> doing merges.  You could always do frequent merges on a separate branch
> and then redo everything for what gets sent to Linus so we don't end up
> with excessive mechanical merges in history.

I'm going to look into giving next a tree with fixes merged into it,
it's non-trivial even for our dim managed trees which are the main
drm, drm-misc and intel trees, since currently drm-tip is all of the
above + CI bandaids, but we could probably construct an offramp in dim
to create a merged tree using the rerere cache.

Dave.
