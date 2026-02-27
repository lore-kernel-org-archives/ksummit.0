Received: from relay.hostedemail.com (smtprelay0015.hostedemail.com [216.40.44.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B152DC357
	for <ksummit@lists.linux.dev>; Fri, 27 Feb 2026 15:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772205372; cv=none; b=QOEzL7aLQSK9wxtzqBmUgkC7nBnrUInLpPhLtya1lACDbYwpdoekrbU/itFOevsFmc6B4lMqM3T8A02pmstfIqAbl3K1RxfEbY8gARxS09jxPSbICFI8OxHIKcCpCBxwt+KrfstWZktW8CWMJugpX/odN4Zqoe6CxewZAJzLcMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772205372; c=relaxed/simple;
	bh=6ZMzMQriAdWJdfmXwHXXhyd8YVfSC/5g67MJy2rG2zo=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bW3Ihbkdn/okr9xU/f273f6F7DJxk6IRtOPDAZGFHlzB7GB7N2GjNFM20J4CSMQVUCpklQPQcpXINtxkd2oGCGVb8Ev9gGUwujhFCcdaJcd1p3CshPHjZP96f3+EjsSVMmqiDSltgQqW9I5MZFNM+McdlCV6UzxUZqRN+Y2THSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; arc=none smtp.client-ip=216.40.44.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Received: from omf19.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay06.hostedemail.com (Postfix) with ESMTP id D2F771B7EB7;
	Fri, 27 Feb 2026 15:16:09 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf19.hostedemail.com (Postfix) with ESMTPA id 0D4E920025;
	Fri, 27 Feb 2026 15:16:06 +0000 (UTC)
Date: Fri, 27 Feb 2026 10:16:31 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Thorsten Leemhuis <linux@leemhuis.info>, Konstantin Ryabitsev
 <konstantin@linuxfoundation.org>, users@kernel.org, ksummit@lists.linux.dev
Subject: Re: slowly decommission bugzilla? (was: Re: kernel.org tooling
 update)
Message-ID: <20260227101631.67756268@gandalf.local.home>
In-Reply-To: <20260226090425.11bb585062783c0e1fcf0b32@linux-foundation.org>
References: <20251209-roaring-hidden-alligator-068eea@lemur>
	<b93eae05-5e40-42f0-8256-d46d411008a4@leemhuis.info>
	<20260226090425.11bb585062783c0e1fcf0b32@linux-foundation.org>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Stat-Signature: wgidqkx894bwgd3p1qjge4b4gcdwxbkh
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 0D4E920025
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1/hm0ZaaDv4FQvv1+buXsFZ56yMVRthdps=
X-HE-Tag: 1772205366-537786
X-HE-Meta: U2FsdGVkX1+dIq+2nwSyMHLVHWrP4lM8BHtsQ+0hw92qyOfKoj9sa90pH63BetVCq5FAc8zt1qqI5oDdo4NOr8mnCRjFdQlY8MJ3Sl+FRpwO1WMTaNs7z6M/pR6HV/O8/5LRiChxIsfgPGQLb1enXlnExCcxtAFgjGHhIzR8rj5RRjoqmukGxSXMiKMmPSfCxWvuHFCHCpV8axw5LqvvAX+q7xsU9I78GHg/ZgcRwhvvWLk9zm8sv+DUZJZWvSdEZiFG5tRbK3e+K1kD8oi+CgKWWM3dmj72/jRI3hKTIWrcpGK8Eo7cZtCZQnn+6bl91Iy4xU99cPOTbGSucCl5+PVW6Gp2JFQmc5EzhGeopETgqF0tSH6EKYdgz92fqMg7FK80QZ+OYFm4rmgcBRrNCg==

On Thu, 26 Feb 2026 09:04:25 -0800
Andrew Morton <akpm@linux-foundation.org> wrote:

> Perhaps point people at scripts/get_maintainer.pl
> 
> Or heck, add a front-end to get_maintainer right here in this web page.
> People paste in a pathname and it spits back a bunch of email
> addresses.

This actually sounds like a good idea. Someone just told me that they found
a bug in a driver and I asked them if they notified upstream about it. They
said no, because they didn't know how.

I just told them to randomly modify the file, do a git diff and redirect it
into another file (making a random patch), and run get_maintainers.pl on
it. That's a big hack and having a better interface to point others too
would be useful.

-- Steve
