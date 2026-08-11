Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CBF1A0BF3
	for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 00:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786407377; cv=none; b=K+p8hsezjaFwxK2D2RLKW40avlEXADmyLtU4Lt3icK42lAgvq+YItGO8GIubtNeavbM0p9hWxfbhsNrYCa5uEWtxO6FjduVdauXXppLiLkx5hGfXr+NSuHzyz6wK13Oo0c8wVJn9EbbCrNkM0iCNdwUO+EFDPKsyt6S+zZQ+VPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786407377; c=relaxed/simple;
	bh=WBSinI0927KTcZUVrGLChPM4v1tw+3QdnI/T1fEY470=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=vAkY22Gx43D35GH+YDgJDJarsj4pJdRqdC2MCMcDEOX1xK4wH7/Y6qlxuhI/Rn1fpcS56ZnHZiADJOtdo+KHOGjIzA4bu7Vri+nLFRQleI8JddG4mAfIiTMuNKY29fZl9gUf2lj8cpcZPrzFPdLTPZfPxjop4ftTc7vbADDBW80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=HCcWJ90E; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="HCcWJ90E"
Received: from macsyma.thunk.org (pool-173-48-113-153.bstnma.fios.verizon.net [173.48.113.153])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 67B0FpdM023307
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Aug 2026 20:15:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1786407355; bh=fjT8yjBVzF+8XMSiyPakQBDcIuqT2H4pG5ckSdZlkLU=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=HCcWJ90E1BkQPl6ZbHfy2CpIzFn7PTj+MRW9CK06k9qyos31U45hI9Zs0/Ie9W8Jx
	 oriova3JLAEE032oO4gH6ZLZCf68xEKHNoOwkiN2q+l6OQzuBLZjNF+zK1mC0C54tW
	 Ny1hhNdti+uFHobjkoZW8s604VZLfxmEH7Mky1LFF1DKoLrwAvYDghNfIGryeQX/g9
	 3QmrRrl1up8PrM1c2Dkrj5yl8UIxtVwcgJIiiWLzqTpbBVQh4FLoy5u2S6vHnzrPyk
	 I7nsqLuMvF6SKu5WqQbE74emFM5koCygkyNhHHaLPirZqaaJclzIVUJgTApP/NyRqd
	 3l0/mvo5BjEOA==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id 7004EE6C1C3; Mon, 10 Aug 2026 20:14:51 -0400 (EDT)
Date: Mon, 10 Aug 2026 20:14:51 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: "Liam R. Howlett" <liam@infradead.org>
Cc: Steven Rostedt <rostedt@goodmis.org>,
        "Lorenzo Stoakes (ARM)" <ljs@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        James Bottomley <James.Bottomley@hansenpartnership.com>,
        ksummit@lists.linux.dev, "David Hildenbrand (Arm)" <david@kernel.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Dave Airlie <airlied@gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <anppSi8oQvvODOI2@mit.edu>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anfUgiByUVffXlrQ@mit.edu>
 <87y0efi08u.fsf@trenco.lwn.net>
 <20260809170918.218792b2@gandalf.local.home>
 <anmHaRzbnY7rtLX8@gremlin>
 <20260810092003.5fda8e06@gandalf.local.home>
 <1BD1C7E7-CCA5-4BBB-94D4-83A7706E2579@infradead.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1BD1C7E7-CCA5-4BBB-94D4-83A7706E2579@infradead.org>

On Mon, Aug 10, 2026 at 04:35:48PM -0500, Liam R. Howlett wrote:
> 
> I don't want to be invited.  My only reason for being vocal is to
> facilitate process improvements.

Liam, do you have any concrete process improvements that you'd like
propose?

Thanks,

						- Ted
