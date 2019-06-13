Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AFB77E1E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 14:17:08 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 33A3476D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 14:17:08 +0000 (UTC)
Date: Thu, 13 Jun 2019 11:17:01 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Kate Stewart <kstewart@linuxfoundation.org>
Message-ID: <20190613111701.790e025f@coco.lan>
In-Reply-To: <CAG_66ZTemPnVpjgj3jgM+Ks9L--UkpW1KV5JOoCV0rAXDpqx0A@mail.gmail.com>
References: <20190612085405.6045d95d@lwn.net>
	<CAG_66ZTemPnVpjgj3jgM+Ks9L--UkpW1KV5JOoCV0rAXDpqx0A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Wed, 12 Jun 2019 15:33:36 -0500
Kate Stewart <kstewart@linuxfoundation.org> escreveu:

> On Wed, Jun 12, 2019 at 9:56 AM Jonathan Corbet <corbet@lwn.net> wrote:
> >
> > What could be more fun than talking about kernel documentation?  Things we
> > could get into:
> >
> >  - The state of the RST transition, what remains to be done, whether it's
> >    all just useless churn that makes the documentation worse, etc.
> >
> >  - Things we'd like to improve in the documentation toolchain.
> >
> >  - Overall organization of Documentation/ and moving docs when the need
> >    arises.  It seems I end up fighting about this more than just about
> >    anything else, but I think it's important to organize our docs for the
> >    convenience of the people using them.
> >
> >  - The ultimate vision for kernel docs (for now).  RST conversion and
> >    imposing some organization are important, but they will not,
> >    themselves, give us a coherent set of documentation.  What can we do to
> >    have documentation that is useful, current, and maintainable, rather
> >    than the dusty attic we have now?  
> 
> Also,  it would be great if we could talk about cleaning up the
> documentation licensing, so it too can have its licenses be
> automatically detected.   :-)

With that regards, I'm still waiting for a solution with for the
GFDL license:

	https://github.com/spdx/license-list-XML/issues/686

All documents under Documentation/media now have a SPDX header,
except for the ones that were originally licensed under
the free version of GNU Free Document License (e. g. with
no invariant sections, no Front-Cover texts and no Back-Cover
texts) or that are dual-licensed GFDL/GPL.

While we don't have a SPDX tag for those, we can't finish adding
SPDX headers there though :-(


Thanks,
Mauro
