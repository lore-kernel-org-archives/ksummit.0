Received: from relay.hostedemail.com (smtprelay0016.hostedemail.com [216.40.44.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AF4F44683E
	for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 13:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786456039; cv=none; b=I4WBZ+I1lT9XimesuMDXlltVxyyOJPza28KWxgdpPERSGBW1DSH+JdC/wfYgoEUz4l48n2iATC37z2ac87uKlPohJ0UoTvk1jv1R0MbVFGjzt01OFvvGPRrStbBAwcK48J2HJDL2cMaPy9dNm8Ei4TGYr9Rd0CV+3+FKWl9Tkx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786456039; c=relaxed/simple;
	bh=774Xp5ccd352gYVw34iI/np3CmTAvKsClKW1+bLknwc=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hvFlbOgUJuSUbUyOUUohvH9kKsWJi8n78Lq6dAibqTbBDQVyx1LeGUXxjdcaYEPiHWcuDYH3QWNeVM49EppH5kGlYuNhdqiHCFE1Xp8R6qx//oXOBpOkTni/Ucl4F5wiwYxA6f6bF4HDbTOYdMA62ycRj+LGnwlul4RAPLkrrjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; arc=none smtp.client-ip=216.40.44.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Received: from omf16.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay10.hostedemail.com (Postfix) with ESMTP id 1B72EC0408;
	Tue, 11 Aug 2026 13:47:11 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf16.hostedemail.com (Postfix) with ESMTPA id 4C62920013;
	Tue, 11 Aug 2026 13:47:09 +0000 (UTC)
Date: Tue, 11 Aug 2026 09:47:20 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Jiri Kosina <jikos@kernel.org>
Cc: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>, Dave Airlie
 <airlied@gmail.com>, Linus Torvalds <torvalds@linux-foundation.org>, James
 Bottomley <James.Bottomley@hansenpartnership.com>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <20260811094720.5c8c65ad@gandalf.local.home>
In-Reply-To: <7r64n824-1152-7n78-87o1-rq06nso5pop2@xreary.bet>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
	<20260806194153.6443a3ba@gandalf.local.home>
	<CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
	<anii3u-87kSrB9K3@lucifer>
	<CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
	<anl7CgkKb6tORavG@lucifer>
	<CAPM=9tybMTBw0iz2BSQ_p+3ybk=SmoLuRgiyyE6BP+=1+2RkfQ@mail.gmail.com>
	<anrWlBpyy6fmfCu4@lucifer>
	<7r64n824-1152-7n78-87o1-rq06nso5pop2@xreary.bet>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Stat-Signature: pf69rwk7ye69ch5ifsedecrue4qghkoz
X-Rspamd-Server: rspamout06
X-Rspamd-Queue-Id: 4C62920013
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX18yph8WjvUufTtQYnIJQBZV3csqP7adPvk=
X-HE-Tag: 1786456029-648640
X-HE-Meta: U2FsdGVkX1+AxqRoB5wfNp1thMEgvdeTfWLnC/BrbOb1AUNaBsXAH4nIRErsgVHM7lOBJH1WfPp/vYzzU+LzTC/7hR3HKfse1kOwAAsfu2Nh0Yu4DERG3DmcaoGWUtT9Fs7JWfEVKJn8t4HXcnXSDNrRWzpSstKGHcOPhktjlKpQOGiBjcczULGNC9eIGw63wembsFxLI3z/fE54Q7d0T8j/oj0e7zVdrlh+q6spoQt4JPpHOc1P/NwGeKs98aQV7hFNfLVaPOpv0LO5/KDf+HE8AmnUtPjzqqH7WtZnXjMk0EoOo1zzM1DNBIF28M5EhEcGA1ecKWZ5kJp9niw+AArnlpdNYkCVcza4fc/UYl2ub+Ho2Up+KA==

On Tue, 11 Aug 2026 11:06:39 +0200 (CEST)
Jiri Kosina <jikos@kernel.org> wrote:

> On Tue, 11 Aug 2026, Lorenzo Stoakes (ARM) wrote:
> 
> > > In my opinion, quite a lot of the problems that get raised by the CFP
> > > on this list, often get resolved on this list, which to my mind
> > > suggests we just need to have a better year round maintainers list
> > > that doesn't get consumed by patches or internal subsystem matters.  
> > 
> > Yeah that's not a bad idea!  
> 
> I think that the workflows@ ML is more or less pretty much exactly for 
> this purpose ... ?
> 

I thought the same thing.

-- Steve
