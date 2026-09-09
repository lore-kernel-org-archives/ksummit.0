Received: from relay.hostedemail.com (smtprelay0015.hostedemail.com [216.40.44.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE50353FD2B
	for <ksummit@lists.linux.dev>; Wed,  9 Sep 2026 16:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788970385; cv=none; b=WqEBYjDdo7y4IyVm58QcpHZP8oW3M1Q075rr/8NGHP9Imd542TJmqh4wRtQmYfxeV7jO9ZVaEnM8xz+P2K8N/Hj1kup4ACypFeg3wnSjVLqSLl87dtAYWLx8zwBB33m8coeZPI4Ciqaq35Hl4MYTfx22xtyXIRqolVPc0yvgbcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788970385; c=relaxed/simple;
	bh=q/OOmI/20iQT8lfa9m0KO7gnGhJFPeyU2rVny3QUdpc=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=u4veqR3BQCUD036xPlSh4AzjcctPLD3zWszfMVWEt8JYK0gJI3zbbQw8De/qsYSy4KHywirqbwbO+RD4DXNRU+QWugWTgrKjQUKKu9UHiouwhx6BgNADxW1lxpDtznxJV2dcd1dfo/KRfp6Ma0NKsJ4O36mfjIlDkXZlCB/Q1eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.b=4SJy/MYK; arc=none smtp.client-ip=216.40.44.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.b="4SJy/MYK"
Received: from omf19.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay09.hostedemail.com (Postfix) with ESMTP id 5854880265;
	Wed,  9 Sep 2026 16:12:55 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf19.hostedemail.com (Postfix) with ESMTPA id 5328D20028;
	Wed,  9 Sep 2026 16:12:53 +0000 (UTC)
Date: Wed, 9 Sep 2026 12:14:09 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Cc: Gabriele Monaco <gmonaco@redhat.com>, Theodore Tso <tytso@mit.edu>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Greg KH
 <gregkh@linuxfoundation.org>, ksummit@lists.linux.dev, istoppa@nvidia.com,
 Kate Stewart <kstewart@linuxfoundation.org>, Gabriele Paoloni
 <gpaoloni@redhat.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
Message-ID: <20260909121409.62d97680@gandalf.local.home>
In-Reply-To: <CAH2bzCRvGGi_WS4j-5jeWU2uFrFWy_s9ZtMrcT5r+QY+=UdP4w@mail.gmail.com>
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
	<2026090747-carless-trio-ae92@gregkh>
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
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: rspamout05
X-Rspamd-Queue-Id: 5328D20028
X-Stat-Signature: k9bprcfuny1rwj79rqooiffij4z6akms
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1+DB1xp/GRmUhv64QxrQNnCOTGicxjPosE=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=q/OOmI/20iQT8lfa9m0KO7gnGhJFPeyU2rVny3QUdpc=; b=4SJy/MYKmBqDIia8UnuEDIK8+WJDXkMUcu/mio+go8iRY4eOwgv5zysXhxXrwZeTMuis01c5enS8z2mPEB+9i0Q0plaZ5QGxcfJPt62JTB6JiafJlUnXmTqKtovRfd32CAYh9dpMOD39x9HKGXpJO9FjfKKaSQLPdhQfaIKrc4E=
X-HE-Tag: 1788970373-194647
X-HE-Meta: U2FsdGVkX18PLZx94qdoYYM0C7bmq/QK3ntnOZ4J2imHAgfhQ3Mkhoimp+pDR8ZxsnuSXBP8ZNmQd/GMQdDvfGSjv8sbpg2lVD/mKB8ABBJy28NPK/21VU0PQrB2KApPOHwd0KYyKom5lr6uGbgYSLcfdtPeWwYT/zVcMMLlvln6UcraQU/k/FR1QyrsLyDGtHOtXp8iCbhYCPCI02dOpyAlH6cU7zUlANfaUY+z5ktajjgydjS9pOlY4JUpliDV60i0fLzKxMCsB6037VHX+zGYzvGfK194qDDg5vksOhH8UoIWUoEBWXkg4jxp3pMbGI34xgy5R22wI/c8CDcwtFD+YOn1M3x6

On Wed, 9 Sep 2026 19:07:40 +0300
"igor.stoppa@gmail.com" <igor.stoppa@gmail.com> wrote:

> Well, that is where I beg to differ. We have implemented such a mechanism.
> But I've been repeatedly told that I should provide first the code,
> which right now
> woulnd't really help much, because it is far from being in a reviewable shape.
> So I won't get back there.

Do you plan on attending Linux Plumbers? This looks like a topic for a BoF.

-- Steve
