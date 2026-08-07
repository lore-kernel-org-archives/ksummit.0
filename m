Received: from relay.hostedemail.com (smtprelay0011.hostedemail.com [216.40.44.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35143375F95
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 19:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786132423; cv=none; b=CGPMmUCEfZi5vLrYzBEXfdLkSf7jp4KruM2Pg/kWKDVbGqr+C4CGDwYJfhGrVZNJfSS/Hj4DAYUml+E0qYrpSrBOAGp1PHrlD8huzmAAaC3v7szbX+qbtcrO7495JDgUjR5A5OSajHhPBr0GuitLI4gG6wttXtxKm3LWx6S79CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786132423; c=relaxed/simple;
	bh=3f2X42+zBXFgdFe67E9R9woc1gGAO6Bne3+P92gFh/E=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FZ2wGxsFCEhPF5j1zl2uXwnhmDvoZkJLX7N0/WgoQ227qFGcuLcwCLBxnRKStmafvqU3IqdZagcw+jgLXqOHCGqaKUveyQg2cOZlaGBqk8bOKAOlu3Q2MVADhk5AzI+dL94XD9Ks6qq4H4gns6C1h9QlfxF9YyAv2ZTCOiOFn7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; arc=none smtp.client-ip=216.40.44.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Received: from omf07.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay07.hostedemail.com (Postfix) with ESMTP id 666331601B1;
	Fri,  7 Aug 2026 19:53:31 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf07.hostedemail.com (Postfix) with ESMTPA id DBF5D2002E;
	Fri,  7 Aug 2026 19:53:29 +0000 (UTC)
Date: Fri, 7 Aug 2026 15:53:33 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Chris Mason <clm@meta.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
 ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <20260807155333.4c078056@gandalf.local.home>
In-Reply-To: <CAMpPgXX3qgFrHqCKWWh6-bJw_6zJMgRVixbhm=97nqiMkxe9CQ@mail.gmail.com>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
	<CAMpPgXX3qgFrHqCKWWh6-bJw_6zJMgRVixbhm=97nqiMkxe9CQ@mail.gmail.com>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Stat-Signature: xtuiuj3hmanr4ybhdt3bichu5csws6b7
X-Rspamd-Server: rspamout06
X-Rspamd-Queue-Id: DBF5D2002E
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX191RTPn7KkJNlFsC63kN7ticcbJ07SKrhQ=
X-HE-Tag: 1786132409-909838
X-HE-Meta: U2FsdGVkX1/S+tJDyya0Mc3rnQmJmt/76Kcalg1X8zqEiiWYPcqEBvS0GiUDBduRYCfZtQsZRbpEADq4fFjk+iuw3uXNHZYqQLzh1h9pUgfDOHyky08XMZ/s+m+HPw/HYToeGLtP26eqG1Jgw1rgtn2qr0Ms8vUb1BOAve8NhSyYhvuz8PcWZNLQCxidn0m6DIHDoMrMu/7OfTS+I/IEU8CXADgX1URcyn99OnwaXsR2qlil/bpjdP/fDNKTANvDtqWI3w71UJdaVTm5HitEj5Q0aQ2knGGVi4s4hgieznDfSVZFsKoc7bMuZkwdOTGqLQORfzGl1z2TIdhctm/i8ZxpNuLeWJBTNwnvH7mQN9fHXOugUmt5ZzcM5lafYjEbwXvwJSVOjPi3Tv8lRs9k1FFIZFehXoesQMF1koeiF6wTcSVq2ooCOQ==

On Fri, 7 Aug 2026 15:15:08 -0400
Chris Mason <clm@meta.com> wrote:

> And also AI, we can talk about AI.

I think we just solved our funding issue for this year ;-)

-- Steve
