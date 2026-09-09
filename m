Received: from relay.hostedemail.com (smtprelay0012.hostedemail.com [216.40.44.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E917C54A7E7
	for <ksummit@lists.linux.dev>; Wed,  9 Sep 2026 16:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788971467; cv=none; b=nJfRBJty4Ow0ue3NNW+gkF0vz3nRZhz2F7l8WKmnumAlqDWaY5l8nujQLAwc/mXxpbM3bCOG6+FDz/ly7trz1L/Wqep/AZ7y+cajKB+KrUmeLkz0U6RkbbfU+nfEMv7YXI/2OIxSaldJriSktY0OsdGycdxlg2clPjshuAV3r9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788971467; c=relaxed/simple;
	bh=rxvx4xy33kHsHSXpBwpRthZ+UiFoBIX5VKDTh/SFhjg=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jv7uMcb3MxbDdFjCIGkxNauoO0T/Zn1XMRu30JW8LPaAKE03fYzNDkIt/flSyg5P4hpUsRk9r7VMy93LLiB3C+jh0j6QDaGS5jtGtH5A+hNLcbw6Eayi1GGk7vk39aowV2iVHfBubCsG4k0gt0R6Rct/6PawAXJ8Lg9N9DhEVxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.b=MiIpQRJX; arc=none smtp.client-ip=216.40.44.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.b="MiIpQRJX"
Received: from omf05.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay03.hostedemail.com (Postfix) with ESMTP id CFA5AA02CF;
	Wed,  9 Sep 2026 16:30:56 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf05.hostedemail.com (Postfix) with ESMTPA id 8976A2000E;
	Wed,  9 Sep 2026 16:30:54 +0000 (UTC)
Date: Wed, 9 Sep 2026 12:32:11 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Cc: Gabriele Monaco <gmonaco@redhat.com>, Theodore Tso <tytso@mit.edu>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Greg KH
 <gregkh@linuxfoundation.org>, ksummit@lists.linux.dev, istoppa@nvidia.com,
 Kate Stewart <kstewart@linuxfoundation.org>, Gabriele Paoloni
 <gpaoloni@redhat.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
Message-ID: <20260909123211.043a92df@gandalf.local.home>
In-Reply-To: <CAH2bzCS9VGtQEJDK7f+T1yBgxMLGcOg+pD1Df0x+nFYfHPzkRA@mail.gmail.com>
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
	<CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
	<ap-AmsGgDNFYLlw8@mit.edu>
	<CAH2bzCS8DzBqR_4ELtg__4x8dX0+SYihKK0LLy3-pJmu=pRnsg@mail.gmail.com>
	<aqARgWGWYG5kZW9g@mit.edu>
	<CAH2bzCSLiyJbJD4dUiCRE192A44Qw9B01vn-oA_6=foi2j3iuA@mail.gmail.com>
	<20260908152921.3c90bdfa@gandalf.local.home>
	<CAH2bzCQYFDvUXdUwE-vS03=QSqO9TuYdN+=kdrYGhL+ttw=BOQ@mail.gmail.com>
	<20260908191440.65efef15@gandalf.local.home>
	<CAH2bzCR3_DJOuW+jfkH7tkx-j4KbPJHVx2k2Z6X=+vaS6rmqng@mail.gmail.com>
	<7d1c7f9677b6c5e9abec4d1ebc7c83cbdaa3e1ad.camel@redhat.com>
	<CAH2bzCR_hwxVbH-rfUHzj1-70mU7SkRY=3OgHEe7om5kZ605sQ@mail.gmail.com>
	<9b3e9c8cbdfd657323467079d397792c1ac8959e.camel@redhat.com>
	<CAH2bzCRvGGi_WS4j-5jeWU2uFrFWy_s9ZtMrcT5r+QY+=UdP4w@mail.gmail.com>
	<20260909121409.62d97680@gandalf.local.home>
	<CAH2bzCS9VGtQEJDK7f+T1yBgxMLGcOg+pD1Df0x+nFYfHPzkRA@mail.gmail.com>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: 8976A2000E
X-Stat-Signature: ctnexdt3mp8ofxkfwrn6xtrrb6xg5kct
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX19E2ATGk9zJnmCTBEbZzcRDSNY9g6GUls4=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=YkBH8CUhpBh+gdl2ylf/w9wwspQc+BvIejLA0dwomVA=; b=MiIpQRJXJmqt3qSRdJUgJJCp0oIzS9JTaC6/YIhGRBRTvqp8hI6SlHNd4t4C7qkqd5lKOru0qmAijQP4FIgxmb8SJTkelEq8FS1inExVdak/vmi4rHi4/M+VgPBa8yTEl6OHjpiOlm8rgTj+pU9wYWDi/EYkgS+Q/Qq4zH6zquA=
X-HE-Tag: 1788971454-170525
X-HE-Meta: U2FsdGVkX1+RIZGvbxd6iMgGChoX9aocT2KIja/EtmyeRWV/JHH1tyuZpi/XEZncm3pEIWhjeZrEVoj5MnOAS+tK2Jv540X2t+dnUmAq6TSt14PkV7IqvLM6HjWWrKDyBc84zma+NW79/5XkL6wjIDYGaVwwZQhpSH69mFYbnHsh12thM5UYulWUIvbOZoy151CqJFtA1dSZ8FIjVy0AM6lA6/8OXl2/+aIvIArC/RhPedJTBSol/fNA70VKvksjwTbHXUE5CqkNkWX8iMEcHDC8PiWagxx8zJF2TJktx6o5Ok51U4yUvdKs9iqubOAcHE+tjCWUQfv6i89xBjnehn1yky9lPpT+TbuSiYxp/RmvbwLEz850SrTcNEvrDrWi2ztp5jHYjONIBrJQMWL1mQ==

On Wed, 9 Sep 2026 19:24:01 +0300
"igor.stoppa@gmail.com" <igor.stoppa@gmail.com> wrote:

> On Wed, 9 Sept 2026 at 19:12, Steven Rostedt <rostedt@goodmis.org> wrote:
> 
> > Do you plan on attending Linux Plumbers? This looks like a topic for a BoF.  
> 
> Shameless plug: actually, I have a presentation [1]

Great, I'll likely attend that.

> 
> But I thought (wrongly?) that it was already game over for BoFs ...

Before the CfP ends, accepted BoFs get one free pass. After that, BoFs are
more of a first-come/first-serve ordeal with the amount of rooms we have,
and they are only for those that are attending. We accept BoFs throughout
the conference, as long as there is a room available.

There's just no A/V, unless you use your own laptop and connect to the BBB
server (if you want remote attendees). We also have some jabra speakers we
loan out.

-- Steve
