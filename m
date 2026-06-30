Received: from relay.hostedemail.com (smtprelay0014.hostedemail.com [216.40.44.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9D739C658
	for <ksummit@lists.linux.dev>; Tue, 30 Jun 2026 18:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782845982; cv=none; b=Ri0kVBQ4R9shUbm9wxI0FM9i949X/hVNywGRjjGe5SVMge1mhB88SljELjb3cTwyVJocuAETqQeCgGVx4b5DNBRKd56HvK4GsLas0vbn5/4xRbnrDjyJrS3WVHSR/JHX62R+Ate+IROj2oOOVktVd6bCsRHSDdHxGtWA5fUd01c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782845982; c=relaxed/simple;
	bh=nhq2xK7KJ96F3vKsPspGYgcNn60Hi6ntzgs74NlB/cA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rvvusPm0nHaQoFhbH085fRH4wlr0k4LZPWgJPSnHiIOaVL0sCDz2Owok1llQ2KyG/PiWFNMQtjfuZvRoIcjJCpjxeJDhcIp4sClmK14AH8+8Ko1PO6NgiZrNK1IcetcqduQh7iW4Naj0DCgil2RAwLp1wrZiy5XKSbHPU3oLFQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; arc=none smtp.client-ip=216.40.44.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Received: from omf08.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay08.hostedemail.com (Postfix) with ESMTP id DA4F21405CD;
	Tue, 30 Jun 2026 18:54:01 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf08.hostedemail.com (Postfix) with ESMTPA id 4CAFA20027;
	Tue, 30 Jun 2026 18:54:00 +0000 (UTC)
Date: Tue, 30 Jun 2026 14:53:54 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Matthew Wilcox <willy@infradead.org>
Cc: "H. Peter Anvin" <hpa@zytor.com>, ksummit@lists.linux.dev
Subject: Re: [TECH TOPIC] Implementing malloc
Message-ID: <20260630145354.3119c1fb@gandalf.local.home>
In-Reply-To: <akK3KACxE9gIFZSH@casper.infradead.org>
References: <akKBVsFBro_4QM74@casper.infradead.org>
	<c48a77db-98a3-4860-ab30-bcbbe0884baa@zytor.com>
	<akK3KACxE9gIFZSH@casper.infradead.org>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: 4CAFA20027
X-Stat-Signature: ebkx83p6g6btqft3kfg1ijidq3s1tejn
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1/oz+srPBTZ2LxdBJKH/X5ccGlJaV8gwMk=
X-HE-Tag: 1782845640-444463
X-HE-Meta: U2FsdGVkX1+k5tUjw/iBFSJncQywzKjUMY38yLgOzoG6ZsZOau8nnYUtff0Fbzrd+1c7YDH/KyOuEQTwu8z+gki68GdnE96EKWVeg7wlWKbKHiBkRq54owYMvjA3EQpX3PCQDpVJ5KqEh1SusidB8RwZoE+htOZt/Nv6Na/kNbMM8BTQmQBzrXtl5XhPzlKbMCHzjEvc8+buD+Cl1feI85VyB+S5XaDhe0IQjLXS0urQPSRyY8i/hFzO+2dg/c7gQ2tBTII2A5q36VluKuN8S15wsMDkM/6iwYj4U0KlAqe53z7xSU53gkLrpTQsbgcZwqA4aPoHp73KnZIB4BSnkhzZhxQ0HtBYEu8KqwGcGVmRB/HZ00JB8jlNYoJv1OHdkilTaK79mwhkFHmRZ3UMoQ==

On Mon, 29 Jun 2026 19:19:20 +0100
Matthew Wilcox <willy@infradead.org> wrote:

> #ifdef __KERNEL__
> #define malloc(x)	kvmalloc(x, GFP_KERNEL)
> #endif

If anything, add a might_sleep() to that, so it triggers a very bad warning
if called in any context that does not allow a schedule.

-- Steve
