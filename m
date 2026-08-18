Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642BE36B061
	for <ksummit@lists.linux.dev>; Tue, 18 Aug 2026 09:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787045897; cv=none; b=YbAxSXvpfCmcabhX3xdPAe68oTFYOqfxqPBB+4XN9v93YaRZB9A7+aB92SRNGtZXHsLwy0PqDClU0X9IhH9UE3emMRoNnmx8PatSFs8TuAjy6v1imq9+3rS0KgpeO2FnWU1vz/SaWcwHdwPbF/P7xRhwdRNBB3YxV8772JXLtVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787045897; c=relaxed/simple;
	bh=gbeInos+Ueabo7424PAZxdO5ZGXhefkJagHhSlCvu0M=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Ah+0iTAdy82u+ZCsUG1Hm6kCGnEokKS4Py3N8HymgwhpmRIzBfrhkEpg77eoHW7w/JTgc3A5+LfzHdwLCmP84rEOyQiF4Flg8pQ0NmHaV49XE3WHcOtuK14skBQEbax3fkWrrjDDAyk7RQxozAqQ/5pLc4JyHwW7seRsHkApJNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Vz8/bcjJ; arc=none smtp.client-ip=198.175.65.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Vz8/bcjJ"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1787045896; x=1818581896;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=gbeInos+Ueabo7424PAZxdO5ZGXhefkJagHhSlCvu0M=;
  b=Vz8/bcjJ79Inm6LcqbRQL0ATkC79yYeA4GL98OBPmaqE4A8Jzp3GKDn4
   VcEh9GG+xiSl16Z+mRv1wgRhzCndVvp1j+6mUNoFjHQHL7p7xGRxhzzRw
   JQ6L1JPi3iiTBATYpmkmPrOq72MzeJqO/sE7VuDP8PexebhSAC6VuAh/G
   vl8phE7O6+7reHm23gyQGKn7S7/m0kdAPckPR+yc0YEZkha7zxCSnXmaX
   wqTVsos84mGbD5VmxPqiRLacNxdBb89SAgJV8Gch1PL9jys+uL8E8bm9/
   aZGvA8D9ElcmrOW3b6rQd1ul9FPoXxicHkhMdWj5QyEnD+6zoD78nnp5o
   w==;
X-CSE-ConnectionGUID: mLGAqivFQQqfM38zh05EJw==
X-CSE-MsgGUID: jY/e+6W7Q2OpZ6jwq2lUJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11878"; a="87389061"
X-IronPort-AV: E=Sophos;i="6.25,230,1779174000"; 
   d="scan'208";a="87389061"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2026 02:38:15 -0700
X-CSE-ConnectionGUID: JYzPN1TcQoqpYpmfg5StjQ==
X-CSE-MsgGUID: KiAKlrzERQCvqG3HQvanEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,230,1779174000"; 
   d="scan'208";a="269017015"
Received: from abityuts-desk1.ger.corp.intel.com (HELO localhost) ([10.245.245.243])
  by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2026 02:38:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Mark Brown <broonie@kernel.org>, Dave Airlie <airlied@gmail.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Geert Uytterhoeven
 <geert@linux-m68k.org>, Simona Vetter <simona.vetter@ffwll.ch>, Steven
 Rostedt <rostedt@goodmis.org>, James Bottomley
 <James.Bottomley@hansenpartnership.com>, "Lorenzo Stoakes (ARM)"
 <ljs@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
In-Reply-To: <3a382504-6bff-45c0-8b05-3982e604d7c1@sirena.org.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
Date: Tue, 18 Aug 2026 12:38:08 +0300
Message-ID: <e5bde7b3a9093fa4a9b27f47a3bea9f8c5a6101f@intel.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain

On Thu, 13 Aug 2026, Mark Brown <broonie@kernel.org> wrote:
> On Thu, Aug 13, 2026 at 06:33:05AM +1000, Dave Airlie wrote:
>
>> So I remember some of the problem, if you cherry-pick with -x the
>> complaint was we had commits in -fixes with a cherry-pick commit id
>> that wasn't in Linus' tree at that time.
>
>> It would of course later materialise in Linus' tree when the next
>> merge window occurred since we don't rebase, but this either broke
>> people's brains or scripts badly enough we got push back on it.
>
>> I think we should definitely do -x on all cherry-picks and I'll push
>> to make sure we start doing it again.
>
> That'd be helpful, thanks -  I guess you're going to annoy someone
> either way unfortunately but at least the commit not in mainline issue
> would be transient.

We use the drm subsystem maintainer tool for cherry-picks, and it uses
the -x option.

If you have any suggestions for helpful but non-intrusive additional
annotations on cherry-picked commits, it should be easy enough to update
the tool. And perhaps the annotation could be more widely adopted as
well. It's not like nobody else ever cherry-picks, we just do it
more. The annotation could still be the same.

BR,
Jani.


-- 
Jani Nikula, Intel
