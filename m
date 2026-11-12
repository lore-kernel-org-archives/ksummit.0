Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=18.9.28.11
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794491247;
	b=SEw5EU0C2tRVi4srUiS7FVWqQYl8piorCJt7Q0Qa4y3rw2e3hUx6mX2nC6+MQhTyq2Y7
	 HLokBIqsveru0itjq8wHIWMPj+y/2HHNyQCuE4H1hM4K648ppFWAWaU3qtcfiP2CgnjXv
	 1qtxx09Daudlz0xVk+m0SZuVa0Jiues2Q2MuVDNrs2BH9ElsxPxiHtbL39RFWqa6ebUZH
	 PZfnIds0iHsuefF+Kwfr4FXm3lvDC6xkmOXBt/ll68++UpomwA4s0RnATNSYhFF5FW/rs
	 mPxDvu48VNvazUYlv4GK33TmqH9nfrksuqGeOYac01o1WGG5Ud4i79QATd+1YNCvNYQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794491247;
	h=DMARC-Filter:Received:DKIM-Signature:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=3YZAzcE1/EpGmUjmz5u1eGptWHji3T8YXnmCFTn4ugM=;
	b=xBAAPp3iorIeloog1o8HiOoNi9jH/DjiDUbOKmjyxThBrsT/B+2tAnKBd7S/dGSeXUo7
	 PE+nusyhcTU7tmG+zE1DoWaPl4Rfw2Os9eRnMpQXbAAXSbY7/6E+0mKpUtd0vnQPrQzvX
	 f8oCPlWA30iWdq021z+pwzYMBTizoKdyoT5iKQPlE9CfZfpLEAuTTY4soOImNVZs33Q7T
	 AK13JcIcw3Y+GZA+5sSZtkmDuf1lk8lZbUDYeen8Vz14xQ+jSP6GkGm2C3hC6N9is+b3j
	 9hyD1X42TsfqkXese92EGcDxvAHZocbhN+awv4BIdvEbh1F3PD2V4HmzM4HF9NLQ6eQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=mit.edu;
	spf=pass smtp.mailfrom=mit.edu;
	dkim=pass header.d=mit.edu header.i=@mit.edu header.a=rsa-sha256 header.s=outgoing header.b=ZyWmHjFT;
	arc=none smtp.remote-ip=18.9.28.11
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1588606A327
	for <ksummit@lists.linux.dev>; Thu, 12 Nov 2026 13:47:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org E1588606A327
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=mit.edu header.i=@mit.edu header.a=rsa-sha256 header.s=outgoing header.b=ZyWmHjFT
Received: from macsyma.thunk.org (pool-173-48-111-191.bstnma.fios.verizon.net [173.48.111.191])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 6ACDkjFc002782
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 12 Nov 2026 08:46:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1794491212; bh=3YZAzcE1/EpGmUjmz5u1eGptWHji3T8YXnmCFTn4ugM=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=ZyWmHjFTGOwAApBFdsJlk7IeyqDSq2vhUc/zeFgql9RtL02ocRFdu/XBx8Lt89Tiu
	 ZtB+IIHD3ucY5nr5jHEhD43ElWI2goLnpll5rrFOt+YhZpfpxXSEYnRn+gaRodlf9u
	 raXhl/uk9kHdF/ImFDElqrFFoJBzbfk8QG++m7szVDWSBbTN6Frb6irZEYZnDNP8CI
	 o+Y3rhzvVBvsOQPFSj/QPdYQrWxPSmJRw4K09X6Mqth7CPKC6xlnk+kvxKtNQEsuth
	 puDjMzUPSfQ/f80W1sY3xybe9UVwnpP1IM4Fa20NkzuMpntbyOpZGrQ84YQTs4Me9p
	 Kb6As6/2xoplA==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id 3DB4A26E324F; Thu, 12 Nov 2026 08:46:45 -0500 (EST)
Date: Thu, 12 Nov 2026 08:46:45 -0500
From: "Theodore Tso" <tytso@mit.edu>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: workflows@vger.kernel.org, ksummit@lists.linux.dev,
        linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jonathan Corbet <corbet@lwn.net>,
        Shuah Khan <skhan@linuxfoundation.org>,
        Randy Dunlap <rdunlap@infradead.org>, Mark Brown <broonie@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Leon Romanovsky <leon@kernel.org>,
        Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
        Thorsten Leemhuis <linux@leemhuis.info>,
        "Michael S. Tsirkin" <mst@redhat.com>, Kees Cook <kees@kernel.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Dan Carpenter <error27@gmail.com>, Miguel Ojeda <ojeda@kernel.org>,
        Alexei Starovoitov <alexei.starovoitov@gmail.com>,
        Julia Lawall <julia.lawall@inria.fr>, SJ Park <sj@kernel.org>,
        Bradley Morgan <brads@mainlining.org>, Sasha Levin <sashal@kernel.org>,
        stable@vger.kernel.org
Subject: Re: [PATCH v5 0/6] agents: add skills for Fixes tags, stable tags,
 similar bugs, and commit messages
Message-ID: <avXCcPYM9VAP0JHf@mit.edu>
References: <20261111225940.1573565-1-tytso@mit.edu>
 <9c5f5976-ebed-48f3-94ab-1121231af6e1@kernel.org>
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Post: <mailto:ksummit@lists.linux.dev>
List-Help: <mailto:ksummit+help@lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ksummit+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9c5f5976-ebed-48f3-94ab-1121231af6e1@kernel.org>

On Thu, Nov 12, 2026 at 09:26:09AM -0500, Krzysztof Kozlowski wrote:
> 
> All these are docs (even if you call them as a skill, it's the same),
> therefore they should be placed in Documentation, not in top-level. We
> should not create one documentation for humans and another for agents.
> It's just one documentation.

Skills aren't necessarily *just* documentation.  The skills
specification[1] also defines a structured location in the skill's
directory hierarchy for Python scripts or other executables.

[1] https://agentskills.io/specification

Cheers,

					- Ted
