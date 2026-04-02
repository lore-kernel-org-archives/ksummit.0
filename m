Received: from relay.hostedemail.com (smtprelay0010.hostedemail.com [216.40.44.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89AF3BF66C
	for <ksummit@lists.linux.dev>; Thu,  2 Apr 2026 14:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775141304; cv=none; b=VFcnDyiBS2WkgbZ9wu1PzNjQrH7bsW3aMbqWdr/VbOD2JgZa64kUm+FwjtYOG5r/J8bUaNwRqfgCrOMunKbaah9CXJDmQhTv6l1HcgcKnvnP8ibGXStZLCXj6h65b7Iu3fA+KQpXd4innxohsg0E9DVBORzO3nRk3l7bWd2bV5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775141304; c=relaxed/simple;
	bh=bdALyRl9no0L0YPuid2V/wU8Y4UspKroZ+BJKnzu4X8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SdNz7XfuIy7eO3CoZLZdwpk5KOI32mJtp6rndFhBsDUn9Lq0NFasnbquS15absZROS8bLRXiPXPofT+QjFh161flyuwzPGjsmjZLcnjARl4PPDh1Ti51CQuPznDi7V0DsxCGI9bOGPDJUMYj8Z/9wWnRzF60GyRQwdrCALNWeKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; arc=none smtp.client-ip=216.40.44.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Received: from omf12.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay01.hostedemail.com (Postfix) with ESMTP id 169B3E18F7;
	Thu,  2 Apr 2026 14:48:16 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf12.hostedemail.com (Postfix) with ESMTPA id 3A6681A;
	Thu,  2 Apr 2026 14:48:14 +0000 (UTC)
Date: Thu, 2 Apr 2026 10:49:16 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: Theodore Tso <tytso@mit.edu>, Thorsten Leemhuis <linux@leemhuis.info>,
 users@kernel.org, ksummit@lists.linux.dev
Subject: Re: slowly decommission bugzilla? (was: Re: kernel.org tooling
 update)
Message-ID: <20260402104916.0fbab807@gandalf.local.home>
In-Reply-To: <20260402-complex-ultraviolet-limpet-aea0bc@lemur>
References: <20251209-roaring-hidden-alligator-068eea@lemur>
	<b93eae05-5e40-42f0-8256-d46d411008a4@leemhuis.info>
	<20260402-expert-maroon-partridge-f77f94@lemur>
	<20260402130706.GA15407@macsyma-wired.lan>
	<20260402-complex-ultraviolet-limpet-aea0bc@lemur>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 3A6681A
X-Rspamd-Server: rspamout06
X-Stat-Signature: b8em9u78wchb1r73oscn7f5uaa7rj8eu
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1/XdsBsOL/ux5yx4niSqIdM4tlvX8PCLUU=
X-HE-Tag: 1775141294-427187
X-HE-Meta: U2FsdGVkX1/DYGtiYmrgf313EkNa+TYOdFoIDGnJNmhuMm2o90iVQJ1oQLayXLCyx458FGanchIDyOXjEAkqEZMMeZJwYWy4DsWKF8REosujETtjTwT0ByactDR2J5m5dfk9h0xqamJ4AM1c7ZvexuISqFd6iLvIZr6+vQDz0ga/GAVkrzygpfiUn/XXS9gXfX9EaWPRNHpzQDXTr87POUp9EcZo6TJ4m1VnLhMkhYmEnHhG2mwrpQZRPrxHGIij/52UeL2oBz0ybPD7CLLrypQ6pZdeFv2vF1oGyhkROSJxmP1hhNdIpLv1NGdmE8FrlgyKUMIAdvJ8m90SXyHfWq/02tHJ5EJpLYxi+Idf7D/j3hUcwE+SnR2a8m1nj0yv5MOZEZgIOtWMvajdophBIg==

On Thu, 2 Apr 2026 09:28:58 -0400
Konstantin Ryabitsev <konstantin@linuxfoundation.org> wrote:

> The git-bug entry is simply for lifecycle/tracking/triage purposes.

If I was able to add a wish for the genie I would ask for a patchwork
system for bugs ;-)

One where each bug has its own entry and status in a web interfac, and
emails about the bug would be added to that bug.

bugzilla sorta does this already, but I've fallen behind on it. I mostly
use it for my user space tooling (trace-cmd, kernelshark and libraries).
But I haven't had time to go and triage them :-p

-- Steve
