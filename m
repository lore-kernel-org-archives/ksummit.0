Received: from relay.hostedemail.com (smtprelay0015.hostedemail.com [216.40.44.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77974B04BD
	for <ksummit@lists.linux.dev>; Thu,  6 Aug 2026 23:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786059717; cv=none; b=YiRkt0iNfiL/iPiW7XgNfFslRXTOOrpUOe6h/S7r5pL9LPRM7BwmythlTD+/bsbpi7lS2AQJzezsI0XOVoVWZeHb1jIMvT53Ovwapp/v4lJ39MCnj64yDi7mwHOFUm9NW70Uyi6B3iAJSseR8gIOURf+8c4AeR5/SsXbwGXzJ0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786059717; c=relaxed/simple;
	bh=PIIdLqzcILBA2dGyuSLMgX1xPZGXBT9Ci4TCWDySEf4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MQGIK0tT7UovLR4xOD/THI0WROGNEhC/8nIb+T+phQG4i5DhqvsB4wNcvO/2sju6ga+W4+6q+hR5SbmGa1VlLe++fvNv1xNUJ4nRQKroLC2Exb7hjGuCXOHQmaHjJOgnLhjRC0OvIYsErM1t4ZwSDA/oeiHhYYcivJKjG8eJiAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; arc=none smtp.client-ip=216.40.44.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Received: from omf18.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay09.hostedemail.com (Postfix) with ESMTP id B4F0680680;
	Thu,  6 Aug 2026 23:41:53 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf18.hostedemail.com (Postfix) with ESMTPA id 4C9672F;
	Thu,  6 Aug 2026 23:41:52 +0000 (UTC)
Date: Thu, 6 Aug 2026 19:41:53 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <20260806194153.6443a3ba@gandalf.local.home>
In-Reply-To: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 4C9672F
X-Stat-Signature: 9kyaa9bbi55gyehk31qacsg3cqwmpp7n
X-Rspamd-Server: rspamout07
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX18XD0Hp5HcPu6aGn2yarH0eNFwXepxVTIk=
X-HE-Tag: 1786059712-26925
X-HE-Meta: U2FsdGVkX19qN3jhQCoNqTQejENYKb65CYPw+lUBQHOB/+mFUpDCznuQX1FeJMyfwvP/cEsh+eYEUzZDmlR8gs6/rRPrzMB0cQarSReJj6mGNidKLYQ8JmhT9xoNcsqsi2LlU9c/P4PAxV3yFghKfDLgIt6fnNJGbhxPoNkYoWrQDbUOuBX8VjVOw1YYzWX+ItXBXuEQddmHHVdpi0xPv/RveAgDnTsFBrVtGGvozyouzylTQM78Et9X9wbgY74KBrMAFXayrtaviVhqgsgJSfDU07jzWzUeocvvGpvWX/1nzNa7z7+ilp2R1akFoQXQgu7m9PXM25PCBhUs2Ot2XKvfh3VShsiukwF553dIlbmf3CbZhz1TwiB51bApJlMnuhE9fC6vELFIxMUHdTVGPm4dtGmC/PVI

On Thu, 06 Aug 2026 11:34:09 -0400
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:


> 
> there isn't really anything that would move the needle for a potential
> sponsor.  Equally, there's nothing really that couldn't have been part
> of a wider discussion at Plumbers or LSF/MM, so I'm not sure there's
> anything that actually required discussion at this event (i.e. nothing
> to move the needle for kernel developers either).

Well, I'm guessing that AI will be a big topic this year at MS. That alone
may drive up sponsorship! If the AI bubble doesn't pop before then, all we
need to do is market MS as an gathering of those that will influence AI on
the Linux kernel. ;-)


> As for fixes, one possibility is definitely keeping MS as is and moving
> the sponsor responsibility to Plumbers, but unless I can strap Linus
> down and sell companies on pitching to him directly, I fear that would
> end up creating a US$100k hole in our budget.  Perhaps there are
> actually outcomes we could sell to sponsors but, because of the reduced
> audience, we simply don't get to hear about them ... so if you think
> that now would be the time to say what they are.  Another solution that
> seems viable would be folding the MS into one of our existing sponsored
> events, like Plumbers or LSF/MM.  Structurally either would be a fit
> for the past discussion topics and both could probably accommodate
> (although I don't think either could expand to a fourth day to do it).
> A final thing we might do is change the structure of the event itself
> to have more sponsorable outcomes; perhaps simply making the event more
> like the kernel summit of old, so moving back the KS track from
> Plumbers would be enough?

I guess it really comes down to what Linus wants. He's been saying he would
love to get rid of Kernel/Maintainers Summit for years. Does Linus still
find it useful? It is still good to have the more controversial topics done
face to face and allow Linus to listen in. I've been saying he needs to
interact more with the general community given the number of times he told
me that "nobody does that" when I'm hearing from talking with people at
conferences that several people do do that.

Thus, I still think it is good to find a way to make Linus do what he loves
and interact with his fellow developers ;-)  But perhaps it's time to
rethink the format and restructure it once again.

-- Steve
