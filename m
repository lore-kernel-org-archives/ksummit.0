Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5995D70
	for <ksummit@lists.linux.dev>; Thu, 22 Apr 2021 07:05:44 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 92B77AD71;
	Thu, 22 Apr 2021 07:05:42 +0000 (UTC)
Date: Thu, 22 Apr 2021 09:05:42 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: Christoph Hellwig <hch@infradead.org>
cc: Roland Dreier <roland@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
    James Bottomley <James.Bottomley@hansenpartnership.com>, 
    ksummit@lists.linux.dev
Subject: Re: [MAINTAINER SUMMIT] Rethinking the acceptance policy for "trivial"
 patches
In-Reply-To: <20210422055948.GA4171859@infradead.org>
Message-ID: <nycvar.YFH.7.76.2104220857570.18270@cbobk.fhfr.pm>
References: <afc5664dc2b60f912dd97abfa818b3f7c4237b92.camel@HansenPartnership.com> <20210421152209.68075314@gandalf.local.home> <CAG4TOxNOHRexUoKTo7ndViNtss0_BDeh4YCVHexvdQhQWF+vaw@mail.gmail.com> <20210422055948.GA4171859@infradead.org>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Thu, 22 Apr 2021, Christoph Hellwig wrote:

> Demonstrating this kind of "attack" has been long overdue, and kicked 
> off a very important discussion.  Even more so as in this area malice is 
> almost indistinguishable from normal incompetence.  I think they deserve 
> a medel of honor.

I think they just demonstrated the obvious.

I doubt anyone was ever questioning the fact that given enough effort 
investment and creativity, you can sneak malicious code anywhere at least 
for a while; so proving the obvious was just a sort of pointless excercise 
at the cost of a lot of wasted time in my view.

There are interesting things that could be researched here, e.g. how long 
do bugs remain unnoticed before they are eventually fixed by someone 
(perhaps in corelation to the size of the community of the project), etc. 
But that doesn't seem to be what's been researched here.

-- 
Jiri Kosina
SUSE Labs
