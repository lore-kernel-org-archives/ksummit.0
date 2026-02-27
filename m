Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475B22459E7
	for <ksummit@lists.linux.dev>; Fri, 27 Feb 2026 11:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772190464; cv=none; b=MRfL0ZyzIy9z8CMeJ8QB/WbCh0pXuRP5SznLQ3AMqBzpYynXISFznBnhR3g1D/Hei7gKKl+BEO2kfn9i6PSoUMkKvWQi8Wcm9mCYm3gxThwz02C9RGExyQck0qBf4wcsIof5tuRb3SX0mW7NfiWOBc3r2r6PgqJLQ5FmH0Vq5Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772190464; c=relaxed/simple;
	bh=K9fFGs/IWI3Xeq1SZO9X0jpJY05vKkXJNsoRLz/2JWg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=CYi6KDRGTxnXtdZgAULqgAPjO3NWDn+eyxig1TCT05ronmt7fpB+nqZieGlJI/BwAc3CD0+XvTCOC5NwICxgJtk3ICxIQgpnMl3A0BLeCiIERNaJK9ubqSqQLJpvoYA84CcuBaF9yF/PCHbf00EwRzz7Rp3oye8JQH7CRDBgGJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=U5Rq2NDC; arc=none smtp.client-ip=198.175.65.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="U5Rq2NDC"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772190462; x=1803726462;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=K9fFGs/IWI3Xeq1SZO9X0jpJY05vKkXJNsoRLz/2JWg=;
  b=U5Rq2NDCeeOtX7kq6lxiFlgaATTMHAW/r/2pm4BJX31I6UORcFTzApbk
   B4kb/NYBJzOKcTIOb0yCWYW/efR6G4CcPZEN4jYGP2+dH4UdNEDMVBzM2
   YcjljoOXgo4oAFn81pVd1YJtTf01IQVPFDsMCw8IW7qz1ZiqY21YdEF2Q
   YdKI1CfALwob9CVDSMx+6fZc89cauq7Yn1eKxWl9ePyqBVXOwsefcdmeL
   pWIrUQXSYwA4siPCO6CAofOBpCjLIr/s8Nt7PrgNTXzO0gqlSpdKZBYx6
   ddo+cBpGmmz6OuxmKc/GDr4wlAQ+a+zQPeG0/EAe/cGqxbntBBDMGvLVH
   A==;
X-CSE-ConnectionGUID: WjS8NWuxRA6KI7FS/Wa0Ow==
X-CSE-MsgGUID: 2s5O0PNMSr+8O8a2IF5lKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="95891622"
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; 
   d="scan'208";a="95891622"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Feb 2026 03:07:42 -0800
X-CSE-ConnectionGUID: Kx/fzatMRG6PnEg0U4yuKw==
X-CSE-MsgGUID: xSyHoowDSGGHZ6l5C6lWmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; 
   d="scan'208";a="215987083"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.246.185])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Feb 2026 03:07:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>, Thorsten Leemhuis
 <linux@leemhuis.info>
Cc: Konstantin Ryabitsev <konstantin@linuxfoundation.org>, users@kernel.org,
 ksummit@lists.linux.dev
Subject: Re: slowly decommission bugzilla? (was: Re: kernel.org tooling update)
In-Reply-To: <20260226090425.11bb585062783c0e1fcf0b32@linux-foundation.org>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251209-roaring-hidden-alligator-068eea@lemur>
 <b93eae05-5e40-42f0-8256-d46d411008a4@leemhuis.info>
 <20260226090425.11bb585062783c0e1fcf0b32@linux-foundation.org>
Date: Fri, 27 Feb 2026 13:07:36 +0200
Message-ID: <c19da34471ec2b946110d3b827456a4079690b50@intel.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain

On Thu, 26 Feb 2026, Andrew Morton <akpm@linux-foundation.org> wrote:
> Perhaps point people at scripts/get_maintainer.pl
>
> Or heck, add a front-end to get_maintainer right here in this web page.
> People paste in a pathname and it spits back a bunch of email
> addresses.

MAINTAINERS has the B: field for URI for where to file bugs. It can be a
web page or a mailto:. Other than that, a web page for parsing that info
would be lovely.

BR,
Jani.


-- 
Jani Nikula, Intel
