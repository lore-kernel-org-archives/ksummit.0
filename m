Received: from relay.hostedemail.com (smtprelay0014.hostedemail.com [216.40.44.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602CE4DA539
	for <ksummit@lists.linux.dev>; Thu, 23 Jul 2026 13:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784812227; cv=none; b=kJoq/BYSp23Z6VZ7+3Mzu4YBD72B9Mv+39bKGJcSfVjTlZKzW+8n9DcjcM8grOLqcrBSkQMON4u8oFq7VjrJxOyo0gXe+bk0aZCXGUELtNwmhGn1DLs7/aEUbT5JNirY+YyxRXf9K6+MvEkBrYcT1yAX/YIjttOBhGxyVxkHLkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784812227; c=relaxed/simple;
	bh=eM46mPOyGwcqyuG+aC5iskCVmawG8PKP3NEo19AqT88=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oEoFDy+wCDTTYnmCNwyOUzSBW42QW7iAzQxIL5Sh4SBPfDTLFjYnymZcq7CUCXxvC8y8ATw6vtAhAaD8P0my49MJSxNPl4zg0MP7ODMe9pd6IlddDBNnSFbJ3GUQYu+6HBjxOVDkHuGg+QTAnF1rxM2qIV8VVwBSLtjEsGzcz3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; arc=none smtp.client-ip=216.40.44.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Received: from omf18.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay08.hostedemail.com (Postfix) with ESMTP id 8F11F1404A1;
	Thu, 23 Jul 2026 13:10:16 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf18.hostedemail.com (Postfix) with ESMTPA id 8D6962E;
	Thu, 23 Jul 2026 13:10:14 +0000 (UTC)
Date: Thu, 23 Jul 2026 09:10:36 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Kees Cook <kees@kernel.org>
Cc: Konstantin Ryabitsev <mricon@kernel.org>, Linus Torvalds
 <torvalds@linux-foundation.org>, Jori Koolstra <jkoolstra@xs4all.nl>, Sasha
 Levin <sashal@kernel.org>, Mark Brown <broonie@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags,
 newcomers, etc
Message-ID: <20260723091036.03c2cac2@gandalf.local.home>
In-Reply-To: <35426E86-9663-48D7-8899-B82D62D04A84@kernel.org>
References: <87wluv7yzc.fsf@trenco.lwn.net>
	<alj4mYFMfZvuarfx@laps>
	<daea687e-46ef-4e00-9188-d14a663f1428@sirena.org.uk>
	<alkFzdJobnnMjJ4v@laps>
	<amAEIpVXxJbVgT2Z@lt-jori.localdomain>
	<CAHk-=wgbGarE7Ozw4VG6oUKDj9pk-8DRoDiX00bo1MwEMm9UWQ@mail.gmail.com>
	<20260722-uncovered-clam-of-bloom-03ebed@meerkat>
	<35426E86-9663-48D7-8899-B82D62D04A84@kernel.org>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Stat-Signature: xeahxy4g4nm4g9hw1ejt8oikbsg5f5ps
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 8D6962E
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX18QVs9tqFt2CN4JpaQvGRM20rQwfnHA8ss=
X-HE-Tag: 1784812214-119849
X-HE-Meta: U2FsdGVkX19pgycE0xXB1ua267MuOQgyF8+6ZIs+w+zpFjopuV6LI39gC0/G9NcLR1kYgpmTe9gnvM5ccvCVYW+Il0SZ0FyOmOGmZeLUgXl7HlNY6GRx7umZX3fsy680XXOlINApY7x5X9/GaZarqH2yCbr/bpQO80478sxWnNG8+6+heicBOfnkPtQl6PcdtrN9CdpWYziFQtngjY9xub2WLF4jgMRFM/UBmZQYAH4vv9euf1VQ1COAGgs35tGPr7VFI4px31p9tYEWdD1uG6xXKzroPbabC5qcPN4nwjEdlulXtRXpii/cHblj5d38FeDdfwA8VTVhySLF2AlX2V9I1vPR1aGg

On Wed, 22 Jul 2026 17:26:30 -0700
Kees Cook <kees@kernel.org> wrote:

> On July 22, 2026 10:48:40 AM PDT, Konstantin Ryabitsev <mricon@kernel.org> wrote:
> >On Tue, Jul 21, 2026 at 05:57:38PM -0700, Linus Torvalds wrote:  
> >> Or it can happen by looking at the patch itself, and trusting the
> >> contribution that way (and then the submitter grows his or her trust
> >> over time that way..
> >> 
> >> But basically, without trusting a submission some way, the submission
> >> shouldn't be accepted.  
> >
> >At the danger of introducing some kind of "karma system," how do we want to
> >build this trust? We already do end-to-end attestation, but a) not everyone
> >makes use of it, and b) it still hinges on name recognition.
> >
> >Do we want to dip our toes into some kind of "how many times have I accepted
> >patches from this person" automatic accounting system?  
> 
> This kind of reminds of Debian's maintainer "recency" reporting. "This
> person sent email to this or that list, committed over there, etc" as an
> easy to see a per-person overview/dashboard of activity. Maybe something
> like this for contributors would be good? It'd kind of be an extension of
> the existing tools LWN (and Greg?) use for attribution.

Couldn't this be easily gamed by something like what happened to xz?

Perhaps a dashboard is helpful, but I think it still comes down to having
some kind of personal connection.

-- Steve

