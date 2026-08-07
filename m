Received: from relay.hostedemail.com (smtprelay0016.hostedemail.com [216.40.44.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6195378D76
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 14:53:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786114433; cv=none; b=rPQbCEMWzqER9UIDpbV4W/xP5YTWK/7Ju02aaTh65qYz5ezBW9D2wbvvVcocTSwUxptizkgtB5fpIEL3ZK5qArkEK+QMU6vd7ZDOBruuULMA28vFcUFZLiRFTQiyl8zX0s/cJtNNdQKZcp2kbpjLcZrSYmu9QOL+NktSai/Lj2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786114433; c=relaxed/simple;
	bh=+yFF3J0mfT0KnAe2hCPrpL6pl0BWVB7/OujFzbANGvA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NEstbjnuc6SAC89hbwqWogxraU0SKbUL1fHaP1n1y6YcJJ7Nlts9Ra6JDf8s1I6jk6QgQb/l+VCLmuOUawN2tTf/Dvqw5y+he/QXfIziM68b9MGBuIjESXQKDidlbcOlBotfrWC8iNhTK9SftQLPAJdU1C8pXL8T+457Nvnfyhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; arc=none smtp.client-ip=216.40.44.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Received: from omf17.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay10.hostedemail.com (Postfix) with ESMTP id 1C917C03E6;
	Fri,  7 Aug 2026 14:53:50 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf17.hostedemail.com (Postfix) with ESMTPA id 9216418;
	Fri,  7 Aug 2026 14:53:48 +0000 (UTC)
Date: Fri, 7 Aug 2026 10:53:51 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "Rafael J. Wysocki (Intel)" <rafael@kernel.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
 ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <20260807105351.5515b7d1@gandalf.local.home>
In-Reply-To: <CAJZ5v0jX+8a1OvovsiE8S8qazCeroGWo5-hdFkJ4mD_79r1hPw@mail.gmail.com>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
	<20260806194153.6443a3ba@gandalf.local.home>
	<CAJZ5v0jX+8a1OvovsiE8S8qazCeroGWo5-hdFkJ4mD_79r1hPw@mail.gmail.com>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 9216418
X-Stat-Signature: efjonfd8fjyeoyck1ixdffr1bdkamnr1
X-Rspamd-Server: rspamout03
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX18mkLonqods3Pzjv6mnUazqJqRsRfaVTLU=
X-HE-Tag: 1786114428-899285
X-HE-Meta: U2FsdGVkX193kCxcJm1Z5ocahFDd+Gur34WgPCoOqOG+zRki0SsWAcZclSlZFjoV0M/qDaPiqsCtkUrRq+kny31ghHzInrzy0x0WZVSfngS7pC0T87oZsqWTR5domcOiP1GSiPxqa34Ahd5wi3mqsvREq36ZElN8qIzEuh54DGjGIEqQdUWx1MgKS6LwgDOvR8cqxrOwqImWz+6c179g5RUdqfW7S809KEOYRPaSF+OKYUhySWo+zWM+saXD1/7fNCGlfGkhvUJGaB0OUi2tUVzNkKGlIAXlVMn14rkd9bRdQ05uo9+n9wDjp7MMGyzW3KkTL/l565S8PAXPw/Shevb96atFj4RQiu7J4a6yZsoxeAF4YWz8DQ==

On Fri, 7 Aug 2026 15:53:57 +0200
"Rafael J. Wysocki (Intel)" <rafael@kernel.org> wrote:

> > Thus, I still think it is good to find a way to make Linus do what he loves
> > and interact with his fellow developers ;-)  But perhaps it's time to
> > rethink the format and restructure it once again.  
> 
> Please note though that Maintainer Summit now plays a more formal role
> in the project due to Documentation/process/conclave.rst, so if the
> format is changed substantially, it may also call for an update of
> that contingency plan.

Good point. And I think that should also be looked at more thoroughly and
come up with something perhaps more concrete than a plan to create a plan.

-- Steve
